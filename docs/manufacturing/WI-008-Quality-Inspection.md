# WI-008: In-Process Quality Inspection

**Document ID**: WI-008
**Effective Date**: 2024-11-26
**Last Revised**: 2024-11-26
**Author**: Quality Engineering
**Approval**: Quality Manager

---

## Purpose & Scope

This work instruction establishes the procedures for conducting in-process and final quality inspections during manufacturing. Inspections verify that parts meet engineering specifications before shipment and identify defects early to prevent wasted labor.

**Operations Covered**:
- Visual inspections
- Dimensional inspections
- Surface finish inspection
- Defect identification and classification
- Documentation and disposition

**Personnel**: Quality inspectors, operators, supervisors

---

## Before You Start

### Required Training & Certification
- [ ] Completed Quality Inspection Training
- [ ] Proficient with precision measurement tools
- [ ] Familiar with engineering drawings
- [ ] Completed Defect Classification Training
- [ ] Competent in inspection equipment operation

### Required Tools & Materials

**Measurement Equipment**:
- Digital calipers
- Micrometers (various ranges)
- Depth gages
- Surface roughness gage (if required)
- Go/no-go gages
- Precision straightedge
- Granite inspection plate

**Inspection Aids**:
- Visual light source or lamp
- Magnifying glass (for fine inspection)
- Surface finish samples (for comparison)
- Defect reference samples
- Clean cloth and lens paper

---

## Step 1: Inspection Planning & Preparation

### Inspection Schedule

**Inspection points in production**:
1. **First Article Inspection (FAI)**: Before full production (WI-004)
2. **In-Process Inspection**: Every 2 hours or per specification
3. **Final Inspection**: 100% of parts before shipment

### Inspection Frequency by Part Type

**Standard Parts** (high volume, proven process):
- First Article: YES
- In-Process: Every 2 hours
- Final: 10% sample inspection (AQL 1.0)

**Custom/Complex Parts** (lower volume, new process):
- First Article: YES
- In-Process: Every hour or every 50 parts
- Final: 100% inspection

**Critical Safety Parts** (structural, safety-critical):
- First Article: YES
- In-Process: Every 1 hour or every 25 parts
- Final: 100% inspection

### Preparation Steps

1. **Review work order**:
   - Part name and number
   - Engineering drawing revision
   - Quantity produced
   - Special inspection requirements
   - Customer specifications

2. **Review engineering drawing**:
   - Identify critical dimensions (marked or noted)
   - Identify non-critical dimensions
   - Review surface finish requirements
   - Note any special test requirements
   - Check tolerance zones

3. **Prepare inspection station**:
   - Clean inspection area
   - Ensure adequate lighting
   - Arrange measurement tools
   - Verify tools are calibrated (check calibration labels)
   - Set up inspection documentation

4. **Prepare inspection form**:
   - Work order number
   - Part number and description
   - Quantity to inspect
   - Drawing revision
   - Date and time
   - Inspector name

---

## Step 2: Visual Inspection

### Surface Condition Assessment

1. **Examine overall appearance**:
   - Part shape and geometry correct
   - No obvious cracks or breaks
   - No major deformation
   - Expected color/finish for material

2. **Surface defects - check for**:
   - Cracks (linear breaks in material)
   - Chips (small broken pieces)
   - Dents (indentations in surface)
   - Scratches (surface marks)
   - Rust or corrosion (discoloration or pitting)
   - Burn marks (dark discoloration from heat)
   - Tool marks (visible machine chatter)

3. **Machining quality**:
   - Surface finish appears smooth or per specification
   - No obvious chatter marks
   - Edges sharp or deburred as required
   - No excessive burrs

4. **Assembly quality** (if assembled):
   - All components present
   - Components properly aligned
   - Fasteners all present and tight
   - No gaps between components

### Defect Documentation

If visual defects found:
1. **Describe defect clearly**:
   - Location on part
   - Type of defect
   - Size/extent of defect
   - Severity assessment
   - Photograph if available

2. **Determine if acceptable**:
   - Minor surface scratch: May be ACCEPTABLE
   - Small dent not affecting function: May be ACCEPTABLE
   - Crack affecting function: NOT ACCEPTABLE
   - Missing component: NOT ACCEPTABLE

3. **Continue or stop inspection**:
   - If acceptable, continue dimensional inspection
   - If not acceptable, mark as REJECT and stop

---

## Step 3: Dimensional Inspection

### Dimension Selection & Strategy

1. **Critical dimensions** (must verify):
   - Dimensions marked "CRITICAL" on drawing
   - Dimensions affecting fit or assembly
   - Dimensions affecting function
   - Dimensions with tightest tolerances
   - **Always measure all critical dimensions**

2. **Secondary dimensions** (usually verify):
   - Non-critical overall dimensions
   - Dimensions affecting appearance
   - Dimensions with looser tolerances
   - **Sample inspect for trends**

3. **Measurement tool selection**:
   - For tolerance ±0.01": Use calipers
   - For tolerance ±0.005" to ±0.01": Use calipers or micrometer
   - For tolerance ±0.001": Use micrometer
   - For tolerance < ±0.001": Use precision gage or CMM

### Measurement Procedure

1. **Prepare for measurement**:
   - Allow part to cool to room temperature
   - Clean part surface (wipe with dry cloth)
   - Clean measurement tool
   - Zero measurement tool (for micrometers)

2. **Measure each dimension**:
   - Position tool perpendicular to dimension
   - Read measurement carefully
   - Record to precision of tool used:
     - Calipers: 0.01"
     - Micrometer: 0.001"
   - Record on inspection form

3. **Multiple measurements**:
   - For critical dimensions, measure 3-5 locations
   - Average measurements
   - Look for variation or trend
   - If significant variation, investigate cause

4. **Compare to specification**:
   - Lower tolerance limit: _______
   - Measurement: _______
   - Upper tolerance limit: _______
   - All measurements within limits: **PASS**
   - Any measurement outside limits: **FAIL**

### Handling Out-of-Tolerance Dimensions

1. **If single dimension fails**:
   - Re-measure to verify not measurement error
   - If still out of tolerance:
     - Mark part as REWORK or SCRAP per supervisor
     - Notify production supervisor
     - Do not continue inspecting this part

2. **If trend detected** (dimensions drifting):
   - Notify production supervisor immediately
   - May indicate tool wear or setup drift
   - Supervisor may adjust process
   - Re-inspect parts produced since last good inspection

3. **If dimension marginal** (near tolerance limit):
   - Double-check measurement
   - If confirmed near edge, note for shipping/use
   - May require customer approval if shipped

---

## Step 4: Surface Finish Inspection (if required)

### Visual Assessment

1. **Run finger across surface** (if appropriate):
   - Smooth surface: Ra <0.8 acceptable
   - Slight texture: Ra 0.8-3.2 acceptable
   - Rough surface: Ra >3.2, may be unacceptable

2. **Observe under light**:
   - High-gloss finish (polished)
   - Medium finish (brushed)
   - Dull finish (as-ground)
   - Match expected finish for material

3. **Compare to reference samples**:
   - If reference samples available, compare side-by-side
   - Visual appearance should match
   - Document if acceptable or not

### Surface Roughness Gage Measurement (if required)

1. **Calibrate gage per manufacturer instructions**:
   - Zero on calibration standard
   - Verify reading accuracy

2. **Measure surface**:
   - Place gage perpendicular to surface
   - Measure in direction of feed marks if machined
   - Take minimum 3 measurements
   - Average measurements

3. **Compare to specification**:
   - Drawing specifies Ra value (e.g., Ra 0.8)
   - Measurement must equal or be better than specification
   - Record measurement
   - PASS or FAIL status

---

## Step 5: Defect Classification

### Defect Categories

**CRITICAL DEFECTS**:
These make the product unsuitable for use:
- Missing components
- Cracks affecting structural integrity
- Out-of-tolerance dimension affecting function
- Leaks in sealed assembly
- Non-functional mechanical component
- Safety hazard defects

**MAJOR DEFECTS**:
These significantly affect usability but product may function:
- Missing non-critical fastener
- Out-of-tolerance non-critical dimension
- Surface finish significantly below specification
- Cosmetic damage affecting appearance but not function
- Loose non-critical connection

**MINOR DEFECTS**:
These have minor impact on usability:
- Small surface scratch not affecting appearance significantly
- Minor cosmetic damage
- Dimension slightly out of tolerance but acceptable for use
- Minor tooling marks

**NO DEFECT**:
- All specifications met
- Part acceptable for use/shipment

### Acceptance Criteria (AQL Standards)

**AQL 1.0** (Normal level for standard parts):
- Sample size: √(lot size)
- Accept: ≤ acceptance number
- Reject: > acceptance number

**AQL 0.65** (Tighter level for important parts):
- Stricter acceptance
- Fewer defects allowed

**AQL 4.0** (Looser level for non-critical parts):
- More lenient acceptance
- More defects allowed

---

## Step 6: Disposition & Documentation

### Acceptance Decision

**Part ACCEPTED if**:
- ✓ Visual inspection PASS
- ✓ All critical dimensions within tolerance
- ✓ No critical defects
- ✓ Surface finish acceptable (if applicable)
- ✓ Functional tests pass (if applicable)

**Part REJECTED if**:
- ✗ Any critical dimension out of tolerance
- ✗ Critical defects present
- ✗ Functional test fails
- ✗ Surface finish unacceptable

**Part CONDITIONAL if**:
- Secondary dimensions slightly out of tolerance
- Minor cosmetic defects
- Part may be acceptable for customer approval

### Documentation

1. **Complete Inspection Report**:
   - Work order number
   - Part number and description
   - Quantity inspected
   - Date and time
   - Inspector name and signature
   - Inspection results (PASS/FAIL/CONDITIONAL)
   - Any defects noted
   - Dimension measurements recorded
   - Surface finish measurements (if applicable)
   - Disposition (ACCEPT/REJECT/CONDITIONAL)

2. **If REJECTED**:
   - Create Non-Conformance Report (NCR):
     - Describe defect clearly
     - Identify cause (if known)
     - Recommend disposition (SCRAP/REWORK)
     - Assign for rework if applicable
   - Mark part clearly as "REJECTED"
   - Segregate from accepted parts
   - Notify production supervisor

3. **If CONDITIONAL**:
   - Note conditions clearly
   - Flag for management review
   - Do not ship without approval
   - Document customer approval if given

4. **If ACCEPTED**:
   - Apply "INSPECTED & APPROVED" stamp
   - Record inspection in system
   - Move to staging area for shipment
   - File documentation

---

## Step 7: Statistical Tracking & Trending

### Data Collection

For each inspection performed, record:
1. **Part information**:
   - Part number
   - Production date
   - Quantity produced
   - Quantity inspected

2. **Inspection results**:
   - Number of defects found
   - Type of defects
   - Defect location
   - Acceptance rate (% passing)

3. **Trend information**:
   - Same part, multiple inspections
   - Pattern of defects
   - Improvement or deterioration

### Analysis & Reporting

1. **Weekly Quality Report**:
   - Acceptance rate by part type
   - Defect frequency by type
   - Trends (improving/declining)
   - Recommendations for improvement

2. **Management Review**:
   - Present trends monthly
   - Identify chronic quality issues
   - Propose corrective actions
   - Track effectiveness of corrections

---

## Step 8: Rework & Scrap Disposition

### Rework Process

For parts marked for rework:
1. **Move to rework station**
2. **Identify defect** and corrective action
3. **Perform rework** (grinding, polishing, etc.)
4. **Re-inspect** after rework
5. **If acceptable**: Accept and ship
6. **If still defective**: Scrap

### Scrap Disposition

For parts that cannot be reworked:
1. **Identify as SCRAP**
2. **Sort for material recovery** if applicable:
   - Steel scrap
   - Aluminum scrap
   - Other material types
3. **Segregate by material**
4. **Ship to scrap processor**
5. **Document scrap** in work order
6. **Record cost** for quality tracking

---

## Common Defects & Causes

| Defect | Typical Cause | Prevention |
|--------|---------------|-----------|
| Out of tolerance (too large) | Tool offset too small | Verify offsets before FAI |
| Out of tolerance (too small) | Tool offset too large | Verify offsets before FAI |
| Rough surface finish | Dull tool or slow feed | Replace tools per schedule |
| Chatter marks | Spindle speed too low | Verify spindle speed correct |
| Burrs or sharp edges | Insufficient edge breaking | Deburr or use fine feed |
| Cracks | Tool forced or brittle material | Verify tool depth of cut |
| Rust/corrosion | Water in system | Keep machine dry |

---

## Safety Reminders

- **Sharp edges**: Watch for burrs and sharp machined edges
- **Hot parts**: Allow parts to cool before handling
- **Heavy parts**: Use lift equipment for parts over 30 lbs
- **Precision tools**: Handle measurement tools carefully
- **Measurement accuracy**: Never force parts into gages

---

## Troubleshooting

### Problem: Inconsistent Measurements
- [ ] Verify measurement tool is calibrated
- [ ] Verify proper tool selection for tolerance
- [ ] Check that part is measured at same location
- [ ] Verify part is at room temperature

### Problem: Many Parts Failing Same Dimension
- [ ] Verify drawing is latest revision
- [ ] Contact production—may indicate tool wear
- [ ] Re-measure with different tool to confirm
- [ ] Investigate process change or equipment issue

### Problem: Defect Type Not Seen Before
- [ ] Document clearly with photos if possible
- [ ] Notify Quality Manager
- [ ] Investigate root cause
- [ ] Update defect training if new type

---

## Document History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2024-11-26 | Initial release | Quality Engineering |

---

**Questions or Suggestions?** Contact Quality Engineering Department
