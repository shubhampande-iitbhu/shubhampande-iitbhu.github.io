---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
---

My research sits at the intersection of device physics, compact modeling, and neuromorphic circuit design. I build physically grounded models for emerging memory technologies and use them to co-design devices and systems for energy-efficient computing. Below are my primary research areas.

---

## ReRAM for Neuromorphic Computing

Resistive random-access memory (ReRAM) exhibits rich analog switching behavior governed by coupled electrothermal and electrochemical dynamics, making it a natural candidate for synaptic devices in neuromorphic hardware. My work develops physics-based compact models that capture filament formation, thermal resistance, and cycle-to-cycle variability with sufficient fidelity for SPICE-level circuit simulation. On the system side, I explore analog compute-in-memory (CiM) architectures using ReRAM crossbar arrays, where multiply-accumulate operations are performed in the analog domain to bypass the von Neumann bottleneck. A parallel thrust focuses on electrothermal confinement as a mechanism for low-power cell operation — by engineering the thermal boundary conditions around the active filament, switching energy can be reduced without compromising endurance. At the circuit level, I design and characterize ReRAM-based synaptic devices for spiking neural networks (SNNs), including NeoHebbian learning rules that exploit the device's intrinsic physics to accelerate on-chip training convergence.

*[Figure coming soon]*

---

## Advanced CMOS & Emerging Memories

As CMOS scaling enters the nanosheet era, device modeling must account for gate-all-around electrostatics, quantum confinement, and the parasitics introduced by backside power delivery networks. Drawing on my experience at Intel, I develop and validate compact models for nanosheet transistors targeting the 14A and 10A process nodes, with emphasis on PDK accuracy for analog and mixed-signal design. In parallel, I investigate ferroelectric FET (FeFET) devices as a platform for both non-volatile memory and neuromorphic primitives — including leaky integrate-and-fire (LIF) neurons with learnable thresholds and time constants, and FeFET-based memory arrays whose reliability under row-hammer stress conditions I have characterized. Together, these efforts bridge the gap between advanced process technology and emerging application requirements.

*[Figure coming soon]*

---

## Design–Technology Co-Optimization (DTCO)

DTCO addresses the growing interdependence between process technology choices and circuit-level performance outcomes. Rather than treating device and design as sequential steps, my approach couples compact model development directly to circuit simulation, allowing reliability constraints, parasitic budgets, and process variability to inform design margins early in the development cycle. I apply this methodology to ReRAM-based memory systems and nanosheet CMOS, identifying process knobs — such as oxide thickness, doping profiles, and metal stack properties — that yield the greatest improvement in system-level figures of merit including energy per operation, area efficiency, and retention lifetime.

*[Figure coming soon]*

---

## Thermal Modeling

Accurate thermal modeling is essential for predicting the reliability and performance of both silicon devices and emerging memories. For SiGe heterojunction bipolar transistors (HBTs), I developed efficient compact thermal models that capture self-heating in multifinger configurations under realistic bias conditions, enabling circuit designers to account for electrothermal feedback without resorting to full TCAD simulations. For ReRAM, thermal resistance is not a passive parasite but an active design parameter: the spatial distribution of Joule heating within and around the conductive filament controls switching speed, power consumption, and data retention. My physics-based thermal resistance model, validated against numerical simulations and experimental data, provides a practical tool for cell-level optimization.

*[Figure coming soon]*

---

## Tools & Skills

**Simulation**
- Synopsys Sentaurus TCAD
- COMSOL Multiphysics

**EDA**
- Cadence Spectre / Virtuoso
- LTspice
- KLayout

**Programming**
- Verilog-A (compact model development)
- Python — NumPy, SciPy, Matplotlib, Pandas, Scikit-learn
- LaTeX
