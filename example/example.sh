
# <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
# <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
# <><><><> You can create your own scripts by using this one as a   <><><><>
# <><><><> template.  The upper portion of this script will largely <><><><>
# <><><><> be common between all scripts, and the lower portion can <><><><>
# <><><><> be customized to your particular application             <><><><>
# <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
# <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

# Load our API into our current shell instance
source nsdp_checker_api.sh

# By default, we won't load the bitstream
need_bitstream=0;

# Parse the command line
while (( "$#" )); do
    if [ $1 == "-force" ]; then
        need_bitstream=1
        shift
   else
      echo "Invalid command line switch: $1"
      exit 1
   fi
done

# Is the bitstream not yet loaded?
test $(is_bitstream_loaded) -eq 0 && need_bitstream=1

# If we need to load the bitstream into the FPGA, make it so
if [ $need_bitstream -eq 1 ]; then
    echo "Loading bitstream..."
    source load_bitstream.sh 
    test $? -eq 0 || exit 1
    echo "Bitstream loaded"
fi

# Ensure that we have PCS lock on both QSFP ports
if [ $(get_pcs_status) -eq 0 ]; then
    echo "Status of PCS lock on QSFP_0: " $(get_pcs_status 0)
    echo "Status of PCS lock on QSFP_1: " $(get_pcs_status 1)
    echo "Are both QSFP cables connected?  Exiting..."
    exit 1
fi

# <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
# <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
# <><><><>  If you are using this script as a template, everything  <><><><>
# <><><><>  below this line is a good place to customize it for     <><><><>
# <><><><>  your particular application                             <><><><>
# <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
# <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

# Tell the world which version we are
echo "nsdp_checker RTL version" $(get_rtl_version)

# Make sure the system is idle
reset_system
sleep .2
if [ $(is_ethernet_active) -ne 0 ]; then
    echo "Halt data transmission before starting this script!"
    exit 0
fi

# Our packets are 4K each
set_packet_size 4096

# A frame is 4M bytes
set_frame_size 0x40_0000

# Store 100 psuedo-random values into the first FIFO
source fill_fifo_with_prbs.sh
fill_fifo_with_prbs $REG_LOAD_F0 100

# Start receiving frames and comparing them to what we expect 
start_fifo 1
echo "Monitoring incoming packets..."
monitor
