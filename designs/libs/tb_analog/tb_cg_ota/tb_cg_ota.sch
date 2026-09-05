v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -320 30 20 30 {}
L 4 -320 -660 -320 30 {}
L 4 20 30 760 30 {}
L 4 500 -760 500 30 {}
L 4 20 -760 760 -760 {}
L 4 -320 -760 20 -760 {}
L 4 -320 -760 -320 -660 {}
L 4 -30 -760 -30 30 {}
L 4 -320 -710 -30 -710 {}
L 4 -320 -550 -30 -550 {}
L 4 -320 -390 -30 -390 {}
L 4 -320 -240 -30 -240 {}
L 4 -320 -1040 -320 -760 {}
N 150 -240 150 -210 {lab=VSS}
N 250 -310 270 -310 {lab=OUT1}
N -210 -120 -210 -80 {lab=VSS}
N 150 -410 150 -380 {lab=VDD}
N -210 -190 -210 -180 {lab=VDD}
N -140 -160 -140 -140 {lab=VDD}
N -210 -20 -210 0 {lab=0}
N -140 -80 -140 -60 {lab=I_B}
N 60 -330 80 -330 {lab=VINN1}
N 60 -290 80 -290 {lab=I_B}
N 60 -310 80 -310 {lab=VINP1}
N 30 -620 30 -600 {lab=VINN1}
N 30 -540 30 -520 {lab=VINP1}
N 100 -620 100 -600 {lab=VINN1}
N 100 -540 100 -520 {lab=VSS}
N 190 -530 190 -520 {lab=VSS}
N 190 -610 190 -590 {lab=OUT1}
C {lab_pin.sym} 60 -330 0 0 {name=p2 sig_type=std_logic lab=VINN1}
C {lab_pin.sym} 150 -210 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 -310 0 0 {name=p6 sig_type=std_logic lab=VINP1}
C {lab_pin.sym} 270 -310 2 0 {name=p1 sig_type=std_logic lab=OUT1}
C {launcher.sym} -250 -680 0 0 {name=h1
descr=Annotate_OP
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {/foss/designs/Programmable-Instrumentation-Amplifier-IP/designs/libs/core_analog/coarse_gain/cg_ota.sym} 180 -290 0 0 {name=x1}
C {simulator_commands_shown.sym} 220 -1060 0 0 {name=General_Params
simulator=ngspice
only_toplevel=false
value=".param temp=27
.param cl=2p
.param ib=1u
.param vdd=1.2
"
      }
C {vsource.sym} 30 -570 0 0 {name=V1 value=\{vid\} savecurrent=false}
C {isource.sym} -140 -110 0 0 {name=I0 value=\{ib\}}
C {vsource.sym} -210 -150 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {vsource.sym} -210 -50 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -210 0 0 0 {name=l1 lab=0}
C {vdd.sym} 150 -410 0 0 {name=l2 lab=VDD}
C {lab_pin.sym} -210 -110 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {vdd.sym} -210 -190 0 0 {name=l3 lab=VDD}
C {vdd.sym} -140 -160 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} 60 -290 0 0 {name=p4 sig_type=std_logic lab=I_B}
C {lab_pin.sym} -140 -60 3 0 {name=p7 sig_type=std_logic lab=I_B}
C {lab_pin.sym} 30 -620 1 0 {name=p8 sig_type=std_logic lab=VINN1}
C {lab_pin.sym} 30 -520 3 0 {name=p9 sig_type=std_logic lab=VINP1}
C {vsource.sym} 100 -570 0 0 {name=V4 value=\{vicm\} savecurrent=false}
C {lab_pin.sym} 100 -620 1 0 {name=p10 sig_type=std_logic lab=VINN1}
C {lab_pin.sym} 100 -520 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {capa.sym} 190 -560 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 190 -520 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 -610 1 0 {name=p13 sig_type=std_logic lab=OUT1}
C {launcher.sym} -250 -630 0 0 {name=h2
descr=DC_Swing
tclcommand=www.google.com}
C {launcher.sym} -250 -580 0 0 {name=h3
descr=Wingspread_AB
tclcommand=www.google.com}
C {launcher.sym} -250 -730 0 0 {name=h5
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
xschem simulate
"}
C {simulator_commands.sym} 330 -660 0 0 {name=DC_op
simulator=ngspice
only_toplevel=false 
value=".param vid=0
.param vicm=0.6
.op
.control
save all
op
shell mkdir -p result
run
write ./result/tb_cg_ota_op.raw
show all : vgs, vds, vth
let i_q = -i(v2)
let p_q = i_q * 1.2
let p_q_uw = p_q * 1e6
let i_q_ua = i_q * 1e6
echo \\"=======================================================\\"
echo \\" Quiescent Current (I_q): \\" $&i_q_ua \\" uA\\"
echo \\" Quiescent Power (P_q): \\" $&p_q_uw \\" uW\\"
echo \\"=======================================================\\"
.endc
"
}
C {simulator_commands_shown.sym} -90 -1020 0 0 {name=Save
simulator=ngspice
only_toplevel=false
value=".include tb_cg_ota.save

"
      }
C {simulator_commands_shown.sym} -300 -960 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="tcleval(
.lib $::MODELS_NGSPICE/cornerMOSlv.lib mos_tt
.lib $::MODELS_NGSPICE/cornerMOShv.lib mos_tt
.lib $::MODELS_NGSPICE/cornerRES.lib res_typ
.lib $::MODELS_NGSPICE/cornerDIO.lib dio_tt
.lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
.lib $::MODELS_NGSPICE/cornerMOSCAP.lib moscap_tt
.include $::MODELS_NGSPICE/diodes.lib
)"
      }
C {launcher.sym} -250 -520 0 0 {name=h4
descr=Open-Loop_AC
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -470 0 0 {name=h6
descr=Noise
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -420 0 0 {name=h7
descr=PVT
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -360 0 0 {name=h8
descr=Transient_Step
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -320 0 0 {name=h9
descr=ICMR_CMRR_PSRR
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -280 0 0 {name=h10
descr=Monte_Carlo
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {simulator_commands.sym} 330 -440 0 0 {name=DC_Swing
simulator=ngspice
only_toplevel=false 
value=".param vid=0
.param vicm=0.6
.op
.control
save all
op
shell mkdir -p result
run
write ./result/tb_cg_ota_op.raw
show all : vgs, vds, vth
let i_q = -i(v2)
let p_q = i_q * 1.2
let p_q_uw = p_q * 1e6
let i_q_ua = i_q * 1e6
echo \\"=======================================================\\"
echo \\" Quiescent Current (I_q): \\" $&i_q_ua \\" uA\\"
echo \\" Quiescent Power (P_q): \\" $&p_q_uw \\" uW\\"
echo \\"=======================================================\\"
.endc
"
}
C {simulator_commands.sym} 330 -220 0 0 {name=Widespread-AB
simulator=ngspice
only_toplevel=false 
value=".param vid=0
.param vicm=0.6
.op
.control
save all
op
shell mkdir -p result
run
write ./result/tb_cg_ota_op.raw
show all : vgs, vds, vth
let i_q = -i(v2)
let p_q = i_q * 1.2
let p_q_uw = p_q * 1e6
let i_q_ua = i_q * 1e6
echo \\"=======================================================\\"
echo \\" Quiescent Current (I_q): \\" $&i_q_ua \\" uA\\"
echo \\" Quiescent Power (P_q): \\" $&p_q_uw \\" uW\\"
echo \\"=======================================================\\"
.endc
"
}
