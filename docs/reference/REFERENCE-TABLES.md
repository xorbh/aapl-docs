# Reference Tables & Technical Data

**Document ID**: REF-001
**Effective Date**: 2024-11-26
**Last Revised**: 2024-11-26
**Author**: Manufacturing Engineering
**Approval**: Engineering Manager

---

## Purpose

This document provides essential reference tables for manufacturing operations, including cutting speeds, feed rates, spindle speeds, tolerances, and surface finish specifications. Use these tables when operating equipment or planning production.

---

## Quick Reference: Cutting Speeds by Material (SFM)

**How to use**: Find your material, locate the tool type, read the Surface Feet per Minute (SFM). Multiply by material thickness to get spindle RPM.

### Steel (Mild, Carbon, Alloy)

| Material | HSS Tools | Carbide Inserts | Ceramic | Notes |
|----------|-----------|-----------------|---------|-------|
| Mild Steel (< 0.3% C) | 80-120 | 300-500 | 600-1200 | Most common, easy to machine |
| Medium Carbon (0.3-0.5% C) | 60-100 | 200-400 | 400-800 | Work-hardens, harder to machine |
| High Carbon (0.5-1.0% C) | 40-80 | 150-300 | 300-600 | Tool steel, very hard |
| Stainless Steel 300 Series | 30-60 | 100-200 | 200-400 | Work-hardens, tough |
| Alloy Steel (1.8% Ni, etc.) | 40-70 | 150-280 | 300-500 | Shock-resistant |
| Tool Steel | 20-50 | 80-150 | 150-300 | Very hard, slow speeds |

### Aluminum Alloys

| Material | HSS Tools | Carbide Inserts | Ceramic | Notes |
|----------|-----------|-----------------|---------|-------|
| 6061-T6 Aluminum | 200-300 | 600-1200 | 1200-2000 | Most common, easy machine |
| 7075-T73 Aluminum | 150-250 | 400-800 | 800-1500 | Stronger, slightly slower |
| Cast Aluminum | 100-200 | 300-600 | 600-1000 | Lower speeds, more abrasive |
| Pure Aluminum (1100) | 300-400 | 800-1500 | 1500-2500 | Very soft, high speed OK |

### Other Materials

| Material | HSS Tools | Carbide Inserts | Ceramic | Notes |
|----------|-----------|-----------------|---------|-------|
| Brass | 250-400 | 800-1500 | 1500-2500 | Chips easily, no coolant often |
| Copper | 80-120 | 250-500 | 500-1000 | Tough, sticky chips |
| Cast Iron | 30-60 | 100-200 | 200-400 | Abrasive, dusty, brittle |
| Titanium | 10-30 | 50-100 | 100-200 | Very difficult, slow speeds essential |
| Magnesium | 150-300 | 500-1000 | 1000-2000 | Fire hazard, special handling |

---

## Feed Rate Tables

**How to use**: Find your material and tool type, read feed per tooth (FPT). Multiply by number of flutes to get table feed rate.

### Feed Rates for Milling (per tooth)

| Material Type | Tool Type | Feed per Tooth | Notes |
|---------------|-----------|---|---|
| Aluminum | End mill (2 flute) | 0.005"-0.015" | High speed possible |
| Aluminum | End mill (4 flute) | 0.003"-0.010" | More flutes, finer finish |
| Steel | End mill (2 flute) | 0.002"-0.008" | Slower than aluminum |
| Steel | End mill (4 flute) | 0.001"-0.005" | Production speed |
| Stainless | End mill (2 flute) | 0.001"-0.004" | Work-hardening, slow feed |
| Cast Iron | End mill (2 flute) | 0.001"-0.003" | Brittle, light feeds |

### Feed Rates for Turning (per revolution)

| Material Type | Finishing | Semi-finish | Roughing | Notes |
|---------------|-----------|---|---|---|
| Aluminum | 0.005"-0.010" | 0.010"-0.020" | 0.020"-0.050" | High speeds, deep cuts |
| Steel | 0.002"-0.005" | 0.008"-0.015" | 0.015"-0.040" | Moderate speeds |
| Stainless | 0.001"-0.003" | 0.005"-0.010" | 0.010"-0.030" | Slow, light feeds |
| Cast Iron | 0.002"-0.004" | 0.005"-0.012" | 0.010"-0.025" | Moderate, light cuts |

---

## Spindle Speed Calculation

**Formula**: RPM = (SFM × 12) / (π × Diameter)

**Simplified**: RPM = (SFM × 4) / Diameter (approximately)

### Quick Reference: Common Diameters

| Tool/Part Diameter | SFM 100 | SFM 200 | SFM 300 | SFM 500 |
|---|---|---|---|---|
| 1/8" (0.125) | 7,600 | 15,200 | 22,800 | 38,000 |
| 1/4" (0.25) | 3,800 | 7,600 | 11,400 | 19,000 |
| 1/2" (0.5) | 1,900 | 3,800 | 5,700 | 9,500 |
| 3/4" (0.75) | 1,275 | 2,550 | 3,820 | 6,360 |
| 1" (1.0) | 960 | 1,920 | 2,880 | 4,800 |
| 1.5" (1.5) | 640 | 1,280 | 1,920 | 3,200 |
| 2" (2.0) | 480 | 960 | 1,440 | 2,400 |

---

## Tool Life Expectancy

**How to use**: This indicates how many parts you can produce before tool needs replacement or resharpening.

| Tool Type | Material | Pieces (Aluminum) | Pieces (Steel) | Pieces (Stainless) |
|-----------|----------|---|---|---|
| HSS End Mill | 1-piece runs | 500-2,000 | 200-800 | 100-400 |
| Carbide Insert | Long runs | 20,000-100,000 | 5,000-50,000 | 2,000-20,000 |
| Ceramic Insert | Production | 100,000+ | 20,000-100,000 | 5,000-50,000 |
| Grinding Wheel | Continuous | Depends on load | Depends on load | Depends on load |

**Factors affecting tool life:**
- Feed rate (faster feed = shorter life)
- Speed (faster speed = shorter life)
- Coolant (proper coolant extends life)
- Material hardness (harder material = shorter life)
- Depth of cut (deeper cuts = shorter life)

---

## Surface Finish Conversion Table

**How to use**: Different industries use different surface finish measurements. Use this to convert between them.

| Ra (Microinches) | Ra (Micrometers) | RMS | Finish Description | Typical Process |
|---|---|---|---|---|
| 63 | 1.6 | 90 | Very rough | Rough turning, milling |
| 32 | 0.8 | 45 | Rough | Standard turning, milling |
| 16 | 0.4 | 22 | Medium | Finish turning, grinding |
| 8 | 0.2 | 11 | Fine | Fine grinding, honing |
| 4 | 0.1 | 6 | Very fine | Precision grinding, lapping |
| 2 | 0.05 | 3 | Very fine | Honing, lapping |
| 1 | 0.025 | 1.5 | Extremely fine | Super-finishing, polishing |

**Common applications:**
- Machined surfaces: 16-32 Ra (0.4-0.8 μm)
- Bearing races: 4-8 Ra (0.1-0.2 μm)
- Precision shafts: 8-16 Ra (0.2-0.4 μm)
- General machinery: 32-63 Ra (0.8-1.6 μm)

---

## Tolerance Standards Reference

### ANSI Tolerance Grades

**How to use**: Grade H9 means tolerance + from nominal, -0. Grade h9 means tolerance - from nominal, +0.

| Grade | ±0.0005 Part | ±0.001 Part | ±0.005 Part | ±0.01 Part | Application |
|-------|---|---|---|---|---|
| H4 | ±0.0005 | ±0.001 | ±0.005 | ±0.01 | Precision gauge blocks |
| H5 | ±0.0003 | ±0.0005 | ±0.003 | ±0.005 | Precise mechanical work |
| H6 | ±0.0002 | ±0.0003 | ±0.002 | ±0.003 | Fine mechanical work |
| H7 | ±0.0001 | ±0.0002 | ±0.001 | ±0.002 | Standard precision |
| H8 | N/A | ±0.0001 | ±0.0005 | ±0.001 | Loose precision |
| H9 | N/A | N/A | ±0.0003 | ±0.0005 | Very loose tolerance |

### ISO Tolerance Grades (Preferred)

| Grade | Description | Application |
|-------|---|---|
| IT01, IT0 | Ultra-precision | Gauge blocks, precision instruments |
| IT1-IT5 | Precision | Precision mechanical work |
| IT6-IT8 | Normal | Standard manufacturing |
| IT9-IT11 | Loose | Castings, forgings |
| IT12+ | Very loose | Rough work |

---

## Common Fits (Shaft/Hole)

**How to use**: Choose fit type based on how tight/loose you want the connection.

| Fit Type | Symbol | Clearance | Use |
|----------|--------|-----------|-----|
| Loose Running | H11/c11 | Large | Uncontrolled motion, wear allowance |
| Free Running | H9/d9 | Moderate | Easy assembly, free motion |
| Close Running | H8/f7 | Small | Normal production assemblies |
| Sliding | H7/g6 | Minimum | Shaft slides easily in hole |
| Transition | H7/k6 | Zero | Can be tight or loose |
| Locational Clearance | H7/h6 | Very small | Can be disassembled easily |
| Locational Transition | H7/m6 | Zero | Tight assembly, difficult to disassemble |
| Locational Interference | H7/p6 | Negative | Press fit, permanent |
| Medium Drive | H7/s6 | Negative | Mild press fit |
| Force Fit | H7/u6 | Negative | Heavy press fit |

---

## Welding Wire & Parameter Quick Reference

### MIG Welding Amperage by Wire Diameter & Material

| Wire Size | Steel 0.035" | Steel 0.045" | Aluminum 0.035" | Stainless 0.035" |
|-----------|---|---|---|---|
| Short circuit | 50-100A | 75-150A | 40-80A | 50-100A |
| Spray transfer | 180-250A | 220-350A | N/A | 150-220A |
| Pulsed spray | 120-200A | 150-280A | 120-200A | 100-180A |

### TIG Welding Amperage by Electrode Diameter

| Electrode Diameter | Aluminum | Steel | Stainless |
|---|---|---|---|
| 1/16" | 40-80A | 50-100A | 40-80A |
| 3/32" | 80-150A | 100-180A | 80-150A |
| 1/8" | 150-250A | 180-300A | 150-250A |

---

## Coolant Specifications

### Coolant Concentration by Application

| Coolant Type | Concentration | Application | Notes |
|---|---|---|---|
| Straight Oil | 100% | Manually applied | Best lubrication, easy cleanup |
| Soluble Oil | 5-10% | CNC machining | Balances cooling and lubrication |
| Synthetic | 7-15% | High-speed machining | Better cooling, cleaner |
| Semi-synthetic | 6-12% | Mixed applications | Balance of properties |
| Grinding Fluid | 5-8% | Grinding operations | Must be changed frequently |

### Coolant Maintenance

| Task | Frequency | Notes |
|------|-----------|-------|
| Concentration check | Daily | Keep between 5-10% for most apps |
| Straining/filtering | Weekly | Remove chips and debris |
| Complete change | 30-90 days | Or when fluid deteriorates |
| pH check | Monthly | Should be 8-10 for emulsifiers |
| Appearance | Daily | Should be clear, not brown/muddy |

---

## Gage Accuracy Reference

### Gage Selection by Tolerance

| Tolerance | Gage Type | Accuracy | Notes |
|-----------|-----------|----------|-------|
| ±0.010" | Calipers | ±0.02" | OK for this tolerance |
| ±0.005" | Micrometer | ±0.001" | Recommended |
| ±0.001" | Micrometer | ±0.0001" | Required |
| ±0.0005" | Precision micrometer | ±0.0001" | High precision required |
| ±0.0001" | CMM or precision gage | ±0.00005" | For critical features |

**Rule of thumb**: Gage accuracy should be 1/10th of tolerance

---

## Temperature Conversion

| Fahrenheit | Celsius | Application |
|---|---|---|
| 32°F | 0°C | Water freezes |
| 68°F | 20°C | Room temperature (standard) |
| 100°F | 37.8°C | Body temperature |
| 212°F | 100°C | Water boils |
| 300°F | 149°C | Annealing (light) |
| 500°F | 260°C | Tempering (light) |
| 1000°F | 538°C | Stress relief |
| 1200°F | 649°C | Hardening |

**Formula**: °C = (°F - 32) × 5/9

---

## Conversion Factors

### Length
- 1 inch = 25.4 mm
- 1 foot = 304.8 mm = 0.3048 m
- 1 meter = 39.37 inches = 3.281 feet
- 1 micron (μm) = 0.001 mm = 0.00004 inches

### Weight
- 1 pound = 453.6 grams = 0.454 kg
- 1 kilogram = 2.205 pounds
- 1 ton (short) = 907.18 kg
- 1 ton (metric) = 1000 kg

### Pressure
- 1 PSI = 6.895 kilopascals (kPa)
- 1 atmosphere = 14.696 PSI = 101.325 kPa

### Speed
- 1 inch per minute (IPM) = 25.4 mm per minute
- 1 Surface Feet per Minute (SFM) = 0.3048 meters per minute

---

## Quick Problem Solver

### Issue: Tool Breaking Frequently
| Possible Cause | Check | Adjustment |
|---|---|---|
| Spindle speed too high | RPM gauge | Reduce speed by 25% |
| Feed too fast | Table feed dial | Reduce feed by 25% |
| Tool worn | Visual inspection | Replace tool |
| Material too hard | Hardness spec | Reduce depth of cut |
| Dull tool | Surface finish | Sharpen or replace |

### Issue: Poor Surface Finish
| Possible Cause | Check | Adjustment |
|---|---|---|
| Dull tool | Visual, run test | Replace or sharpen |
| Spindle speed too slow | RPM | Increase speed |
| Feed too fast | Feed dial | Reduce feed rate |
| Tool deflection | Tool runout | Check tool holder |
| Vibration | Listen/feel | Check work holding |

### Issue: Parts Out of Tolerance
| Possible Cause | Check | Adjustment |
|---|---|---|
| Spindle runout | Runout gage | Check spindle |
| Tool offset wrong | Setup verification | Re-set offset |
| Temperature growth | Cool part down | Thermal compensation |
| Work holding loose | Physical check | Re-clamp workpiece |
| Tool wear | Tool inspection | Replace tool |

---

## Document History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2024-11-26 | Initial release | Engineering |

---

## Related Documents

- WI-001: CNC Machining Operations
- WI-005: Grinding Operations
- WI-006: Welding Operations
- Equipment Specifications
- Material Selection Guide

---

**Questions?** Contact Manufacturing Engineering
