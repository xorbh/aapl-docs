# Troubleshooting Quick Reference Guide

**Document ID**: TSH-001
**Effective Date**: 2024-11-26
**Last Revised**: 2024-11-26
**Author**: Manufacturing Engineering & Maintenance
**Approval**: Maintenance Manager

---

## Purpose & How to Use

This quick reference helps you diagnose and fix common equipment problems quickly. Find your equipment type and problem, then follow the "Check" and "Solution" steps.

**When to call maintenance**: If solution doesn't work after 2-3 attempts, stop and call maintenance.

---

## CNC Machining Centers Troubleshooting

### Problem: Machine Won't Power On

| Check | Symptom | Solution |
|---|---|---|
| **Power connection** | No lights, no hum | Verify electrical cable is plugged in |
| **Circuit breaker** | Breaker tripped | Reset breaker, try again |
| **Emergency stop** | E-stop button active (pulled) | Release/reset E-stop button |
| **Control panel** | No response to any button | Check power cord at wall outlet |

**If still not on**: Call maintenance immediately

---

### Problem: Spindle Won't Rotate

| Check | Symptom | Solution |
|---|---|---|
| **Spindle speed dial** | Set to zero or minimum | Increase spindle speed to 1,000 RPM |
| **Spindle clutch** | No rotation at any speed | Check if spindle is in neutral (if manual clutch) |
| **Tool changer** | Machine stuck in tool change cycle | Press manual tool change button, reset cycle |
| **Spindle belt** | Loud noise instead of rotation | Stop machine, call maintenance |
| **Motor relay** | Machine powers on but spindle dead | Check relay clicked (under control panel) |

**If still not spinning**: Call maintenance

---

### Problem: Parts Dimensions Out of Tolerance

| What's wrong | Diagnostic | Solution | Estimated Time |
|---|---|---|---|
| **Dimension too large** | Measuring confirms | ① Reset tool offset smaller ② Produce test piece ③ Measure | 15 min |
| **Dimension too small** | Measuring confirms | ① Reset tool offset larger ② Produce test piece ③ Measure | 15 min |
| **Dimension drifting** | Dimensions vary over run | ① May be thermal drift ② Cool spindle 5-10 min ③ Retry | 10 min |
| **All dimensions off same amount** | Systematic error | ① Check FAI setup ② Verify tool height ③ Re-setup if needed | 30 min |

**For persistent issues**: Stop production, call supervisor and quality

---

### Problem: Tool Breaking During Production

| Likely Cause | Symptom | Quick Fix | Prevent Next Time |
|---|---|---|---|
| **Speed too high** | Tool fractures/snaps | ① Reduce spindle speed 25% ② Install new tool ③ Re-test | Use reference table |
| **Feed too fast** | Tool chips/breaks | ① Reduce feed rate 25% ② Install new tool ③ Re-test | Use recommended feeds |
| **Tool is dull** | Rough finish, then break | ① Replace tool ② Continue | Change per schedule |
| **Material too hard** | Breaking on first part | ① Verify material ID ② Reduce depth of cut 50% | Check material cert |
| **Depth of cut too deep** | Sudden breakage | ① Reduce DOC 50% ② Install new tool | Use shallow DOC |

**After tool change**: Always run 1-2 test pieces before full production

---

### Problem: Poor Surface Finish (Rough/Chatter)

| Symptom | Likely Cause | Check | Solution |
|---|---|---|---|
| **Visible ripples** | Spindle speed too slow | RPM gauge reading | Increase speed 20-30% |
| **Spiraling marks** | Chatter from tool deflection | Tool holder security | Tighten tool holder |
| **Dull/grainy texture** | Tool is dull | Visual of tool | Replace tool |
| **Consistent roughness** | Feed rate too fast | Feed dial | Reduce feed rate 20% |
| **Random rough spots** | Work vibration | Work holding clamps | Re-clamp workpiece tighter |

**Quick fix priority order**: 1) Tool replacement  2) Speed/feed adjustment  3) Re-clamp

---

### Problem: Coolant Not Flowing

| Symptom | Check | Solution | Prevent |
|---|---|---|---|
| **No coolant spray** | Coolant level low | Add coolant to fill line | Check daily |
| **Weak flow** | Filter clogged | Change coolant filter | Replace weekly |
| **Nozzles blocked** | Nozzle spray weak | Clean nozzle openings with air | Inspect daily |
| **Pump not running** | No sound from pump | Check pump power switch | Verify before startup |
| **Hose kinked** | Hose or tube pinched | Straighten hose/tubing | Inspect daily |

**No coolant = Stop machine immediately** (risk of tool breakage and material damage)

---

### Problem: Machine Sounds Wrong (Grinding, Squealing, Knocking)

| Sound | Location | Likely Cause | Action |
|---|---|---|---|
| **High-pitched squeal** | Spindle | Belt slipping or bearing | STOP machine, call maintenance |
| **Grinding noise** | Spindle | Bearing debris | STOP machine, call maintenance |
| **Knocking** | Turret | Loose tool in magazine | Stop, secure loose tool |
| **Grinding** | Table/axes | Contamination | STOP machine, call maintenance |
| **Squeaking** | Any joint | Needs lubrication | Lubricate joints |

**Any unusual sound = Stop and investigate**. Don't continue running.

---

## Grinding Machine Troubleshooting

### Problem: Wheel Not Rotating

| Check | Solution |
|---|---|
| **Spindle speed zero** | Increase spindle speed dial |
| **Spindle locked** | Check for lockout/tagout tag, notify supervisor |
| **Wheel brake engaged** | Release brake lever |
| **Power off** | Power on machine |

---

### Problem: Poor Surface Finish

| Symptom | Cause | Solution |
|---|---|---|
| **Rough, scratchy** | Wheel is glazed (polished) | Dress wheel with diamond dresser |
| **Scratches/lines** | Wheel has debris | Clean wheel, re-dress |
| **Inconsistent finish** | Spindle speed incorrect | Verify 5,500 SFM surface speed |
| **Burns/discolor** | Overheating | ① Reduce feed rate ② Check coolant flow |

**Most common fix**: Wheel dressing (see WI-005)

---

### Problem: Wheel Breaking/Cracking

| Do NOT Do | Do This |
|---|---|
| ❌ Keep using wheel | ✅ STOP machine immediately |
| ❌ Try to keep grinding | ✅ Tag machine "DO NOT USE" |
| ❌ Continue production | ✅ Call maintenance |
| ❌ Ignore cracks | ✅ Replace wheel (see WI-005) |

**Broken wheel = Safety hazard. Never operate with cracked wheel.**

---

### Problem: Workpiece Won't Hold on Magnetic Chuck

| Symptom | Check | Solution |
|---|---|---|
| **Piece slides** | Chuck power on? | Verify switch is ON |
| **Weak pull** | Chuck magnetism weak | ① Clean chuck surface ② Clean part bottom ③ Demagnetize, remagnetize |
| **Won't hold aluminum** | Material is aluminum | Aluminum is non-magnetic! Use fixture or clamps |
| **Part keeps moving** | Clamp pressure too weak | Increase clamp pressure or use vice |

**Non-ferrous metals won't work with magnetic chuck**

---

## Welding Equipment Troubleshooting

### Problem: Machine Won't Power On

| Check | Solution |
|---|---|
| **Power cord plugged in?** | Plug into wall outlet |
| **Breaker tripped?** | Reset circuit breaker |
| **Gas bottle empty?** | Replace gas bottle (MIG/TIG) |
| **Water cooler running? (TIG)** | Start water circulation pump |

---

### Problem: No Arc When Pulling Trigger

| Check | Solution |
|---|---|
| **Ground clamp connected?** | Attach ground to metal table |
| **Gun cable connected?** | Verify gun connection at machine |
| **Gas flowing? (MIG)** | Check regulator gauge for pressure |
| **Wire feeding? (MIG)** | Test wire feed without gun |
| **Electrode installed? (TIG)** | Load electrode in electrode holder |
| **Main power on?** | Verify power switch is ON |

**Most common**: Ground clamp not attached to part

---

### Problem: Weak or No Shielding Gas

| Check | Solution |
|---|---|
| **Gas bottle empty?** | Check gauge, replace bottle if pressure < 500 PSI |
| **Regulator flow set to zero** | Increase flow meter to 15-20 CFH |
| **Gas hose kinked** | Straighten hose, check for leaks |
| **Nozzle blocked (MIG)** | Clean nozzle opening |

**No gas = Weld will be porous and fail**

---

### Problem: Poor Weld Quality

| What's Wrong | Cause | Fix |
|---|---|---|
| **Porosity (holes)** | No shielding gas | Verify gas flow (see above) |
| **Spatter everywhere** | Voltage too high or feed wrong | Reduce voltage or check wire feed |
| **No fusion/cold joint** | Speed too fast or dirty material | Slow travel speed, clean material |
| **Undercut along edges** | Amperage too high | Reduce amperage, slow travel speed |
| **Uneven bead** | Unsteady torch angle | Keep torch at 90° perpendicular |

---

## General Equipment Issues

### Problem: Equipment Making Strange Smell

| Smell | Source | Action |
|---|---|---|
| **Burning smell** | Electrical system | STOP machine, call maintenance |
| **Acrid smoke** | Overheating coolant | STOP, let cool, check coolant |
| **Oil/burnt plastic** | Motor bearing or seal | STOP machine, call maintenance |
| **Chemical/sharp smell** | Spillage or fumes | STOP, investigate, ventilate area |

**If in doubt, stop the machine and investigate**

---

### Problem: Fluid Leak Under Equipment

| Fluid Color | Source | Severity | Action |
|---|---|---|---|
| **Clear/colorless** | Coolant or water | Low | Place pan, monitor, refill |
| **Brown/dark** | Oil or hydraulic fluid | Medium | STOP machine, call maintenance |
| **Reddish** | Hydraulic fluid | High | STOP machine, call maintenance immediately |
| **Green/pink** | Coolant concentrate | Low | Clean up, refill coolant |

**Prevent floor hazards**: Place absorbent mat under active leaks

---

### Problem: Equipment Overheating

| Symptom | Check | Solution |
|---|---|---|
| **Spindle hot to touch** | Temperature gauge reading | Allow 10-minute cooldown |
| **Motor smoking** | Amperage meter | STOP machine, reduce load |
| **Coolant hot/steaming** | Coolant temperature | ① Check flow ② Reduce cutting load ③ Change coolant |
| **Control box hot** | Ambient temperature | Ensure ventilation fan working |

**Never ignore overheating - can damage equipment**

---

## When to Call Maintenance

### Call Immediately (STOP Machine):
- Unusual sounds (grinding, knocking)
- Electrical sparks or smoke
- Fluid leaks (oil, hydraulic)
- Spindle won't rotate
- Tool breaking repeatedly
- Equipment overheating

### Call Within 1 Hour:
- Spindle runout increasing
- Coolant quality poor (brown/cloudy)
- Vibration increasing
- Unusual smells (not critical)

### Schedule for Next Week:
- Preventive maintenance due
- Minor wear items replacement
- Lubrication service
- General inspection

### Contact Information

| Issue | Contact | Number | Response |
|---|---|---|---|
| **Emergency** | Maintenance Supervisor | Extension 1234 | Immediate |
| **Urgent (< 1 hour)** | Maintenance Lead | Extension 1235 | 30 minutes |
| **Scheduled** | Maintenance Office | Extension 1200 | Next available |
| **After hours** | Facility Manager | Cell XXXX | 24-hour emergency |

---

## Quick Diagnostic Flowchart

```
Equipment Problem?
│
├─ Won't Power On?
│  └─ Check: Power cord, breaker, E-stop → Solution in TSH-XXX
│
├─ Machine Runs but Won't Cut?
│  └─ Check: Spindle speed, feed rate, tool installed → Adjust parameters
│
├─ Bad Surface Finish?
│  └─ Check: Tool wear, speed, feed, coolant → Change tool or adjust speed
│
├─ Dimension Out of Tolerance?
│  └─ Check: Tool offset, thermal drift, setup → Reset offset or re-setup
│
├─ Tool Breaking?
│  └─ Check: Speed, feed, material → Reduce speed/feed, verify material
│
├─ Unusual Sound?
│  └─ Check: Bearing, belt, tool security → STOP and call maintenance
│
├─ Coolant Not Flowing?
│  └─ Check: Pump, filter, hose, level → Refill, clean filter, unclog nozzle
│
└─ Overheating?
   └─ Check: Coolant flow, load, ambient temp → Reduce load, cool down, call maintenance
```

---

## Preventive Maintenance Prevents Problems

**Follow maintenance schedules to prevent most problems:**
- Daily: Equipment inspection
- Weekly: Filter changes, lubrication
- Monthly: Calibration, diagnostics
- Quarterly: Complete overhaul

See Equipment Specifications and Maintenance procedures for details.

---

## Document History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2024-11-26 | Initial release | Engineering/Maintenance |

---

## Related Documents

- Equipment Specifications (detailed specs)
- WI-001: CNC Machining Operations
- WI-005: Grinding Operations
- WI-006: Welding Operations
- Maintenance Procedures (detailed)

---

**Emergency Contact**: If equipment unsafe, STOP machine and contact Maintenance immediately.

**Safety First**: Never operate damaged or questionable equipment.
