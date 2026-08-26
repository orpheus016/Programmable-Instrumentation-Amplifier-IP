v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 -160 -120 -160 {lab=IN}
N -140 -160 -140 -10 {lab=IN}
N -140 -10 -80 -10 {lab=IN}
N 20 -160 40 -160 {lab=OUT}
N 40 -160 40 -10 {lab=OUT}
N -20 -10 40 -10 {lab=OUT}
N -50 -110 -50 -90 {lab=0}
N -50 -230 -50 -210 {lab=#net1}
N -50 -310 -50 -290 {lab=0}
N -160 -160 -140 -160 {lab=IN}
N -240 -160 -220 -160 {lab=0}
N -80 -110 -80 -90 {lab=0}
N -80 -230 -80 -210 {lab=#net2}
N -100 -230 -80 -230 {lab=#net2}
N -180 -230 -160 -230 {lab=0}
C {tgate.sym} -80 -10 0 0 {name=x1}
C {isource.sym} -50 -10 3 0 {name=ITEST value=10u}
C {gnd.sym} -50 -90 0 0 {name=l1 lab=0}
C {vsource.sym} -50 -260 2 1 {name=VDD_A value=1.2 savecurrent=false}
C {gnd.sym} -50 -310 2 0 {name=l2 lab=0}
C {vsource.sym} -190 -160 1 0 {name=VCM value=0 savecurrent=false}
C {gnd.sym} -240 -160 1 0 {name=l3 lab=0}
C {gnd.sym} -80 -90 0 0 {name=l4 lab=0}
C {vsource.sym} -130 -230 1 0 {name=VDD_D value=1.2 savecurrent=false}
C {gnd.sym} -180 -230 1 0 {name=l5 lab=0}
C {code_shown.sym} 70 -290 0 0 {name=MODELS only_toplevel=false value=".lib cornerMOSlv.lib mos_tt"}
C {code_shown.sym} 70 -210 0 0 {name=NGSPICE only_toplevel=false value=".control
  run

  dc VCM 0 1.2 0.01

  * Calculate Switch On-Resistance:
  let ron = (v(OUT) - v(IN)) / 10u

  plot ron title 'T-Gate On-Resistance vs Input Voltage' xlabel 'V_in (V)' ylabel 'R_on (Ohms)'

  write tb_tgate_dc.raw
.endc

"}
C {lab_wire.sym} -140 -10 0 0 {name=p5 sig_type=std_logic lab=IN}
C {lab_wire.sym} 40 -10 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {title.sym} -140 40 0 0 {name=l6 author="Rafi Ananta Alden"}
