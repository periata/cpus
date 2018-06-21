## Generated SDC file "regfile8x6.out.sdc"

## Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus Prime License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

## DATE    "Wed Jun 20 19:46:09 2018"

##
## DEVICE  "EPM240T100C5"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 50.000 -waveform { 0.000 25.000 } [get_ports { clk }]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_ports {/ra0_sel7 /rb1_sel0 /wd0_ra0i ra0_sel[0] ra0_sel[1] ra0_sel[2] ra1_sel[0] ra1_sel[1] ra1_sel[2] rb0_sel[0] rb0_sel[1] rb0_sel[2] rb1_sel[0] rb1_sel[1] rb1_sel[2]}] -to [get_ports {ra0[0] ra0[1] ra0[2] ra0[3] ra0[4] ra0[5] ra1[0] ra1[1] ra1[2] ra1[3] ra1[4] ra1[5] rb0[0] rb0[1] rb0[2] rb0[3] rb0[4] rb0[5] rb1[0] rb1[1] rb1[2] rb1[3] rb1[4] rb1[5]}] 35.000
set_max_delay -from [get_ports {/ra0_sel7 ra0_sel[0] ra0_sel[1] ra0_sel[2]}] -to [get_ports {ra0_inc[0] ra0_inc[1] ra0_inc[2] ra0_inc[3] ra0_inc[4] ra0_inc[5]}] 45.000


#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

