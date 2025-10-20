v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 480 -500 480 -380 {
lab=#net1}
N 670 -500 670 -380 {
lab=V1}
N 520 -530 630 -530 {
lab=#net1}
N 480 -320 670 -320 {
lab=#net2}
N 580 -320 580 -280 {
lab=#net2}
N 480 -600 480 -560 {
lab=VDD}
N 480 -600 670 -600 {
lab=VDD}
N 670 -600 670 -560 {
lab=VDD}
N 460 -530 480 -530 {
lab=VDD}
N 460 -570 460 -530 {
lab=VDD}
N 460 -570 480 -570 {
lab=VDD}
N 670 -530 680 -530 {
lab=VDD}
N 680 -570 680 -530 {
lab=VDD}
N 670 -570 680 -570 {
lab=VDD}
N 580 -220 580 -190 {
lab=GND}
N 580 -250 590 -250 {
lab=GND}
N 870 -490 870 -370 {
lab=Vout}
N 870 -600 870 -560 {
lab=VDD}
N 870 -530 880 -530 {
lab=VDD}
N 880 -570 880 -530 {
lab=VDD}
N 870 -570 880 -570 {
lab=VDD}
N 870 -370 870 -280 {
lab=Vout}
N 790 -250 830 -250 {
lab=Ibias}
N 670 -600 870 -600 {
lab=VDD}
N 870 -500 870 -490 {
lab=Vout}
N 800 -470 810 -470 {
lab=#net3}
N 670 -470 740 -470 {
lab=V1}
N 720 -530 720 -470 {
lab=V1}
N 720 -530 830 -530 {
lab=V1}
N 870 -220 870 -190 {
lab=GND}
N 870 -250 890 -250 {
lab=GND}
N 480 -250 540 -250 {
lab=Ibias}
N 270 -220 270 -190 {
lab=GND}
N 260 -250 270 -250 {
lab=GND}
N 260 -250 260 -210 {
lab=GND}
N 260 -210 270 -210 {
lab=GND}
N 310 -250 370 -250 {
lab=Ibias}
N 270 -450 270 -380 {
lab=Ibias}
N 480 -350 510 -350 {
lab=GND}
N 640 -350 670 -350 {
lab=GND}
N 400 -350 440 -350 {
lab=Vinn}
N 710 -350 750 -350 {
lab=Vinp}
N 870 -420 910 -420 {
lab=Vout}
N 270 -470 270 -450 {
lab=Ibias}
N 270 -380 270 -370 {
lab=Ibias}
N 590 -250 590 -210 {
lab=GND}
N 580 -210 590 -210 {
lab=GND}
N 890 -250 890 -210 {
lab=GND}
N 870 -210 890 -210 {
lab=GND}
N 370 -310 370 -250 {
lab=Ibias}
N 270 -310 370 -310 {
lab=Ibias}
N 480 -480 540 -480 {
lab=#net1}
N 540 -530 540 -480 {
lab=#net1}
N 270 -370 270 -280 {
lab=Ibias}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 460 -350 0 0 {name=M1
W=11
L=0.75
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 500 -530 0 1 {name=M2
W=11
L=0.75
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 690 -350 0 1 {name=M3
W=11
L=0.75
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 650 -530 0 0 {name=M4
W=11
L=0.75
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 -250 0 0 {name=M5
W=20
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 850 -250 0 0 {name=M6
W=80
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 850 -530 0 0 {name=M7
W=200
L=0.6
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {res.sym} 770 -470 1 0 {name=R1
value=1000
footprint=1206
device=resistor
m=1}
C {capa.sym} 840 -470 1 0 {name=C1
m=1
value=1.4p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 480 -250 0 0 {name=p1 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 790 -250 0 0 {name=p2 sig_type=std_logic lab=Ibias}
C {opin.sym} 910 -420 0 0 {name=p5 lab=Vout}
C {ipin.sym} 400 -350 0 0 {name=p8 lab=Vinn}
C {ipin.sym} 750 -350 2 0 {name=p9 lab=Vinp}
C {ipin.sym} 270 -470 0 0 {name=p10 lab=Ibias}
C {lab_pin.sym} 580 -600 1 0 {name=p13 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 290 -250 0 1 {name=M10
W=4
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {ipin.sym} 270 -540 0 0 {name=p19 lab=VDD
}
C {ipin.sym} 270 -510 0 0 {name=p20 lab=GND
}
C {lab_pin.sym} 270 -190 3 0 {name=p21 sig_type=std_logic lab=GND}
C {lab_pin.sym} 580 -190 3 0 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} 870 -190 3 0 {name=p24 sig_type=std_logic lab=GND}
C {lab_pin.sym} 640 -350 0 0 {name=p27 sig_type=std_logic lab=GND}
C {lab_pin.sym} 510 -350 2 0 {name=p28 sig_type=std_logic lab=GND}
C {lab_pin.sym} 690 -470 3 0 {name=p11 sig_type=std_logic lab=V1}
C {title.sym} 180 -120 0 0 {name=l1 author="Darshan Shet"}
