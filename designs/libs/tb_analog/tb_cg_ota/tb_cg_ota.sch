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
L 4 550 -760 550 30 {}
L 4 20 -760 760 -760 {}
L 4 -320 -760 20 -760 {}
L 4 -320 -760 -320 -660 {}
L 4 -10 -760 -10 30 {}
L 4 -320 -1040 -320 -760 {}
L 4 1280 -760 1280 30 {}
L 4 760 30 1280 30 {}
L 4 760 -760 1280 -760 {}
L 4 1280 30 2060 30 {}
L 4 2060 -760 2060 30 {}
L 4 1270 -760 2060 -760 {}
L 4 -320 -1280 -320 -1040 {}
L 4 -320 -1280 2060 -1280 {}
L 4 2060 -1280 2060 -760 {}
L 4 -320 -230 -10 -230 {}
L 4 -320 -510 -10 -510 {}
L 4 -320 -370 -10 -370 {}
L 4 800 -1010 800 -760 {}
L 4 800 -1010 1100 -1010 {}
L 4 1100 -1010 1100 -760 {}
B 2 -320 70 780 520 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 830 70 1930 520 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -320 550 780 1000 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 830 550 1930 1000 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
T {To simulate and generate .raw data
and print results, press this
button above with Ctrl+Click} -310 -700 0 0 0.2 0.2 {}
T {Disable/activate 
scripts/blocks by
pressing Shift+T.

For widespread AB
simulation, v7 and its pins
must be active} -310 -650 0 0 0.2 0.2 {}
T {These buttons below
are for plotting
graphs below} -310 -560 0 0 0.2 0.2 {}
T {OPEN-LOOP CIRCUIT} 140 -740 0 0 0.4 0.4 {}
T {LOOP-GAIN CIRCUIT (Tian Method)} 740 -740 0 0 0.4 0.4 {}
T {Recommended:
Do simulation per script
with "SimulateNGSPICE"
button then click
each plot buttons
to view the graphs} -150 -650 0 0 0.2 0.2 {}
T {All .raw files
are saved on
./simulations/result} -150 -560 0 0 0.2 0.2 {}
T {CLOSE-LOOP CIRCUIT} 1320 -740 0 0 0.4 0.4 {}
T {Change general simulation parameters here!} 1120 -1000 0 0 0.5 0.5 {}
N 170 -160 170 -130 {lab=VSS
spice_ignore=true}
N 270 -230 290 -230 {lab=OUT1
spice_ignore=true}
N 170 -330 170 -300 {lab=VDD
spice_ignore=true}
N 940 -940 940 -930 {lab=VDD}
N 1010 -910 1010 -890 {lab=VDD}
N 1010 -830 1010 -810 {lab=I_B}
N 80 -250 100 -250 {lab=VINP1
spice_ignore=true}
N 80 -210 100 -210 {lab=I_B
spice_ignore=true}
N 80 -230 100 -230 {lab=VINN1
spice_ignore=true}
N 50 -450 50 -430 {lab=VSS
spice_ignore=true}
N 160 -460 160 -450 {lab=VSS
spice_ignore=true}
N 160 -540 160 -520 {lab=OUT1
spice_ignore=true}
N 850 -200 850 -170 {lab=VSS
spice_ignore=true}
N 950 -270 970 -270 {lab=OUT2
spice_ignore=true}
N 850 -370 850 -340 {lab=VDD
spice_ignore=true}
N 760 -290 780 -290 {lab=VINP2
spice_ignore=true}
N 760 -250 780 -250 {lab=I_B
spice_ignore=true}
N 630 -570 630 -550 {lab=VINP2
spice_ignore=true}
N 630 -490 630 -470 {lab=VSS
spice_ignore=true}
N 710 -490 710 -480 {lab=VSS
spice_ignore=true}
N 710 -570 710 -550 {lab=OUT2
spice_ignore=true}
N 50 -650 50 -630 {lab=VINP1
spice_ignore=true}
N 250 -550 250 -530 {lab=OUT1
spice_ignore=true}
N 250 -470 250 -440 {lab=OUT1
spice_ignore=true}
N 760 -270 780 -270 {lab=VINN2
spice_ignore=true}
N 820 -520 840 -520 {lab=OUT2
spice_ignore=true}
N 1000 -520 1020 -520 {lab=VINN2
spice_ignore=true}
N 1450 -130 1450 -120 {lab=VSS
}
N 1600 -220 1640 -220 {lab=OUT3
}
N 1450 -320 1450 -290 {lab=VDD
}
N 1360 -240 1380 -240 {lab=VINP3
}
N 1360 -200 1380 -200 {lab=I_B
}
N 1340 -560 1340 -540 {lab=VINP3
}
N 1340 -480 1340 -460 {lab=VSS
}
N 1370 -220 1380 -220 {lab=OUT3
}
N 1370 -360 1370 -220 {lab=OUT3
}
N 1370 -360 1560 -360 {lab=OUT3
}
N 1560 -360 1560 -220 {lab=OUT3
}
N 1550 -220 1560 -220 {lab=OUT3
}
N 1600 -220 1600 -190 {lab=OUT3
}
N 1560 -220 1600 -220 {lab=OUT3
}
N 1450 -130 1600 -130 {lab=VSS
}
N 1450 -150 1450 -130 {lab=VSS
}
N 940 -870 940 -850 {lab=0}
N 880 -870 880 -850 {lab=0}
N 880 -940 880 -930 {lab=VSS}
N 50 -540 60 -540 {lab=VINN1
spice_ignore=true}
N 50 -540 50 -510 {lab=VINN1
spice_ignore=true}
N 50 -570 50 -540 {lab=VINN1
spice_ignore=true}
C {lab_pin.sym} 80 -230 0 0 {name=p2 sig_type=std_logic lab=VINN1
spice_ignore=true}
C {lab_pin.sym} 170 -130 3 0 {name=p5 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_pin.sym} 80 -250 0 0 {name=p6 sig_type=std_logic lab=VINP1
spice_ignore=true}
C {lab_pin.sym} 290 -230 2 0 {name=p1 sig_type=std_logic lab=OUT1
spice_ignore=true}
C {launcher.sym} -250 -480 0 0 {name=h1
descr=Annotate_OP
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {/foss/designs/Programmable-Instrumentation-Amplifier-IP/designs/libs/core_analog/coarse_gain/cg_ota.sym} 200 -210 0 0 {name=x1
spice_ignore=true}
C {simulator_commands_shown.sym} 1120 -900 0 0 {name=General_Params
simulator=ngspice
only_toplevel=false
value=".param temp=27
.param cl=2p
.param ib=1u
.param vdd=1.2
.param vicm=vdd/2
.param vid=0
"
      }
C {vsource.sym} 50 -480 0 0 {name=V1 value=\{vicm\} savecurrent=false
spice_ignore=true}
C {isource.sym} 1010 -860 0 0 {name=I0 value=\{ib\}}
C {vsource.sym} 940 -900 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {gnd.sym} 940 -850 0 0 {name=l1 lab=0}
C {vdd.sym} 170 -330 0 0 {name=l2 lab=VDD
spice_ignore=true}
C {vdd.sym} 940 -940 0 0 {name=l3 lab=VDD}
C {vdd.sym} 1010 -910 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} 80 -210 0 0 {name=p4 sig_type=std_logic lab=I_B
spice_ignore=true}
C {lab_pin.sym} 1010 -810 3 0 {name=p7 sig_type=std_logic lab=I_B}
C {lab_pin.sym} 50 -650 1 0 {name=p9 sig_type=std_logic lab=VINP1
spice_ignore=true}
C {lab_pin.sym} 60 -540 2 0 {name=p10 sig_type=std_logic lab=VINN1
spice_ignore=true}
C {capa.sym} 160 -490 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {lab_pin.sym} 160 -450 3 0 {name=p12 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_pin.sym} 160 -540 1 0 {name=p13 sig_type=std_logic lab=OUT1
spice_ignore=true}
C {launcher.sym} -250 -440 0 0 {name=h2
descr=Plot_DC_Swing
tclcommand=www.google.com}
C {launcher.sym} -250 -400 0 0 {name=h3
descr=Plot_Wingspread_AB
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
C {simulator_commands.sym} 380 -660 0 0 {name=DC_open_loop_op
simulator=ngspice
only_toplevel=false 
value=".op
.control
save all
op
shell mkdir -p result
run
write ./result/tb_cg_ota_dc-open-op.raw
show all : vgs, vds, vth, ids
let v_in = v(vinp1)
let v_out = v(out1)
let vos_mv = (v_in - v_out) * 1000
let i_q = -i(v2)
let p_q = i_q * 1.2
let p_q_uw = p_q * 1e6
let i_q_ua = i_q * 1e6
echo \\"=======================================================\\"
echo \\" Input Common-Mode (Vin+): \\" $&v_in \\" V\\"
echo \\" Output Voltage (Vout): \\" $&v_out \\" V\\"
echo \\" Systematic Offset (Vos): \\" $&vos_mv \\" mV\\"
echo \\" Quiescent Current (I_q): \\" $&i_q_ua \\" uA\\"
echo \\" Quiescent Power (P_q): \\" $&p_q_uw \\" uW\\"
echo \\"=======================================================\\"
.endc
"
spice_ignore=true}
C {simulator_commands_shown.sym} 260 -1000 0 0 {name=Save
simulator=ngspice
only_toplevel=false
value=".include ./simulations/tb_cg_ota.save
"
      spice_ignore=true}
C {simulator_commands_shown.sym} -300 -960 0 0 {name=Libs_Ngspice_Normal
simulator=ngspice
only_toplevel=false
value="tcleval(
.lib $::MODELS_NGSPICE/cornerMOSlv.lib mos_tt
.lib $::MODELS_NGSPICE/cornerMOShv.lib mos_tt
.lib $::MODELS_NGSPICE/cornerRES.lib res_typ
.lib $::MODELS_NGSPICE/cornerDIO.lib dio_tt
.lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
* Comment this line below for Monte-Carlo simulation
* .lib $::MODELS_NGSPICE/cornerMOSCAP.lib moscap_tt 
* Comment out this for Monte-Carlo simulation
.lib $::MODELS_NGSPICE/cornerMOSCAP.lib moscap_tt mismatch
)"
      }
C {launcher.sym} -250 -340 0 0 {name=h4
descr=Plot_AC
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -300 0 0 {name=h6
descr=Plot_Noise
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -80 0 0 {name=h8
descr=Plot_ICMR
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -40 0 0 {name=h10
descr=Plot_PSRR
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {simulator_commands.sym} 390 -450 0 0 {name=DC_Swing
simulator=ngspice
only_toplevel="false" 
value=".control
save all
shell mkdir -p result
* DC sweep simulation
dc v4 -0.6 0.6 0.2m

* Variables
let vid_vec = v(vinp1) - v(vinn1)
let vout_sw = v(out1)
let diff_gain = deriv(vout_sw)

* Maximum DC Gain
meas dc max_gain max diff_gain
let max_gain_db = db(max_gain)

* Save vectors as .raw files
write ./result/tb_cg_ota_dc-sweep.raw vout_sw diff_gain max_gain max_gain_db

echo \\"==========================================\\"
print max_gain max_gain_db
echo \\"==========================================\\"

plot vout_sw vs vid_vec
plot diff_gain vs vid_vec

.endc"
spice_ignore=true}
C {simulator_commands.sym} 390 -220 0 0 {name=Widespread-AB
simulator=ngspice
only_toplevel=false 
value="* Enable v2 and its lab_pins
.control
save all
shell mkdir -p result

dc v4 -50m 50m 0.2m

run

* Parameters
let vid_vec = v(vinp1) - v(vinn1)
let i_out = i(v7)
let i_out_ma = i_out * 1e3
let i_outp_ma = @n.x1.xm_outp.nsg13_lv_pmos[ids] * 1e3
let i_outn_ma = @n.x1.xm_outn.nsg13_lv_nmos[ids] * 1e3

* gm_eff
let gm_eff = deriv(i_out)
let gm_eff_ms = gm_eff * 1e3

write ./result/tb_cg_ota_wingspread.raw vid_vec i_out_ma i_outp_ma i_outn_ma gm_eff_ms

meas dc gm_center find gm_eff_ms when vid_vec=0
meas dc iq_stage2 find i_outp_ma when vid_vec=0

echo \\"=======================================================\\"
echo \\" gm on Vid = 0V: \\" $&gm_center \\" mA/V\\"
echo \\" Quiescent Current of Stage 2 (Vid = 0V): \\" $&iq_stage2 \\" mA\\"
echo \\"=======================================================\\"

plot gm_eff_ms vs vid_vec
plot i_outp_ma i_outn_ma vs vid_vec

.endc
"
spice_ignore=true}
C {simulator_commands_shown.sym} -310 -1150 0 0 {
name=Osdi_Ngspice
simulator=ngspice
only_toplevel=false
value="pre_osdi $PDKPATH/libs.tech/ngspice/osdi/psp103.osdi
pre_osdi $PDKPATH/libs.tech/ngspice/osdi/psp103_nqs.osdi
pre_osdi $PDKPATH/libs.tech/ngspice/osdi/r3_cmc.osdi
pre_osdi $PDKPATH/libs.tech/ngspice/osdi/mosvar.osdi
pre_osdi $PDKPATH/libs.tech/ngspice/osdi/cap_cmomi.osdi
pre_osdi $PDKPATH/libs.tech/ngspice/osdi/cap_cmomf.osdi"
      spice_ignore=true}
C {lab_pin.sym} 50 -430 3 0 {name=p8 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_pin.sym} 760 -270 0 0 {name=p14 sig_type=std_logic lab=VINN2
spice_ignore=true}
C {lab_pin.sym} 850 -170 3 0 {name=p15 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_pin.sym} 760 -290 0 0 {name=p16 sig_type=std_logic lab=VINP2
spice_ignore=true}
C {lab_pin.sym} 970 -270 2 0 {name=p17 sig_type=std_logic lab=OUT2
spice_ignore=true}
C {/foss/designs/Programmable-Instrumentation-Amplifier-IP/designs/libs/core_analog/coarse_gain/cg_ota.sym} 880 -250 0 0 {name=x2
spice_ignore=true}
C {vdd.sym} 850 -370 0 0 {name=l5 lab=VDD
spice_ignore=true}
C {lab_pin.sym} 760 -250 0 0 {name=p18 sig_type=std_logic lab=I_B
spice_ignore=true}
C {vsource.sym} 630 -520 0 0 {name=V6 value=\{vicm\} savecurrent=false
spice_ignore=true}
C {lab_pin.sym} 630 -570 1 0 {name=p20 sig_type=std_logic lab=VINP2
spice_ignore=true}
C {lab_pin.sym} 630 -470 3 0 {name=p21 sig_type=std_logic lab=VSS
spice_ignore=true}
C {capa.sym} 710 -520 0 0 {name=C3
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {lab_pin.sym} 710 -480 3 0 {name=p25 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_pin.sym} 710 -570 1 0 {name=p26 sig_type=std_logic lab=OUT2
spice_ignore=true}
C {vsource.sym} 50 -600 0 0 {name=V4 value=\{vid\} savecurrent=false
spice_ignore=true}
C {simulator_commands.sym} 1110 -470 0 0 {name=AC
simulator=ngspice
only_toplevel="false" 
value=".control
save all
shell mkdir -p result

* 1st Injection: AC Voltage + 1st AC sim
alter i.x999.ii acmag=0
alter v.x999.vi acmag=1
ac dec 50 1 10G

* 2nd Injection: AC Current + 2nd AC sim
alter i.x999.ii acmag=1
alter v.x999.vi acmag=0
ac dec 50 1 10G

* Set default plot to 1st AC sim
setplot ac1

let t_gain = tian_loop()
let loop_mag = db(t_gain)
let loop_ph = 180 + (180 * cph(t_gain) / pi)

meas ac dc_gain find loop_mag at=10
let dc_gain_lin = 10^(dc_gain / 20)
let target_3db = dc_gain - 3
meas ac f_3db when loop_mag=target_3db
meas ac ph_3db find loop_ph when loop_mag=target_3db

meas ac ugbw when loop_mag=0
meas ac pm find loop_ph when loop_mag=0

meas ac f_180 when loop_ph=0
meas ac gain_margin find loop_mag when loop_ph=0
let gm_db=-gain_margin

let gbw_calc=dc_gain_lin * f_3db

write ./result/tb_cg_ota_ac.raw loop_mag loop_ph

echo \\"=======================================================\\"
echo \\" DC Gain (dB): \\" $&dc_gain \\" dB\\"
echo \\" DC Gain (Lin): \\" $&dc_gain_lin \\" V/V\\"
echo \\" Bandwidth 3dB (f_3dB): \\" $&f_3db \\" Hz\\"
echo \\" Phase 3dB (f_3dB): \\" $&ph_3db \\" deg (Ideally, ~135 deg)\\"
echo \\" Unity-Gain BW (UGBW): \\" $&ugbw \\" Hz\\"
echo \\" Phase Margin (PM): \\" $&pm \\" deg (Ideally, > 60 deg)\\"
echo \\" Gain Margin (GM): \\" $&gm_db \\" dB\\"
echo \\" Phase Crossover (f_180): \\" $&f_180 \\" Hz\\"
echo \\" GBW Product (PM): \\" $&gbw_calc \\" Hz\\"
echo \\"=======================================================\\"

plot loop_mag loop_ph xlog

.endc"
spice_ignore=true}
C {simulator_commands.sym} 1110 -290 0 0 {name=Noise
simulator=ngspice
only_toplevel=false 
value=".control
save all
shell mkdir -p result

* Tian probe idled
alter i.x999.ii acmag=0
alter v.x999.vi acmag=0

* Add AC 1 to Vicm
alter @v6[acmag]=1

* Noise simulation
noise v(out2) v6 dec 20 10 100MEG

* Return to initial condition
alter @v6[acmag]=0

setplot noise1

* Parameters #1
let inoise_total_uv = noise2.inoise_total * 1e6
let onoise_total_uv = noise2.onoise_total * 1e6
let irn_nv = noise1.inoise_spectrum * 1e9
let orn_nv = noise1.onoise_spectrum * 1e9

* IRN extraction at certain frequencies
let irn_10 = irn_nv[0]
let irn_100 = irn_nv[20]
let irn_1k = irn_nv[40]
let irn_10k = irn_nv[60]
let irn_100k = irn_nv[80]
let irn_1meg = irn_nv[100]
* meas noise irn_10 find irn_nv at=10
* meas noise irn_100 find irn_nv at=100
* meas noise irn_1k find irn_nv at=1k
* meas noise irn_10k find irn_nv at=10k
* meas noise irn_100k find irn_nv at=100k
* meas noise irn_1meg find irn_nv at=1MEG

write ./result/tb_cg_ota_noise.raw irn_nv orn_nv inoise_spectrum onoise_spectrum

echo \\"=======================================================\\"
echo \\" Total Output Noise (10 Hz - 100 MHz): \\" $&onoise_total_uv \\" uV_rms\\"
echo \\" Total Input Noise (10 Hz - 100 MHz): \\" $&inoise_total_uv \\" uV_rms\\"
echo \\"-------------------------------------------------------\\"
echo \\" IRN @ 10 Hz (Flicker Noise): \\" $&irn_10 \\" nV/sqrt(Hz)\\"
echo \\" IRN @ 100 Hz: \\" $&irn_100 \\" nV/sqrt(Hz)\\"
echo \\" IRN @ 1 kHz: \\" $&irn_1k \\" nV/sqrt(Hz)\\"
echo \\" IRN @ 10 kHz: \\" $&irn_10k \\" nV/sqrt(Hz)\\"
echo \\" IRN @ 100 kHz: \\" $&irn_100k \\" nV/sqrt(Hz)\\"
echo \\" IRN @ 1 MHz (Thermal Noise Floor): \\" $&irn_1meg \\" nV/sqrt(Hz)\\"
echo \\"=======================================================\\"

plot irn_nv xlog

.endc
"
spice_ignore=true}
C {vsource.sym} 250 -500 0 0 {name=V7 value=\{vicm\} savecurrent=false
spice_ignore=true}
C {lab_pin.sym} 250 -550 1 0 {name=p11 sig_type=std_logic lab=OUT1
spice_ignore=true}
C {lab_pin.sym} 250 -440 3 0 {name=p27 sig_type=std_logic lab=VSS
spice_ignore=true}
C {loopgainprobe.sym} 920 -520 0 0 {spice_ignore=true}
C {lab_pin.sym} 820 -520 0 0 {name=p19 sig_type=std_logic lab=OUT2
spice_ignore=true}
C {lab_pin.sym} 1020 -520 2 0 {name=p22 sig_type=std_logic lab=VINN2
spice_ignore=true}
C {simulator_commands_shown.sym} 250 -1200 0 0 {name=loopgainprobe
simulator=ngspice
only_toplevel=false
value=".subckt loopgainprobe a b
Ii 0 x DC 0 AC 0
Vi x a DC 0 AC 1
Vnodebuffer b x 0
.ends loopgainprobe

.func tian_loop() \{1/(1/(2*(ac1.i(v.x999.Vi)*ac2.v(x999.x)-ac1.v(x999.x)*ac2.i(v.x999.Vi))+ac1.v(x999.x)+ac2.i(v.x999.Vi))-1)\}
"
      }
C {lab_pin.sym} 1450 -120 3 0 {name=p24 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1360 -240 0 0 {name=p28 sig_type=std_logic lab=VINP3
}
C {lab_pin.sym} 1640 -220 2 0 {name=p29 sig_type=std_logic lab=OUT3
}
C {/foss/designs/Programmable-Instrumentation-Amplifier-IP/designs/libs/core_analog/coarse_gain/cg_ota.sym} 1480 -200 0 0 {name=x3
}
C {vdd.sym} 1450 -320 0 0 {name=l6 lab=VDD
}
C {lab_pin.sym} 1360 -200 0 0 {name=p30 sig_type=std_logic lab=I_B
}
C {vsource.sym} 1340 -510 0 0 {name=V5 value=\{vicm\} savecurrent=false
}
C {lab_pin.sym} 1340 -560 1 0 {name=p31 sig_type=std_logic lab=VINP3
}
C {lab_pin.sym} 1340 -460 3 0 {name=p32 sig_type=std_logic lab=VSS
}
C {capa.sym} 1600 -160 0 0 {name=C2
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"
}
C {simulator_commands.sym} 1850 -430 0 0 {name=PSRR
simulator=ngspice
only_toplevel="false" 
value=".control
save all
shell mkdir -p result

* PSRR
alter @v2[acmag]=1
alter @v5[acmag]=0

ac dec 20 1 10G

let psrr_curve = db(1 / (v(OUT3) + 1e-15))

meas ac psrr_dc find psrr_curve at=10
meas ac psrr_100k find psrr_curve at=100k
meas ac psrr_1meg find psrr_curve at=1MEG

write ./result/tb_cg_ota_psrr.raw psrr_curve

echo \\"=======================================================\\"
echo \\"  PSRR @ DC / 10 Hz        : \\" $&psrr_dc   \\" dB (Target: > 60 dB)\\"
echo \\"  PSRR @ 100 kHz           : \\" $&psrr_100k \\" dB\\"
echo \\"  PSRR @ 1 MHz             : \\" $&psrr_1meg \\" dB\\"
echo \\"=======================================================\\"

plot psrr_curve xlog
.endc"
spice_ignore=true}
C {simulator_commands.sym} 1850 -640 0 0 {name=DC_close_loop_op
simulator=ngspice
only_toplevel=false 
value=".op
.control
save all
op
shell mkdir -p result
run
write ./result/tb_cg_ota_dc-close-op.raw
show all : vgs, vds, vth, ids
let v_in = v(vinp3)
let v_out = v(out3)
let vos_mv = (v_in - v_out) * 1000
let i_q = -i(v2)
let p_q = i_q * 1.2
let p_q_uw = p_q * 1e6
let i_q_ua = i_q * 1e6
echo \\"=======================================================\\"
echo \\" Input Common-Mode (Vin+): \\" $&v_in \\" V\\"
echo \\" Output Voltage (Vout): \\" $&v_out \\" V\\"
echo \\" Systematic Offset (Vos): \\" $&vos_mv \\" mV\\"
echo \\" Quiescent Current (I_q): \\" $&i_q_ua \\" uA\\"
echo \\" Quiescent Power (P_q): \\" $&p_q_uw \\" uW\\"
echo \\"=======================================================\\"
.endc
"
spice_ignore=true}
C {vsource.sym} 880 -900 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 880 -850 0 0 {name=l7 lab=0}
C {lab_pin.sym} 880 -940 1 0 {name=p3 sig_type=std_logic lab=VSS
}
C {simulator_commands.sym} 1850 -240 0 0 {name=CMRR
simulator=ngspice
only_toplevel="false" 
value=".control
save all
shell mkdir -p result

* CMRR
alter @v2[acmag]=0
alter @v5[acmag]=1

ac dec 20 1 10G

let v_diff_res = v(VINP3) - v(OUT3)
let cmrr_curve = db(1 / (v_diff_res + 1e-15))

meas ac cmrr_dc find cmrr_curve at=10
meas ac cmrr_100k find cmrr_curve at=100k
meas ac cmrr_1meg find cmrr_curve at=1MEG

write ./result/tb_cg_ota_cmrr.raw v_diff_res cmrr_curve

echo \\"=======================================================\\"
echo \\"  CMRR @ DC / 10 Hz        : \\" $&cmrr_dc   \\" dB (Target: > 60 dB)\\"
echo \\"  CMRR @ 100 kHz           : \\" $&cmrr_100k \\" dB\\"
echo \\"  CMRR @ 1 MHz             : \\" $&cmrr_1meg \\" dB\\"
echo \\"=======================================================\\"

plot cmrr_curve xlog
.endc"
spice_ignore=true}
C {simulator_commands.sym} 1710 -640 0 0 {name=TRAN_large
simulator=ngspice
only_toplevel="false" 
value=".control
shell mkdir -p result

* LARGE-SIGNAL STEP RESPONSE (SLEW RATE & PROPAGATION DELAYS)
* Stimulus: Pulse swing 0.2 V to 1.0 V (Delta V = 0.8 V, Vcm = 0.6 V)
alter @v5[pulse] = [ 0.2 1.0 20n 1n 1n 1u 2.5u ]

tran 0.2n 2.5u
run

let v_in  = v(vinp3)
let v_out = v(out3)

* --- Rising Edge Analysis ---
* Input 50% crossing (0.60 V)
meas tran t_in_r50  when v_in=0.60 rise=1

* Output 10% (0.28 V), 50% (0.60 V), and 90% (0.92 V) crossings
meas tran t_out_r10 when v_out=0.28 rise=1
meas tran t_out_r50 when v_out=0.60 rise=1
meas tran t_out_r90 when v_out=0.92 rise=1

* Compute Rise Time, Positive Slew Rate (SR+), and Propagation Delay (tpLH)
let t_rise_ns = (t_out_r90 - t_out_r10) * 1e9
let sr_pos    = (0.92 - 0.28) / (t_out_r90 - t_out_r10) / 1e6
let t_plh_ns  = (t_out_r50 - t_in_r50) * 1e9

* --- Falling Edge Analysis ---
* Input 50% crossing (0.60 V)
meas tran t_in_f50  when v_in=0.60 fall=1

* Output 90% (0.92 V), 50% (0.60 V), and 10% (0.28 V) crossings
meas tran t_out_f90 when v_out=0.92 fall=1
meas tran t_out_f50 when v_out=0.60 fall=1
meas tran t_out_f10 when v_out=0.28 fall=1

* Compute Fall Time, Negative Slew Rate (SR-), and Propagation Delay (tpHL)
let t_fall_ns = (t_out_f10 - t_out_f90) * 1e9
let sr_neg    = (0.92 - 0.28) / (t_out_f10 - t_out_f90) / 1e6
let t_phl_ns  = (t_out_f50 - t_in_f50) * 1e9

* Save output waveforms to the specified rawfile
write ./result/tb_cg_ota_tran_large.raw v_in v_out

* Print execution summary
echo \\"=======================================================\\"
echo \\"   OTA LARGE-SIGNAL TRANSIENT SIMULATION RESULTS       \\"
echo \\"=======================================================\\"
echo \\" Positive Slew Rate (SR+)  : \\" $&sr_pos    \\" V/us\\"
echo \\" Negative Slew Rate (SR-)  : \\" $&sr_neg    \\" V/us\\"
echo \\" Rise Time 10% - 90% (tr)  : \\" $&t_rise_ns \\" ns\\"
echo \\" Fall Time 90% - 10% (tf)  : \\" $&t_fall_ns \\" ns\\"
echo \\" Propagation Delay (tpLH)  : \\" $&t_plh_ns  \\" ns\\"
echo \\" Propagation Delay (tpHL)  : \\" $&t_phl_ns  \\" ns\\"
echo \\"=======================================================\\"

* Reset v5 source back to clean DC operating point
alter @v5[pulse] = [ 0.6 0.6 0 0 0 1u 2u ]

plot v_out v_in
.endc"
spice_ignore=true}
C {simulator_commands.sym} 1710 -440 0 0 {name=TRAN_small
simulator=ngspice
only_toplevel="false" 
value=".control
save all
shell mkdir -p result

* SMALL-SIGNAL STEP RESPONSE (SETTLING TIME & OVERSHOOT)
* Stimulus: Small step 0.55 V to 0.65 V (Delta V = 100 mV)
alter @v5[pulse] = [ 0.55 0.65 20n 1n 1n 500n 1.2u ]

tran 0.1n 1.2u
run

let v_in  = v(vinp3)
let v_out = v(out3)

* --- Small-Signal Delay and Rise Time ---
meas tran t_in_s50  when v_in=0.60 rise=1
meas tran t_out_s10 when v_out=0.56 rise=1
meas tran t_out_s50 when v_out=0.60 rise=1
meas tran t_out_s90 when v_out=0.64 rise=1

let t_delay_ns = (t_out_s50 - t_in_s50) * 1e9
let t_rise_ns  = (t_out_s90 - t_out_s10) * 1e9

* --- Overshoot Percentage ---
meas tran v_peak max v_out from=20n to=300n
let overshoot_pct = ((v_peak - 0.65) / 0.1) * 100

* --- Settling Time Calculation ---
* Target value = 0.65 V (Step amplitude = 100 mV)
* 1% Band   : 0.65 V +/- 1 mV   -> 0.649 V to 0.651 V
* 0.1% Band : 0.65 V +/- 0.1 mV -> 0.6499 V to 0.6501 V
meas tran t_set1 when v_out=0.649 cross=last
let ts_1pct_ns = (t_set1 - 20n) * 1e9

meas tran t_set01 when v_out=0.6499 cross=last
let ts_01pct_ns = (t_set01 - 20n) * 1e9

* Save output waveforms to the specified rawfile
write ./result/tb_cg_ota_tran_small.raw v_in v_out

* Print execution summary
echo \\"=======================================================\\"
echo \\"   OTA SMALL-SIGNAL TRANSIENT SIMULATION RESULTS       \\"
echo \\"=======================================================\\"
echo \\" Small-Signal Delay        : \\" $&t_delay_ns   \\" ns\\"
echo \\" Small-Signal Rise Time    : \\" $&t_rise_ns    \\" ns\\"
echo \\" Peak Voltage (Vpeak)      : \\" $&v_peak       \\" V\\"
echo \\" Overshoot                 : \\" $&overshoot_pct \\" % (Target: < 10%)\\"
echo \\" Settling Time (1% Band)   : \\" $&ts_1pct_ns   \\" ns\\"
echo \\" Settling Time (0.1% Band) : \\" $&ts_01pct_ns  \\" ns\\"
echo \\"=======================================================\\"

* Reset v5 source back to clean DC operating point
alter @v5[pulse] = [ 0.6 0.6 0 0 0 1u 2u ]

plot v_out v_in
.endc"
spice_ignore=true}
C {simulator_commands.sym} 1710 -240 0 0 {name="Monte_Carlo"
simulator=ngspice
only_toplevel="false" 
value=".control
* 1. Clear previous simulation datasets and initialize result directory
destroy all
save all
shell mkdir -p result
shell rm -f ./result/sim9_mc_data.txt

echo \\"=======================================================\\"
echo \\"   STARTING MONTE CARLO MISMATCH SIMULATION (100 RUNS) \\"
echo \\"=======================================================\\"

* 2. Iteration parameters and vector allocations
let mc_runs = 100
let run_idx = 0

let vos_vec = unitvec(mc_runs)
let iq_vec  = unitvec(mc_runs)

* Write table header to text file
echo \\"Run_ID  Vos_mV      Iq_uA\\" >> ./result/sim9_mc_data.txt

* 3. Monte Carlo execution loop
dowhile run_idx < mc_runs
  * Reset SPICE engine to sample a new statistical mismatch seed
  reset
  
  * Quiescent DC operating point (Vin = 0.6 V)
  op

  * Calculate Input Offset Voltage (mV) and Quiescent Current (uA)
  * Note: Assumes VDD supply instance is named v2 (adjust to v_vdd if needed)
  let cur_vos = (v(vinp3) - v(out3)) * 1000
  let cur_iq  = -i(v2) * 1e6

  * Store values into vector arrays
  let vos_vec[run_idx] = cur_vos
  let iq_vec[run_idx]  = cur_iq

  * Append numerical data to text file
  set s_idx = \\"$&run_idx\\"
  set s_vos = \\"$&cur_vos\\"
  set s_iq  = \\"$&cur_iq\\"
  echo \\"$s_idx   $s_vos   $s_iq\\" >> ./result/sim9_mc_data.txt

  let run_idx = run_idx + 1
end

* =======================================================
* 4. STATISTICAL DATA POST-PROCESSING
* =======================================================

* A. Mean calculation (mu)
let sum_vos = 0
let sum_iq  = 0
let i = 0
dowhile i < mc_runs
  let sum_vos = sum_vos + vos_vec[i]
  let sum_iq  = sum_iq  + iq_vec[i]
  let i = i + 1
end
let mean_vos = sum_vos / mc_runs
let mean_iq  = sum_iq  / mc_runs

* B. Sample standard deviation calculation (sigma)
let sum_sq_diff_vos = 0
let sum_sq_diff_iq  = 0
let i = 0
dowhile i < mc_runs
  let diff_vos = vos_vec[i] - mean_vos
  let diff_iq  = iq_vec[i]  - mean_iq
  let sum_sq_diff_vos = sum_sq_diff_vos + (diff_vos * diff_vos)
  let sum_sq_diff_iq  = sum_sq_diff_iq  + (diff_iq  * diff_iq)
  let i = i + 1
end
let sigma_vos = sqrt(sum_sq_diff_vos / (mc_runs - 1))
let sigma_iq  = sqrt(sum_sq_diff_iq  / (mc_runs - 1))

* C. Extreme values and worst-case 6-sigma span
meas dc max_vos max vos_vec
meas dc min_vos min vos_vec
let span_6sigma_vos = 6 * sigma_vos

* =======================================================
* 5. STATISTICAL SUMMARY REPORT
* =======================================================
echo \\"=======================================================\\"
echo \\"       MONTE CARLO MISMATCH STATISTICAL RESULTS        \\"
echo \\"=======================================================\\"
echo \\" Total Iterations (Runs)     : \\" $&mc_runs
echo \\"-------------------------------------------------------\\"
echo \\" INPUT OFFSET VOLTAGE (Vos) DISTRIBUTION:\\"
echo \\"   - Mean / Systematic (mu)  : \\" $&mean_vos \\" mV\\"
echo \\"   - Std Deviation (sigma)   : \\" $&sigma_vos \\" mV\\"
echo \\"   - Full Spread (6*sigma)   : \\" $&span_6sigma_vos \\" mV\\"
echo \\"   - Minimum Measured Offset : \\" $&min_vos \\" mV\\"
echo \\"   - Maximum Measured Offset : \\" $&max_vos \\" mV\\"
echo \\"-------------------------------------------------------\\"
echo \\" TOTAL QUIESCENT CURRENT (Iq) DISTRIBUTION:\\"
echo \\"   - Mean Quiescent Current  : \\" $&mean_iq \\" uA\\"
echo \\"   - Std Deviation (sigma)   : \\" $&sigma_iq \\" uA\\"
echo \\"=======================================================\\"
echo \\" Raw numerical data saved to: ./result/sim9_mc_data.txt\\"
echo \\"=======================================================\\"

* Save full vectors to binary rawfile
write ./result/tb_cg_ota_monte-carlo.raw vos_vec iq_vec
.endc"
spice_ignore=true}
C {simulator_commands.sym} 1110 -110 0 0 {name=PVT
simulator=ngspice
only_toplevel=false 
value=".control
save all
shell mkdir -p result

* Tian probe idled
alter i.x999.ii acmag=0
alter v.x999.vi acmag=0

* Add AC 1 to Vicm
alter @v6[acmag]=1

* Noise simulation
noise v(out2) v6 dec 20 10 100MEG

* Return to initial condition
alter @v6[acmag]=0

setplot noise1

* Parameters #1
let inoise_total_uv = noise2.inoise_total * 1e6
let onoise_total_uv = noise2.onoise_total * 1e6
let irn_nv = noise1.inoise_spectrum * 1e9
let orn_nv = noise1.onoise_spectrum * 1e9

* IRN extraction at certain frequencies
let irn_10 = irn_nv[0]
let irn_100 = irn_nv[20]
let irn_1k = irn_nv[40]
let irn_10k = irn_nv[60]
let irn_100k = irn_nv[80]
let irn_1meg = irn_nv[100]
* meas noise irn_10 find irn_nv at=10
* meas noise irn_100 find irn_nv at=100
* meas noise irn_1k find irn_nv at=1k
* meas noise irn_10k find irn_nv at=10k
* meas noise irn_100k find irn_nv at=100k
* meas noise irn_1meg find irn_nv at=1MEG

write ./result/tb_cg_ota_noise.raw irn_nv orn_nv inoise_spectrum onoise_spectrum

echo \\"=======================================================\\"
echo \\" Total Output Noise (10 Hz - 100 MHz): \\" $&onoise_total_uv \\" uV_rms\\"
echo \\" Total Input Noise (10 Hz - 100 MHz): \\" $&inoise_total_uv \\" uV_rms\\"
echo \\"-------------------------------------------------------\\"
echo \\" IRN @ 10 Hz (Flicker Noise): \\" $&irn_10 \\" nV/sqrt(Hz)\\"
echo \\" IRN @ 100 Hz: \\" $&irn_100 \\" nV/sqrt(Hz)\\"
echo \\" IRN @ 1 kHz: \\" $&irn_1k \\" nV/sqrt(Hz)\\"
echo \\" IRN @ 10 kHz: \\" $&irn_10k \\" nV/sqrt(Hz)\\"
echo \\" IRN @ 100 kHz: \\" $&irn_100k \\" nV/sqrt(Hz)\\"
echo \\" IRN @ 1 MHz (Thermal Noise Floor): \\" $&irn_1meg \\" nV/sqrt(Hz)\\"
echo \\"=======================================================\\"

plot irn_nv xlog

.endc
"
spice_ignore=true}
C {launcher.sym} -250 -260 0 0 {name=h7
descr=Plot_PVT
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -160 0 0 {name=h9
descr=Plot_Tran_Small
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -120 0 0 {name=h11
descr=Plot_CMRR
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 -200 0 0 {name=h12
descr=Plot_Tran_Large
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
C {launcher.sym} -250 0 0 0 {name=h13
descr=Plot_Monte_Carlo
tclcommand="set raw_path [file join $netlist_dir result tb_cg_ota_op.raw]
if \{[file exists $raw_path]\} \{
    xschem annotate_op $raw_path
\} else \{
    puts \\"File $raw_path didn't exist. Please simulate DC_op first and run it!\\"
\}"}
