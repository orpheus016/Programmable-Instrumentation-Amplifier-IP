v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -460 40 -420 {lab=gnd}
N 140 -460 140 -420 {lab=VDD}
N 240 -460 240 -420 {lab=ibias}
N 380 -560 380 -530 {lab=vdd}
N 620 -560 620 -530 {lab=vdd}
N 920 -560 920 -530 {lab=vdd}
N 620 -600 620 -560 {lab=vdd}
N 880 -500 880 -490 {lab=#net1}
N 580 -500 580 -490 {lab=#net1}
N 620 -500 630 -500 {lab=vdd}
N 630 -530 630 -500 {lab=vdd}
N 620 -530 630 -530 {lab=vdd}
N 370 -500 380 -500 {lab=vdd}
N 370 -530 370 -500 {lab=vdd}
N 370 -530 380 -530 {lab=vdd}
N 920 -500 930 -500 {lab=vdd}
N 930 -530 930 -500 {lab=vdd}
N 920 -530 930 -530 {lab=vdd}
N 510 -490 510 -450 {lab=#net1}
N 380 -450 510 -450 {lab=#net1}
N 380 -470 380 -450 {lab=#net1}
N 380 -560 620 -560 {lab=vdd}
N 510 -490 580 -490 {lab=#net1}
N 620 -360 710 -360 {lab=#net2}
N 620 -330 710 -330 {lab=vdd}
N 620 -330 620 -310 {lab=vdd}
N 540 -330 620 -330 {lab=vdd}
N 600 -130 670 -130 {lab=#net3}
N 710 -180 710 -160 {lab=#net4}
N 540 -180 600 -180 {lab=#net3}
N 540 -180 540 -160 {lab=#net3}
N 580 -130 600 -130 {lab=#net3}
N 600 -180 600 -130 {lab=#net3}
N 480 -330 500 -330 {lab=VINN}
N 750 -330 770 -330 {lab=VINP}
N 530 -130 540 -130 {lab=gnd}
N 530 -130 530 -100 {lab=gnd}
N 530 -100 540 -100 {lab=gnd}
N 710 -130 720 -130 {lab=gnd}
N 720 -130 720 -100 {lab=gnd}
N 710 -100 720 -100 {lab=gnd}
N 540 -100 540 -80 {lab=gnd}
N 710 -100 710 -80 {lab=gnd}
N 420 -490 510 -490 {lab=#net1}
N 420 -500 420 -490 {lab=#net1}
N 710 -180 770 -180 {lab=#net4}
N 770 -180 770 -130 {lab=#net4}
N 920 -100 930 -100 {lab=gnd}
N 930 -130 930 -100 {lab=gnd}
N 920 -130 930 -130 {lab=gnd}
N 920 -100 920 -80 {lab=gnd}
N 620 -560 920 -560 {lab=vdd}
N 580 -490 880 -490 {lab=#net1}
N 770 -130 880 -130 {lab=#net4}
N 770 -180 800 -180 {lab=#net4}
N 380 -450 380 -440 {lab=#net1}
N 380 -380 380 -240 {lab=ibias}
N 620 -470 620 -440 {lab=#net5}
N 620 -380 620 -360 {lab=#net2}
N 540 -360 620 -360 {lab=#net2}
N 920 -470 920 -440 {lab=#net6}
N 920 -330 980 -330 {lab=VOUT}
N 920 -380 920 -330 {lab=VOUT}
N 540 -200 540 -180 {lab=#net3}
N 540 -300 540 -260 {lab=#net7}
N 710 -200 710 -180 {lab=#net4}
N 710 -300 710 -260 {lab=#net8}
N 920 -200 920 -160 {lab=#net9}
N 920 -330 920 -260 {lab=VOUT}
C {vdd.sym} 620 -660 0 0 {name=l1 lab=VDD}
C {vdd.sym} 140 -460 0 0 {name=l2 lab=VDD}
C {lab_wire.sym} 40 -460 0 0 {name=p3 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 240 -460 0 0 {name=p5 sig_type=std_logic lab=ibias}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 400 -500 0 1 {name=M6
l=\{lbias\}
w=\{wbias\}
ng=1
m=\{m6\}
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 600 -500 0 0 {name=M7
l=\{lbias\}
w=\{wbias\}
ng=1
m=\{m7\}
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 900 -500 0 0 {name=M8
l=\{lbias\}
w=\{wbias\}
ng=1
m=\{m8\}
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 520 -330 0 0 {name=M1
l=\{linpair\}
w=\{winpair\}
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 730 -330 0 1 {name=M2
l=\{linpair\}
w=\{winpair\}
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 560 -130 0 1 {name=M3
l=\{lload\}
w=\{wload\}
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 690 -130 0 0 {name=M4
l=\{lload\}
w=\{wload\}
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 620 -580 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 620 -310 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 380 -240 0 0 {name=p7 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 540 -80 0 0 {name=p8 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 710 -80 0 0 {name=p9 sig_type=std_logic lab=gnd}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 900 -130 0 0 {name=M5
l=\{lcs\}
w=\{wcs\}
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 920 -80 0 0 {name=p12 sig_type=std_logic lab=gnd}
C {capa.sym} 890 -180 3 0 {name=C1
m=1
value=\{Cc\}
footprint=1206
device="ceramic capacitor"}
C {sg13cmos5l_pr/rhigh.sym} 830 -180 3 0 {name=R1
w=0.5e-6
l=1.95e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {simulator_commands_shown.sym} 1130 -590 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.include ota_cmos5l.save
.param temp=27
.param lbias=0.15u wbias=0.15u
.param m6=1 m7=4 m8=10
.param linpair=3u winpair=20u
.param lload=0.5u wload=0.42u
.param lcs=5u wcs=19.13u
.param Cc=1.5p
.control
op
write ota_cmos5l.raw
.endc
"}
C {simulator_commands_shown.sym} 1130 -280 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"
      }
C {launcher.sym} 1190 -160 0 0 {name=h4
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
simulate
"}
C {title.sym} 160 -30 0 0 {name=l4 author="James Patrick"}
C {ammeter.sym} 380 -410 0 0 {name=VIBIAS savecurrent=true spice_ignore=0}
C {ammeter.sym} 620 -410 0 0 {name=VID7 savecurrent=true spice_ignore=0}
C {ammeter.sym} 920 -410 0 0 {name=VID8 savecurrent=true spice_ignore=0}
C {ammeter.sym} 620 -630 0 0 {name=VIVDD savecurrent=true spice_ignore=0}
C {iopin.sym} 240 -420 1 0 {name=p2 lab=IBIAS}
C {iopin.sym} 140 -420 1 0 {name=p4 lab=VDD}
C {iopin.sym} 40 -420 1 0 {name=p13 lab=VSS}
C {iopin.sym} 980 -330 0 0 {name=p14 lab=VOUT}
C {iopin.sym} 770 -330 3 0 {name=p10 lab=VINP}
C {iopin.sym} 480 -330 3 0 {name=p11 lab=VINN}
C {spice_probe.sym} 760 -330 2 1 {name=p15 attrs=""}
C {spice_probe.sym} 490 -330 2 0 {name=p16 attrs=""}
C {spice_probe.sym} 960 -330 2 1 {name=p17 attrs=""}
C {ammeter.sym} 540 -230 0 0 {name=VID1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 710 -230 0 0 {name=VID2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 920 -230 0 0 {name=VID5 savecurrent=true spice_ignore=0}
