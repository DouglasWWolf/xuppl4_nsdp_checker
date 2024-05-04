#==============================================================================
#  Date      Vers   Who  Description
# -----------------------------------------------------------------------------
# 27-Apr-24  1.0.0  DWW  Initial Creation
#==============================================================================
NSDP_CHECKER_API_VERSION=1.0.0
          VALID_RTL_TYPE=12266


#==============================================================================
# AXI register definitions
#==============================================================================
         REG_RESET=0x1004
       REG_LOAD_F0=0x1008
        REG_COUNT0=0x1008
       REG_LOAD_F1=0x100C
        REG_COUNT1=0x100C
         REG_START=0x1010
     REG_CONT_MODE=0x1014
   REG_NSHOT_LIMIT=0x1018
         REG_VALUE=0x1040

MC_BASE=0x2000
       REG_RFD_ADDR_H=$((MC_BASE +  0* 4))
       REG_RFD_ADDR_L=$((MC_BASE +  1* 4))
       REG_RFD_SIZE_H=$((MC_BASE +  2* 4))
       REG_RFD_SIZE_L=$((MC_BASE +  3* 4))
       REG_RMD_ADDR_H=$((MC_BASE +  4* 4))
       REG_RMD_ADDR_L=$((MC_BASE +  5* 4))
       REG_RMD_SIZE_H=$((MC_BASE +  6* 4))
       REG_RMD_SIZE_L=$((MC_BASE +  7* 4))
       REG_RFC_ADDR_H=$((MC_BASE +  8* 4))
       REG_RFC_ADDR_L=$((MC_BASE +  9* 4))
       REG_FRAME_SIZE=$((MC_BASE + 10* 4))
      REG_PACKET_SIZE=$((MC_BASE + 11* 4))
REG_PACKETS_PER_GROUP=$((MC_BASE + 12* 4))

ER_BASE=0x3000
  REG_RUN_STATUS=$((ER_BASE +  0 * 4))
  REG_ETH_ACTIVE=$((ER_BASE +  1 * 4))
  REG_ERR_CODE_0=$((ER_BASE +  2 * 4))
  REG_ERR_CODE_1=$((ER_BASE +  3 * 4))
 REG_EXP_FDATA_0=$((ER_BASE +  4 * 4))
 REG_EXP_FDATA_1=$((ER_BASE +  5 * 4))
 REG_PKTS_RCVD_0=$((ER_BASE +  6 * 4))
 REG_PKTS_RCVD_1=$((ER_BASE +  8 * 4))
REG_EXP_TADDRH_0=$((ER_BASE + 10 * 4))
REG_EXP_TADDRL_0=$((ER_BASE + 11 * 4))
REG_EXP_TADDRH_1=$((ER_BASE + 12 * 4))
REG_EXP_TADDRL_1=$((ER_BASE + 13 * 4))

 REG_ERR_DATA_0=$((ER_BASE + 16 * 4))
 REG_ERR_DATA_1=$((ER_BASE + 32 * 4))


#==============================================================================


#==============================================================================
# This confirms that we have the correct RTL loaded into the FPGA
#==============================================================================
confirm_rtl()
{
    local REG_RTL_TYPE=20
    
    # Read the RTL_TYPE register
    local rtl_type=$(read_reg $REG_RTL_TYPE)

    # If it's 0xFFFF_FFFF, we need to re-enumerate the PCI bus
    if [ $rtl_type -eq $((0xFFFFFFFF)) ]; then
        echo "Re-enumerating PCI bus..." 1>&2
        hot_reset 1>/dev/null 2>/dev/null
        rtl_type=$(read_reg $REG_RTL_TYPE)        
    fi

    # echo a "1" for pass or a "0" for fail
    test $rtl_type -eq $VALID_RTL_TYPE && echo "1" || echo "0"
}
#==============================================================================

#==============================================================================
# This strips underscores from a string and converts it to decimal
#==============================================================================
strip_underscores()
{
    local stripped=$(echo $1 | sed 's/_//g')
    echo $((stripped))
}
#==============================================================================


#==============================================================================
# This displays the upper 32 bits of an integer
#==============================================================================
upper32()
{
    local value=$(strip_underscores $1)
    echo $(((value >> 32) & 0xFFFFFFFF))
}
#==============================================================================


#==============================================================================
# This displays the lower 32 bits of an integer
#==============================================================================
lower32()
{
    local value=$(strip_underscores $1)
    echo $((value & 0xFFFFFFFF))
}
#==============================================================================



#==============================================================================
# This reads a 32-bit PCI register and displays its value in decimal
#==============================================================================
read_reg()
{
    pcireg -dec $1
}
#==============================================================================

#==============================================================================
# This reads a 64-bit PCI register and displays its value in decimal
#==============================================================================
read_reg64()
{
    # What are the two 32-bit address we're going to read?
    local addrh=$1
    local addrl=$((addrh + 4))

    # What are the 32-bit values at those addresses?
    local hi=$(pcireg -dec $addrh)
    local lo=$(pcireg -dec $addrl)

    # Display the 64-bit value
    echo $(( (hi << 32) | lo ))
}
#==============================================================================



#==============================================================================
# Sets the size of an output frame, in bytes
#
# Must be a power of 2
#==============================================================================
set_frame_size()
{
    local value=$(strip_underscores $1)
    pcireg $REG_FRAME_SIZE $value
}
#==============================================================================


#==============================================================================
# Define the number of packets in a single burst of the ping-ponger
#==============================================================================
set_ping_pong_group()
{
    pcireg $REG_PACKETS_PER_GROUP $1
}
#==============================================================================


#==============================================================================
# Displays the number of packets in a ping-ponger burst
#==============================================================================
get_ping_pong_group()
{
    read_reg $REG_PACKETS_PER_GROUP
}
#==============================================================================

#==============================================================================
# Sets the size of an outgoing packet in bytes.   0x1000 is a good number here.
#==============================================================================
set_packet_size()
{
    local value=$(strip_underscores $1)    
    pcireg $REG_PACKET_SIZE $value
}
#==============================================================================

#==============================================================================
# gets the size of an outgoing packet in bytes. 
#==============================================================================
get_packet_size()
{
    read_reg $REG_PACKET_SIZE 
}
#==============================================================================



#==============================================================================
# This configures the address and size of the frame-data ring buffer
#
# $1 = Address of the ring buffer
# $2 = Size of the ring buffer in bytes
#==============================================================================
define_fd_ring()
{
    # Store the address of the ring buffer
    pcireg $REG_RFD_ADDR_H $(upper32 $1)
    pcireg $REG_RFD_ADDR_L $(lower32 $1)

    # Store the size of the ring buffer
    pcireg $REG_RFD_SIZE_H $(upper32 $2)
    pcireg $REG_RFD_SIZE_L $(lower32 $2)
}
#==============================================================================


#==============================================================================
# This configures the address and size of the meta-data ring buffer
#
# $1 = Address of the ring buffer
# $2 = Size of the ring buffer in bytes
#==============================================================================
define_md_ring()
{
    # Store the address of the ring buffer
    pcireg $REG_RMD_ADDR_H $(upper32 $1)
    pcireg $REG_RMD_ADDR_L $(lower32 $1)

    # Store the size of the ring buffer
    pcireg $REG_RMD_SIZE_H $(upper32 $2)
    pcireg $REG_RMD_SIZE_L $(lower32 $2)
}
#==============================================================================


#==============================================================================
# This configures the address where the frame counter is stored
#==============================================================================
set_frame_counter_addr()
{
    pcireg $REG_RFC_ADDR_H $(upper32 $1)
    pcireg $REG_RFC_ADDR_L $(lower32 $1)        
}
#==============================================================================



#==============================================================================
# This displays the number of the active FIFO, or "0" if neither is active
#==============================================================================
get_active_fifo()
{
    read_reg $REG_START
}
#==============================================================================


#==============================================================================
# This waits for the specified FIFO to become active
#
# $1 should be 0, 1, or 2
#==============================================================================
wait_active_fifo()
{
    local which_fifo=$1

    # Validate the input parameter    
    if [ -z $which_fifo ]; then
        echo "Missing parameter on wait_active_fifo()" 1>&2
        return 
    elif [ $which_fifo -lt 0 ] || [ $which_fifo -gt 2 ]; then
        echo "Bad parameter [$which_fifo] on wait_active_fifo()" 1>&2
        return 
    fi

    # Wait for the specified FIFO to become active
    while [ $(read_reg $REG_START) -ne $which_fifo ]; do
        sleep .1
    done
}
#==============================================================================



#==============================================================================
# This stores 32-bit words to the 64-byte meta-command buffer
#
# $1 = Index (0 thru 15)
# $2 = Value to store
#==============================================================================
set_metadata()
{
    local index=$1
    local value=$(strip_underscores $2)

    if [ -z $index ] || [ -z $value ]; then
        echo "Missing parameter on set_metacommand()" 2>&1
        return
    fi

    if [ $index -lt 0 ] || [ $index -gt 15 ]; then
        echo "Bad index [$index] on set_metacommand()" 2>&1
        return
    fi

    # Compute the address of the register where we'll store this value
    local register=$((REG_METADATA + (15 - $index)*4))

    # Store the specified value into the metacommand register
    pcireg $register $value
}
#==============================================================================



#==============================================================================
# Clears the FIFOs and resets the system to an idle state
#==============================================================================
reset_system()
{
    pcireg $REG_RESET 1
}
#==============================================================================


#==============================================================================
# Displays a "1" if there ethernet packets are being received
#==============================================================================
is_ethernet_active()
{
    pcireg -dec $REG_ETH_ACTIVE
}
#==============================================================================




#==============================================================================
# This returns the number of entries in the specified FIFO
#==============================================================================
get_fifo_count()
{
    local which_fifo=$1
    
    if [ -z $which_fifo ]; then
        echo "Missing parameter on get_fifo_count()" 1>&2
        echo 0
    elif [ $which_fifo -eq 1 ]; then
        read_reg $REG_COUNT0
    elif [ $which_fifo -eq 2 ]; then
        read_reg $REG_COUNT1
    else
        echo "Bad parameter [$1] on get_fifo_count()" 1>&2
        echo 0
    fi
}
#==============================================================================


#==============================================================================
# This loads data info one of the FIFOS
#==============================================================================
load_fifo()
{
    local which_fifo=$1
    local filename=$2

    # Validate the fifo #
    if [ -z $which_fifo ]; then
        echo "Missing parameter on load_fifo()" 1>&2
        return 
    elif [ $which_fifo -lt 1 ] || [ $which_fifo -gt 2 ]; then
        echo "Bad parameter [$which_fifo] on load_fifo()" 1>&2
        return 
    fi

    # Make sure the caller gave us a filename
    if [ -z $filename ]; then
        echo "Missing filename on load_fifo()" 1>&2
        return
    fi

    # Make sure the file actually exists
    if [ ! -f $filename ]; then
        echo "not found: $filename" 1>&2
        return
    fi

    # And load the data
    ./load_bc_emu $which_fifo $filename 1>&2
}
#==============================================================================


#==============================================================================
# This stores an immediate value into one of the FIFOS
#==============================================================================
load_fifo_imm()
{
    local which_fifo=$1
    local value=$2

    # Make sure the caller gave us a value
    if [ -z $value ]; then
        echo "Missing value on load_fifo_imm()" 1>&2
        return
    fi

    # Validate the fifo #
    if [ "$which_fifo" == "1" ]; then
        pcireg $REG_LOAD_F0 $value
    elif [ "$which_fifo" == "2" ]; then
        pcireg $REG_LOAD_F1 $value
    else
        echo "Bad parameter [$which_fifo] on load_fifo_imm()" 1>&2
    fi

}
#==============================================================================



#==============================================================================
# This will start generating data-frames from the specified FIFO
#==============================================================================
start_fifo()
{
    local which_fifo=$1

    # Validate the fifo #
    if [ -z $which_fifo ]; then
        echo "Missing parameter on start_fifo()" 1>&2
        return 
    elif [ $which_fifo -lt 1 ] || [ $which_fifo -gt 2 ]; then
        echo "Bad parameter [$which_fifo] on start_fifo()" 1>&2
        return 
    fi

    # And tell the FPGA to start generating frames from this FIFO
    pcireg $REG_START $which_fifo
}
#==============================================================================



#==============================================================================
# Displays the PCS-lock status of an Ethernet port
#
# $1 = 0, 1 or blank (blank = both)
#
# Displays "1" if the selected Ethernet port has PCS-lock, else displays 0
#==============================================================================
get_pcs_status()
{
    
    local eth0_pcs_lock=0
    local eth1_pcs_lock=0

    # These two bits contain the PCS lock status of the QSFP ports
    local lock0_bit=$((1<< 0))
    local lock1_bit=$((1<<16))

    # Read the status register
    local eth_status=$(read_reg 0x500)

    # Figure out if the "PCS Lock Status" bits are set
    test $((eth_status & lock0_bit)) -ne 0 && eth0_pcs_lock=1
    test $((eth_status & lock1_bit)) -ne 0 && eth1_pcs_lock=1

    # Display the requested status
    if [ "$1" == "0" ]; then
        echo $eth0_pcs_lock
    elif [ "$1" == "1" ]; then
        echo $eth1_pcs_lock
    else
       echo $((eth0_pcs_lock & eth1_pcs_lock))
    fi
}
#==============================================================================


#==============================================================================
# Displays the version of the RTL bitstream
#==============================================================================
get_rtl_version()
{
    local major=$(read_reg 0)
    local minor=$(read_reg 4)
    local revis=$(read_reg 8)
    echo ${major}.${minor}.${revis}
}
#==============================================================================

#==============================================================================
# Displays the error registers for one of the channels
#==============================================================================
show_errors()
{
    local channel=$1
    local error_code=0
    local exp_fdata=0
    local reg_err_data=0
    local packets_rcvd=0
    local exp_taddrh=0
    local exp_taddrl=0
    local a b c d
            
    # Make sure the caller give us a channel number
    if [ -z $1 ]; then 
        echo "Missing parameter on show_errors()" 1>&2
        return 
    fi

    # find out which channel the user wants to see
    local channel=$1

    if [ $channel -eq 0 ]; then
        error_code=$(read_reg $REG_ERR_CODE_0)
        exp_fdata=$(read_reg $REG_EXP_FDATA_0)
        packets_rcvd=$(read_reg64 $REG_PKTS_RCVD_0)
        exp_taddrh=$(read_reg $REG_EXP_TADDRH_0)
        exp_taddrl=$(read_reg $REG_EXP_TADDRL_0)
        reg_err_data=$REG_ERR_DATA_0
    elif [ $channel -eq 1 ]; then 
        error_code=$(read_reg $REG_ERR_CODE_1)
        exp_fdata=$(read_reg $REG_EXP_FDATA_1)
        packets_rcvd=$(read_reg64 $REG_PKTS_RCVD_0)        
        exp_taddrh=$(read_reg $REG_EXP_TADDRH_1)
        exp_taddrl=$(read_reg $REG_EXP_TADDRL_1)
        reg_err_data=$REG_ERR_DATA_1
    else
        echo "Bad parameter [$channel] on show_error()" 1>&2
        return
    fi

    # If there are no errors, say so
    if [ $error_code -eq 0 ]; then
        printf "       channel: %u - No errors\n" $channel
        return 
    fi

    # Tell the user what channel this is for
    printf "\n"
    printf "       channel: %u (%u packets received)\n" $channel $packets_rcvd

    # Display the error code
    printf "    error code: 0x%03X" $error_code

    test $((error_code &     1)) -ne 0 && printf " (BAD_FD_MAGIC)"
    test $((error_code &     2)) -ne 0 && printf " (BAD_FD_PSIZE)"
    test $((error_code &     4)) -ne 0 && printf " (BAD_FD_TADDR)"
    test $((error_code &     8)) -ne 0 && printf " (BAD_FD)"
    test $((error_code &    16)) -ne 0 && printf " (BAD_FD_PLEN)"
    
    test $((error_code &    32)) -ne 0 && printf " (BAD_MD_MAGIC)"
    test $((error_code &    64)) -ne 0 && printf " (BAD_MD_PSIZE)"
    test $((error_code &   128)) -ne 0 && printf " (BAD_MD_TADDR)"
    test $((error_code &   256)) -ne 0 && printf " (BAD_MD)"
    test $((error_code &   512)) -ne 0 && printf " (BAD_MD_PLEN)"

    test $((error_code &  1024)) -ne 0 && printf " (BAD_FC_MAGIC)"
    test $((error_code &  2048)) -ne 0 && printf " (BAD_FC_PSIZE)"
    test $((error_code &  4096)) -ne 0 && printf " (BAD_FC_TADDR)"
    test $((error_code &  8192)) -ne 0 && printf " (BAD_FC)"
    test $((error_code & 16384)) -ne 0 && printf " (BAD_FC_PLEN)"    
    printf "\n"

    # Display the expected frame data
    printf "expected fdata: 0x%08X  (%u)\n" $exp_fdata $exp_fdata
    
    # Display the expected RDMX target address
    printf "expected taddr: 0x%08X_%08X\n" $exp_taddrh $exp_taddrl

    # Display the error data
    a=$(read_reg $((reg_err_data +  0)))
    b=$(read_reg $((reg_err_data +  4)))
    c=$(read_reg $((reg_err_data +  8)))
    d=$(read_reg $((reg_err_data + 12)))
    printf "    error data: %08X  %08X  %08X  %08X\n" $a $b $c $d

    a=$(read_reg $((reg_err_data + 16)))
    b=$(read_reg $((reg_err_data + 20)))
    c=$(read_reg $((reg_err_data + 24)))
    d=$(read_reg $((reg_err_data + 28)))
    printf "                %08X  %08X  %08X  %08X\n" $a $b $c $d

    a=$(read_reg $((reg_err_data + 32)))
    b=$(read_reg $((reg_err_data + 36)))
    c=$(read_reg $((reg_err_data + 40)))
    d=$(read_reg $((reg_err_data + 44)))
    printf "                %08X  %08X  %08X  %08X\n" $a $b $c $d

    a=$(read_reg $((reg_err_data + 48)))
    b=$(read_reg $((reg_err_data + 52)))
    c=$(read_reg $((reg_err_data + 56)))
    d=$(read_reg $((reg_err_data + 60)))
    printf "                %08X  %08X  %08X  %08X\n" $a $b $c $d
    printf "\n"
}
#==============================================================================


#==============================================================================
# monitor - Monitors the RUN_STATUS register, and if an error occurs,
#           it writes debugging information to the console
#==============================================================================
monitor()
{
    while [ 1 -eq 1 ] ; do
        
        # We'll check the run-status once per half-second
        sleep .5

        # If we detect that an error has occured on either channel, wait
        # one second to allow time for the other channel to see an error
        # (in case one occurs), then report the error(s)
        if [ $(read_reg $REG_RUN_STATUS) -ne 3 ]; then
            sleep 1
            show_errors 0
            show_errors 1
            return
        fi
    
        # If packets have stopped arriving, we're done
        if [ $(is_ethernet_active) -eq 0 ]; then
            echo "Job completed with no errors"
            return
        fi

    done

}
#==============================================================================
