v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -0 70 -0 {lab=#net1}
N -80 -60 -80 -30 {lab=#net1}
N 110 -120 110 -30 {lab=#net2}
N 20 -60 20 -0 {lab=#net1}
N -40 -0 20 -0 {lab=#net1}
N -80 -60 20 -60 {lab=#net1}
N -80 -120 -80 -60 {lab=#net1}
N -80 0 -80 60 {lab=AVSS}
N 110 -0 110 60 {lab=AVSS}
N -80 -150 110 -150 {lab=AVDD}
N -150 -150 -120 -150 {lab=VIN_BUF-}
N 150 -150 180 -150 {lab=VIN_BUF+}
N -80 -200 -80 -180 {lab=#net3}
N 20 -200 110 -200 {lab=#net3}
N 110 -200 110 -180 {lab=#net3}
N 20 -230 20 -200 {lab=#net3}
N -80 -200 20 -200 {lab=#net3}
N -60 -260 -20 -260 {lab=IBIAS}
N 20 -320 20 -260 {lab=AVDD}
N -210 -320 -210 -260 {lab=AVDD}
N -210 -320 20 -320 {lab=AVDD}
N -210 -210 -170 -210 {lab=IBIAS}
N -170 -260 -170 -210 {lab=IBIAS}
N -210 -210 -210 -190 {lab=IBIAS}
N -210 -230 -210 -210 {lab=IBIAS}
N -170 -260 -140 -260 {lab=IBIAS}
N 20 -350 20 -320 {lab=AVDD}
N 110 60 110 90 {lab=AVSS}
N -80 60 110 60 {lab=AVSS}
N 20 -320 310 -320 {lab=AVDD}
N 310 -320 310 -260 {lab=AVDD}
N 190 -30 270 -30 {lab=#net2}
N 310 -110 310 -60 {lab=VOUT}
N 110 60 310 60 {lab=AVSS}
N 240 -260 270 -260 {lab=IBIAS}
N 310 -150 340 -150 {lab=VOUT}
N 310 -230 310 -150 {lab=VOUT}
N 190 -110 220 -110 {lab=#net2}
N 190 -110 190 -30 {lab=#net2}
N 110 -30 190 -30 {lab=#net2}
N 280 -110 310 -110 {lab=VOUT}
N 310 -150 310 -110 {lab=VOUT}
N 310 -30 310 60 {lab=AVSS}
C {iopin.sym} 20 -350 3 0 {name=p1 lab=AVDD}
C {iopin.sym} 110 90 1 0 {name=p4 lab=AVSS}
C {lab_wire.sym} 20 -150 0 0 {name=p6 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} -140 -260 0 1 {name=p7 sig_type=std_logic lab=IBIAS}
C {lab_wire.sym} -60 -260 0 0 {name=p8 sig_type=std_logic lab=IBIAS}
C {lab_wire.sym} 240 -260 0 0 {name=p9 sig_type=std_logic lab=IBIAS}
C {iopin.sym} 340 -150 0 0 {name=p10 lab=VOUT}
C {iopin.sym} -210 -190 1 0 {name=p11 lab=IBIAS}
C {iopin.sym} -150 -150 1 0 {name=p3 lab=VIN_BUF-}
C {iopin.sym} 180 -150 2 1 {name=p2 lab=VIN_BUF+}
C {title.sym} -160 200 0 0 {name=l1 author="Mamank Garox"}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} -100 -150 0 0 {name=M1
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 130 -150 0 1 {name=M2
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 0 -260 0 0 {name=M3
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -60 0 0 1 {name=M4
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 90 0 0 0 {name=M5
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 290 -260 0 0 {name=M6
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 290 -30 0 0 {name=M7
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} -190 -260 0 1 {name=M8
l=0.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/cap_mfringe.sym} 250 -110 1 0 {name=C1
model=cap_mfringe
w=2.0u
l=2.0u
mmin=1
mmax=4
spiceprefix=X
}
