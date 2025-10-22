# Two-Stage OTA using gm/Id Method

This project presents the **design, analysis, and simulation of a Two-Stage Operational Transconductance Amplifier (OTA)** using the **gm/Id methodology** in CMOS technology. The gm/Id approach enables efficient design-space exploration by linking the device’s transconductance efficiency (gm/Id) to its biasing and sizing, allowing optimized trade-offs between **gain**, **bandwidth**, **power**, and **area**.

---

## 📘 Project Overview

The two-stage OTA is widely used in analog and mixed-signal systems such as ADCs, filters, and amplifiers.  
This design focuses on achieving:
- **High DC gain**
- **Adequate phase margin for stability**
- **Low power consumption**
- **Reasonable unity gain bandwidth (UGB)**

The OTA consists of:
1. **Input Differential Pair** with active load (first stage)
2. **Common-source second stage** to boost gain
3. **Miller Compensation Network** to enhance phase margin and ensure frequency stability

---

## ⚙️ Design Specifications

| Parameter             | Target Value | Achieved Value |
|-----------------------|---------------|----------------|
| DC Gain               | 60 dB         | 63 dB          |
| Phase Margin          | 60°           | 59°            |
| Unity Gain Bandwidth  | ≥ 80 MHz      | 103 MHz        |
| Power Consumption     | < 10 mW       | 0.29 mW        |
| Load Capacitance      | 4 pF          | 4 pF           |
| Supply Voltage        | 1.8 V         | 1.8 V          |
| Technology Node       | 130 nm CMOS   | -              |

---


## ⚙️ gm/Id Methodology

The **gm/Id methodology** is a modern design approach that relates the transconductance of a MOS transistor (**gm**) to its drain current (**Id**). This ratio serves as a key figure of merit, allowing designers to select the optimal operating region — **weak**, **moderate**, or **strong inversion** — based on desired performance parameters such as **gain**, **speed**, **linearity**, and **power efficiency**.

By using pre-generated **gm/Id curves**, transistor sizing and biasing can be carried out systematically, making the design process more intuitive and efficient compared to traditional trial-and-error techniques.

This methodology provides a structured way to perform transistor-level design, ensuring predictable trade-offs between **speed**, **power**, and **accuracy**. In this project, it is used to determine the sizing of MOS transistors for the **two-stage OTA**, ensuring that both **high gain** and **power efficiency** targets are achieved.


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

