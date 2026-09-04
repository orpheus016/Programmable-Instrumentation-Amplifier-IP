v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -590 -280 -550 -280 {lab=VIN3}
N -450 -280 -370 -280 {lab=#net1}
N -20 -280 50 -280 {lab=#net2}
N 190 -280 250 -280 {lab=#net3}
N 390 -280 450 -280 {lab=#net4}
N 780 -280 780 -230 {lab=#net5}
N 590 -280 590 -230 {lab=#net6}
N 390 -280 390 -230 {lab=#net4}
N 190 -280 190 -230 {lab=#net3}
N -20 -280 -20 -230 {lab=#net2}
N -450 -280 -450 -230 {lab=#net1}
N -490 -280 -450 -280 {lab=#net1}
N -240 -280 -160 -280 {lab=#net7}
N -240 -280 -240 -230 {lab=#net7}
N -310 -280 -240 -280 {lab=#net7}
N -100 -280 -20 -280 {lab=#net2}
N 110 -280 190 -280 {lab=#net3}
N 310 -280 390 -280 {lab=#net4}
N 510 -280 590 -280 {lab=#net6}
N 590 -280 650 -280 {lab=#net6}
N 710 -280 780 -280 {lab=#net5}
N -450 -170 -450 -120 {lab=#net8}
N -510 -120 -450 -120 {lab=#net8}
N -450 -120 -400 -120 {lab=#net8}
N -290 -120 -240 -120 {lab=#net9}
N -240 -170 -240 -120 {lab=#net9}
N -240 -120 -180 -120 {lab=#net9}
N -70 -120 -20 -120 {lab=#net10}
N -20 -170 -20 -120 {lab=#net10}
N -20 -120 40 -120 {lab=#net10}
N 140 -120 190 -120 {lab=#net11}
N 190 -170 190 -120 {lab=#net11}
N 190 -120 250 -120 {lab=#net11}
N 350 -120 390 -120 {lab=#net12}
N 390 -170 390 -120 {lab=#net12}
N 390 -120 450 -120 {lab=#net12}
N 550 -120 590 -120 {lab=#net13}
N 590 -170 590 -120 {lab=#net13}
N 590 -120 650 -120 {lab=#net13}
N 650 20 780 20 {lab=VCM}
N 780 -170 780 20 {lab=VCM}
N 650 -60 650 20 {lab=VCM}
N 450 20 650 20 {lab=VCM}
N 450 -60 450 20 {lab=VCM}
N 250 20 450 20 {lab=VCM}
N 250 -60 250 20 {lab=VCM}
N 40 20 250 20 {lab=VCM}
N 40 -60 40 20 {lab=VCM}
N -180 20 40 20 {lab=VCM}
N -180 -60 -180 20 {lab=VCM}
N -400 20 -180 20 {lab=VCM}
N -400 -60 -400 20 {lab=VCM}
N -600 20 -400 20 {lab=VCM}
N -510 -60 -510 -30 {lab=#net14}
N 550 -30 850 -30 {lab=#net14}
N -290 -60 -290 -30 {lab=#net14}
N -510 -30 -290 -30 {lab=#net14}
N -70 -60 -70 -30 {lab=#net14}
N -290 -30 -70 -30 {lab=#net14}
N 140 -60 140 -30 {lab=#net14}
N -70 -30 140 -30 {lab=#net14}
N 350 -60 350 -30 {lab=#net14}
N 140 -30 350 -30 {lab=#net14}
N 550 -60 550 -30 {lab=#net14}
N 350 -30 550 -30 {lab=#net14}
N 850 -160 850 -30 {lab=#net14}
N 1090 -160 1090 -0 {lab=#net15}
N 850 -160 930 -160 {lab=#net14}
N 990 -160 1090 -160 {lab=#net15}
C {sg13g2_pr/rhigh.sym} -520 -280 3 0 {name=R1
w=1.0e-6
l=35.18e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {ipin.sym} -670 -530 0 0 {name=p8 lab=AVSS}
C {ipin.sym} -590 -280 0 0 {name=p1 lab=VIN3
}
C {ipin.sym} -600 20 0 0 {name=p2 lab=VCM
}
C {ipin.sym} -670 -500 0 0 {name=p3 lab=D4

}
C {ipin.sym} -670 -470 0 0 {name=p4 lab=D5

}
C {ipin.sym} -670 -440 0 0 {name=p5 lab=D6

}
C {ipin.sym} -670 -410 0 0 {name=p6 lab=D7
}
C {ipin.sym} -670 -380 0 0 {name=p7 lab=D8
}
C {ipin.sym} -670 -350 0 0 {name=p9 lab=D9

}
C {ipin.sym} -670 -560 0 0 {name=p10 lab=AVDD
}
C {ipin.sym} -670 -320 0 0 {name=p11 lab=VBIAS}
C {sg13g2_pr/rhigh.sym} -450 -200 0 0 {name=R2
w=1.0e-6
l=70.475e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} -340 -280 3 0 {name=R3
w=1.0e-6
l=35.18e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} -130 -280 3 0 {name=R4
w=1.0e-6
l=35.18e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} 80 -280 3 0 {name=R5
w=1.0e-6
l=35.18e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} 280 -280 3 0 {name=R6
w=1.0e-6
l=35.18e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} 480 -280 3 0 {name=R7
w=1.0e-6
l=35.18e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} 680 -280 3 0 {name=R8
w=1.0e-6
l=35.18e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} -240 -200 0 0 {name=R9
w=1.0e-6
l=70.475e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} -20 -200 0 0 {name=R10
w=1.0e-6
l=70.475e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} 190 -200 0 0 {name=R11
w=1.0e-6
l=70.475e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} 390 -200 0 0 {name=R12
w=1.0e-6
l=70.475e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} 590 -200 0 0 {name=R13
w=1.0e-6
l=70.475e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/rhigh.sym} 780 -200 0 0 {name=R14
w=1.0e-6
l=70.475e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13g2_pr/sg13_lv_nmos.sym} -530 -90 0 0 {name=M1
l=0.13u
w=10u
ng=2
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -420 -90 0 0 {name=M2
l=0.13u
w=30u
ng=6
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -310 -90 0 0 {name=M3
l=0.13u
w=10u
ng=2
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -200 -90 0 0 {name=M4
l=0.13u
w=30u
ng=6
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -90 -90 0 0 {name=M5
l=0.13u
w=10u
ng=2
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -90 0 0 {name=M6
l=0.13u
w=30u
ng=6
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -90 0 0 {name=M7
l=0.13u
w=10u
ng=2
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 230 -90 0 0 {name=M8
l=0.13u
w=30u
ng=6
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 330 -90 0 0 {name=M9
l=0.13u
w=10u
ng=2
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 430 -90 0 0 {name=M10
l=0.13u
w=30u
ng=6
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 530 -90 0 0 {name=M11
l=0.13u
w=10u
ng2
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 630 -90 0 0 {name=M12
l=0.13u
w=30u
ng=6
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 960 -160 3 0 {name=R15
w=1.0e-6
l=35.18e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
