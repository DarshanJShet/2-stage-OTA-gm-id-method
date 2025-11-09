# Two-Stage OTA using gm/Id Method


## 📘 Project Overview

Operational Transconductance Amplifiers (OTAs) are essential in analog and mixed-signal systems such as filters, ADCs, and sensor interfaces. This project focuses on designing a **two-stage OTA** in **130 nm CMOS technology** using the **gm/Id methodology**. The design targets **high gain**, **wide bandwidth**, **low power**, and **stable performance**. Simulation results confirm that the OTA meets the desired specifications, demonstrating an efficient and systematic approach to modern analog circuit design.

---

## ⚙️ Design Specifications

| Parameter             | Target Value | Achieved Value |
|-----------------------|---------------|----------------|
| DC Gain               | 60 dB         | 63 dB          |
| Phase Margin          | 60°           | 59°            |
| Unity Gain Bandwidth  | ≥ 80 MHz      | 103 MHz        |
| Power Consumption     | < 10 mW       | 0.29 mW        |
| CMRR                  | 60dB          | 63dB           |
| PSRR                  | -40dB         | -65dB          |
| Load Capacitance      | 4 pF          | 4 pF           |
| Supply Voltage        | 1.8 V         | 1.8 V          |
| Technology Node       | 130 nm CMOS   | -              |

---


## gm/Id Methodology

The **gm/Id methodology** is a modern analog design approach that relates a MOS transistor’s transconductance ($g_m$) to its drain current ($I_d$).  
It helps designers select the optimal operating region—**weak**, **moderate**, or **strong inversion**—to balance **gain**, **speed**, and **power efficiency**.  
By using pre-generated $g_m/I_d$ curves, transistor sizing and biasing become systematic and predictable.  
In this project, the methodology was applied to design and size MOS transistors for the **two-stage OTA**, achieving both **high gain** and **low power consumption** efficiently.

---

## 📊 Simulation Results

| Simulation Type | Description | File |
|-----------------|--------------|------|
| **AC Response** | Gain and Phase Bode plots | [gain_plot.png](Simulation%20Results/gain_plot.png) |
| **AC Response** | Phase | [phase_plot.png](Simulation%20Results/phase_plot.png) |

---

## 🧠 Key Observations

- gm/Id method simplifies analog design by using **transconductance efficiency** instead of trial-and-error sizing.
- Higher gm/Id increases gain but reduces speed — a key **design trade-off**.
- Proper **Miller compensation** ensures stability (adequate phase margin).
- Achieved design meets all target specs with minimal power.

---

## 🧰 Tools & Environment

| Tool | Purpose |
|------|----------|
| **Xschem / Ngspice** | Schematic design & circuit simulation |
| **MATLAB** | gm/Id extraction & transistor characterization |
| **SkyWater / Generic 130nm PDK** | CMOS process modeling |
---

## 📚 References

- Razavi, B. *Design of Analog CMOS Integrated Circuits*  
- Binkley, D. M. *Tradeoffs and Optimization in Analog CMOS Design*  
- Allen, P.E. & Holberg, D.R. *CMOS Analog Circuit Design*  

