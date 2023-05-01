#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=G:/program/Vitis/2022.1/bin;G:/program/Vivado/2022.1/ids_lite/ISE/bin/nt64;G:/program/Vivado/2022.1/ids_lite/ISE/lib/nt64:G:/program/Vivado/2022.1/bin
else
  PATH=G:/program/Vitis/2022.1/bin;G:/program/Vivado/2022.1/ids_lite/ISE/bin/nt64;G:/program/Vivado/2022.1/ids_lite/ISE/lib/nt64:G:/program/Vivado/2022.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='G:/projects/lab6/radio_periph_lab/radio_periph_lab/Radio_periph_lab_lab7/vivado/radio_periph_lab.runs/design_1_axis_broadcaster_0_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log design_1_axis_broadcaster_0_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source design_1_axis_broadcaster_0_0.tcl
