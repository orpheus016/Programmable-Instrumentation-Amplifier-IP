v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -40 -70 -40 {lab=IN+}
N -100 -20 -70 -20 {lab=IN-}
N -100 0 -70 -0 {lab=I_B}
N -0 -120 -0 -90 {lab=VDD}
N 0 50 0 80 {lab=gnd}
N 100 -20 120 -20 {lab=OUT}
C {cg-ota.sym} 30 0 0 0 {name=x1}
C {lab_pin.sym} -100 -20 0 0 {name=p2 sig_type=std_logic lab=IN-}
C {lab_pin.sym} -100 0 0 0 {name=p3 sig_type=std_logic lab=I_B}
C {lab_pin.sym} 0 -120 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 80 3 0 {name=p5 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -100 -40 0 0 {name=p6 sig_type=std_logic lab=IN+}
C {lab_pin.sym} 120 -20 2 0 {name=p1 sig_type=std_logic lab=OUT}
C {simulator_commands_shown.sym} 190 -210 0 0 {
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
