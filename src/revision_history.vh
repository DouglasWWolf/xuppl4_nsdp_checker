
//================================================================================================
//    Date      Vers   Who  Changes
// -----------------------------------------------------------------------------------------------
// 27-Apr-2024  1.0.0  DWW  Initial creation
//
// 04-May-2024  1.1.0  DWW  Now checking RDMX target addresses in the packet headers
//
// 21-May-2024  1.2.0  DWW  Now ignoring sensor-chip frame-header cells when checking frame-data
//                          for correctness.
//
// 22-May-2024  1.3.0  DWW  Made the logic that ignores sensor-chip frame-headers aware of 
//                          "PACKETS_PER_GROUP".  This is because the number of packets with 
//                          sensor-chip headers that each channel sees depends on the number of
//                          packets per ping-pong group.
//
// 22-May-2024  1.4.0  DWW  Added logic to ignore sensor-chip frame-footers
//================================================================================================
localparam RTL_TYPE      = 12266;
localparam RTL_SUBTYPE   = 0;

localparam VERSION_MAJOR = 1;
localparam VERSION_MINOR = 3;
localparam VERSION_BUILD = 0;
localparam VERSION_RCAND = 0;

localparam VERSION_DAY   = 22;
localparam VERSION_MONTH = 5;
localparam VERSION_YEAR  = 2024;
