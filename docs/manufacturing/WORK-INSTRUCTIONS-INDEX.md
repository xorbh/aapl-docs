# Manufacturing Work Instructions Index

**Last Updated**: 2024-11-26
**Maintained By**: Manufacturing Engineering & Quality

---

## Overview

This index provides a quick reference to all manufacturing work instructions (WI documents). Each work instruction contains detailed, step-by-step procedures for specific manufacturing operations.

**How to Use**:
1. Identify the operation you need to perform
2. Find the corresponding work instruction number below
3. Read the entire procedure before starting work
4. Follow each step carefully
5. Document completion as required

---

## Work Instructions by Operation

### Material Handling & Receiving

| WI # | Title | Page | Duration | Personnel |
|------|-------|------|----------|-----------|
| **WI-002** | Material Receiving & Inspection | 2 | 45-60 min | Receiving Clerk, QA Inspector |

**WI-002 Covers**:
- Receiving documentation verification
- Packaging integrity inspection
- Quality sample inspection
- Material acceptance/rejection
- Storage and inventory

---

### Equipment Operation

| WI # | Title | Page | Duration | Personnel |
|------|-------|------|----------|-----------|
| **WI-001** | CNC Machining Operations | 1 | Continuous | Trained CNC Operator |
| **WI-005** | Precision Grinding Operations | 3 | Continuous | Trained Grinding Operator |
| **WI-006** | Welding Operations | 4 | Varies | Certified Welder |
| **WI-009** | Cold Forging Operations | 5 | Continuous | Certified Cold Forging Operator |

**WI-001 Covers**:
- Pre-operation equipment inspection
- Equipment setup and verification
- Program loading and testing
- First piece inspection
- Production monitoring
- Tool wear management
- Machine shutdown

**WI-005 Covers**:
- Grinding wheel inspection
- Wheel dressing procedures
- Coolant system preparation
- Workpiece setup
- Grinding parameters
- Surface finish verification
- Equipment shutdown

**WI-006 Covers**:
- Welding station setup
- Material preparation
- Joint fit-up and alignment
- Parameter selection
- Welding execution
- Weld inspection
- Cleanup and finishing

**WI-009 Covers**:
- Forging machine setup
- Material preparation and lubrication
- Die installation and alignment
- Parameter selection
- Forging execution
- Part quality inspection
- Cleanup and finishing

---

### Quality Control

| WI # | Title | Page | Duration | Personnel |
|------|-------|------|----------|-----------|
| **WI-004** | First Article Inspection (FAI) | 2 | 30-60 min | QA Inspector |
| **WI-008** | In-Process Quality Inspection | 5 | 15-30 min | QA Inspector, Operator |

**WI-004 Covers**:
- First piece production
- Visual inspection procedure
- Dimensional inspection
- Functional testing
- FAI approval/rejection
- Re-testing if failed
- Documentation

**WI-008 Covers**:
- Inspection planning
- Visual defect identification
- Dimensional measurement
- Surface finish assessment
- Defect classification
- Acceptance criteria
- Documentation and trending

---

### Assembly & Testing

| WI # | Title | Page | Duration | Personnel |
|------|-------|------|----------|-----------|
| **WI-007** | Assembly & Component Testing | 4 | Varies | Assembler, Technician |

**WI-007 Covers**:
- Component preparation and verification
- Assembly procedures
- Fastener installation
- Sub-assembly verification
- Functional and performance testing
- Test data recording
- Rework procedures
- Cleaning and finishing

---

## Operation Sequence

Typical manufacturing flow and associated work instructions:

```
1. RECEIVING & INSPECTION
   └─ WI-002: Material Receiving & Inspection

2. SETUP & VERIFICATION
   └─ (WI-001, WI-005, WI-006 equipment setup procedures)

3. PRODUCTION RUN
   ├─ WI-001: CNC Machining Operations
   ├─ WI-005: Precision Grinding Operations
   ├─ WI-006: Welding Operations
   └─ WI-009: Cold Forging Operations

4. QUALITY GATES
   ├─ WI-004: First Article Inspection (FAI)
   └─ WI-008: In-Process Quality Inspection

5. ASSEMBLY (if applicable)
   └─ WI-007: Assembly & Component Testing

6. FINAL INSPECTION
   └─ WI-008: In-Process Quality Inspection (final phase)

7. SHIPMENT
   └─ Ready for delivery
```

---

## Quick Reference by Material Type

### Steel Parts
- **Receiving**: WI-002
- **Machining**: WI-001
- **Grinding** (if required): WI-005
- **Welding** (if required): WI-006
- **Cold Forging** (if required): WI-009
- **Assembly** (if required): WI-007
- **Inspection**: WI-004, WI-008

### Aluminum Parts
- **Receiving**: WI-002 (note special handling)
- **Machining**: WI-001
- **Grinding** (if required): WI-005
- **Welding** (if required): WI-006 (special procedures)
- **Cold Forging** (if required): WI-009
- **Assembly** (if required): WI-007
- **Inspection**: WI-004, WI-008

### Stainless Steel Parts
- **Receiving**: WI-002 (note special handling)
- **Machining**: WI-001
- **Grinding** (if required): WI-005
- **Welding**: WI-006 (special procedures required)
- **Assembly** (if required): WI-007
- **Inspection**: WI-004, WI-008

### Assemblies
- **Component Receiving**: WI-002
- **Component Machining/Processing**: WI-001/WI-005/WI-006
- **First Article of Assembly**: WI-004
- **Assembly**: WI-007
- **Final Inspection**: WI-008

---

## Document Details

### WI-001: CNC Machining Operations

**File**: `WI-001-CNC-Machining.md`
**Scope**: CNC machining centers (MIL-001 through MIL-005)
**Equipment**: 5-axis CNC, Turning Centers, Vertical Milling
**Duration**: Full shift operation
**Critical Sections**:
- Pre-operation Checklist (Step 1)
- Equipment Setup (Steps 6-11)
- Production Monitoring (Step 14)
- Safety Reminders

---

### WI-002: Material Receiving & Inspection

**File**: `WI-002-Material-Receiving.md`
**Scope**: All incoming raw materials and components
**Duration**: 45-60 minutes per delivery
**Critical Sections**:
- Documentation Review (Step 1)
- Quality Sample Inspection (Step 4)
- Acceptance/Rejection Decision (Step 5)
- Storage Organization (Step 8)

---

### WI-004: First Article Inspection (FAI)

**File**: `WI-004-FAI.md`
**Scope**: First part produced on any new work order
**Duration**: 30-60 minutes
**Critical Sections**:
- First Piece Production (Step 1)
- Visual & Dimensional Inspection (Step 3)
- Functional Testing (Step 4)
- Approval Decision (Step 5)

---

### WI-005: Precision Grinding Operations

**File**: `WI-005-Grinding-Operations.md`
**Scope**: Grinding systems (MIL-020, MIL-021)
**Equipment**: Surface, Cylindrical, Tool & Cutter Grinders
**Duration**: Full shift operation
**Critical Sections**:
- Wheel Inspection & Change (Step 2)
- Coolant System Preparation (Step 4)
- Grinding Operation (Step 7)
- Surface Finish Verification (Step 8)

---

### WI-006: Welding Operations

**File**: `WI-006-Welding-Operations.md`
**Scope**: MIG, TIG, and Stick welding stations (ASM-001 to ASM-003)
**Duration**: Varies by weld type
**Critical Sections**:
- Material Preparation (Step 2)
- Parameter Setup (Step 3)
- Welding Execution (Step 5)
- Weld Quality Inspection (Step 6)

---

### WI-007: Assembly & Component Testing

**File**: `WI-007-Assembly-Testing.md`
**Scope**: Component assembly and functional testing
**Duration**: Varies by assembly complexity
**Critical Sections**:
- Component Verification (Step 1)
- Assembly Procedures (Steps 2-4)
- Functional Testing (Step 5)
- Rework (Step 6)

---

### WI-008: In-Process Quality Inspection

**File**: `WI-008-Quality-Inspection.md`
**Scope**: Visual, dimensional, and functional inspections
**Duration**: 15-30 minutes per inspection point
**Critical Sections**:
- Inspection Planning (Step 1)
- Visual Inspection (Step 2)
- Dimensional Inspection (Step 3)
- Defect Classification (Step 5)
- Disposition & Documentation (Step 6)

---

### WI-009: Cold Forging Operations

**File**: `WI-009-Cold-Forging-Operations.md`
**Scope**: Cold forging presses and multi-station forging systems
**Duration**: Full shift operation
**Critical Sections**:
- Pre-Operation Setup (Step 1)
- Material Preparation (Step 2)
- Die Setup & Installation (Step 3)
- Machine Parameter Setup (Step 4)
- Forging Execution (Step 6)
- Part Quality Inspection (Step 7)

---

## Training Requirements

### To Use WI-001 (CNC Machining)
- [ ] Completed CNC Safety Certification
- [ ] Completed Equipment-Specific Training
- [ ] Passed Equipment Competency Assessment

### To Use WI-005 (Grinding)
- [ ] Completed Grinding Safety Certification
- [ ] Completed Equipment-Specific Training
- [ ] Passed Grinding Competency Assessment

### To Use WI-006 (Welding)
- [ ] AWS Certified Welder (or equivalent)
- [ ] Material-Specific Certification
- [ ] Completed Equipment-Specific Training

### To Use WI-009 (Cold Forging)
- [ ] Cold Forging Operator Certification
- [ ] Material-Specific Training
- [ ] Completed Equipment-Specific Training
- [ ] Current Safety Certification

### To Use WI-004 & WI-008 (Inspection)
- [ ] Completed Quality Inspection Training
- [ ] Proficient with measurement tools
- [ ] Familiar with engineering drawings

### To Use WI-002 (Receiving)
- [ ] Completed Material Handling Training
- [ ] Familiar with Inventory System
- [ ] Completed Quality Inspection Training

### To Use WI-007 (Assembly)
- [ ] Completed Assembly Training
- [ ] Familiar with engineering drawings
- [ ] Completed Testing Equipment Training (if applicable)

---

## Safety Reminders (General)

All work instruction procedures include specific safety sections. Key safety principles:

- **Never** operate equipment without proper training and certification
- **Always** wear appropriate PPE (safety glasses, gloves, steel-toed shoes, etc.)
- **Always** follow lockout/tagout (LOTO) procedures before maintenance
- **Always** keep guards in place during equipment operation
- **Never** reach into moving machinery
- **Always** report hazards and incidents to your supervisor
- **Ask for help** if unsure about any procedure

---

## Revision History

| WI # | Document | Date | Version | Change |
|------|----------|------|---------|--------|
| 001 | CNC Machining | 2024-11-26 | 1.0 | Initial release |
| 002 | Material Receiving | 2024-11-26 | 1.0 | Initial release |
| 004 | FAI | 2024-11-26 | 1.0 | Initial release |
| 005 | Grinding Operations | 2024-11-26 | 1.0 | Initial release |
| 006 | Welding Operations | 2024-11-26 | 1.0 | Initial release |
| 007 | Assembly & Testing | 2024-11-26 | 1.0 | Initial release |
| 008 | Quality Inspection | 2024-11-26 | 1.0 | Initial release |
| 009 | Cold Forging Operations | 2024-11-26 | 1.0 | Initial release |

---

## Document Control

**Document Owner**: Manufacturing Engineering
**Quality Manager Approval**: _________________________ Date: _________
**Operations Manager Approval**: _________________________ Date: _________

For changes or questions about any work instruction:
- Contact: Manufacturing Engineering Department
- Email: engineering@company.com
- Phone: [number]
- Location: Building 1, Room 150

---

**Last Updated**: November 26, 2024
**Next Review Date**: May 26, 2025

For the most current version of work instructions, consult this index and the individual WI documents in the manufacturing folder.
