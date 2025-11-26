# WI-001: CNC Machining Operations

**Document ID**: WI-001
**Effective Date**: 2024-11-26
**Last Revised**: 2024-11-26
**Author**: Manufacturing Engineering
**Approval**: Production Manager

---

## Purpose & Scope

This work instruction provides step-by-step procedures for operating CNC machining centers (MIL-001 through MIL-005). All operators must follow these procedures for safe, consistent, and quality production.

**Equipment Covered**:
- CNC Machining Centers (5-axis capable)
- Turning Centers
- Vertical Milling Centers

**Personnel**: All trained CNC operators and supervisors

---

## Before You Start

### Required Training & Certification
- [ ] Completed CNC Safety Certification
- [ ] Completed Equipment-Specific Training
- [ ] Passed Equipment Competency Assessment
- [ ] Current LOTO Authorization (if applicable)

### Required Materials & Tools
- Work order and setup sheet
- CNC program (USB or system memory)
- Required cutting tools
- Fixtures and work-holding devices
- Precision measurement tools (calipers, micrometers)
- Coolant and cleaning supplies
- Safety equipment (safety glasses, gloves)

---

## Pre-Operation Checklist (5-10 minutes)

### Step 1: Secure Work Area
- [ ] Machine is idle and powered off
- [ ] LOTO tag is present and verified (if applicable)
- [ ] All chips and debris from previous job removed
- [ ] Work area cleared of obstructions and tools
- [ ] Floor area around machine is clean and dry
- [ ] Adequate lighting in work area

### Step 2: Visual Equipment Inspection
- [ ] No visible cracks, damage, or rust on machine structure
- [ ] All guards and doors secure and properly latched
- [ ] No loose fasteners, bolts, or wires visible
- [ ] Coolant level adequate (fill if low, record level)
- [ ] No fluid leaks under machine or at connections
- [ ] Machine table and spindle area clean
- [ ] Tool changer/turret area free of debris
- [ ] Electrical panels closed and secure

### Step 3: Safety Systems Check
- [ ] Emergency stop button accessible and functional (test press)
- [ ] Door interlocks working (test opening and closing doors)
- [ ] Safety guards all in place and properly secured
- [ ] Spindle cover operational and closes properly
- [ ] All warning lights functional (test if possible)
- [ ] Safety mats/sensors operational (if applicable)
- [ ] Fire extinguisher accessible and in date (if required)

### Step 4: Equipment Function Test
- [ ] Power on machine - all lights and displays illuminate correctly
- [ ] CNC control system boots up without errors
- [ ] Spindle can rotate freely (no binding or unusual sounds)
- [ ] All axes move smoothly (test rapid traverse in X, Y, Z - no load)
- [ ] Coolant flow operational (observe coolant dripping from nozzles)
- [ ] Tool changer moves smoothly and indexes correctly
- [ ] Machine returns to home position accurately
- [ ] All axis limit switches functional
- [ ] Spindle brake releases properly

### Step 5: Assess Equipment Condition
- [ ] All visual inspections passed
- [ ] All safety systems verified functional
- [ ] All equipment function tests passed
- [ ] No maintenance tags or warnings present
- [ ] Machine ready for operation

**If all checks pass**: Proceed to setup
**If any check fails**: Do NOT operate machine
  - [ ] Tag machine with "OUT OF SERVICE" tag
  - [ ] Notify supervisor immediately
  - [ ] Report issue to maintenance
  - [ ] Document issue in maintenance log

### Step 6: Pre-Operation Approval
- [ ] All checklist items completed and verified
- [ ] Operator signature: _________________________ Date: ___________
- [ ] Supervisor approval (if required): _________________________ Date: ___________
- [ ] Machine ID: _________________________
- [ ] Work order number: _________________________

**Approved for operation**: ☐ Yes  ☐ No

**Notes/Concerns**:

_(Use this space to document any concerns, observations, or special conditions)_

---

## Equipment Setup (30-60 minutes)

### Step 6: Install Work-Holding Device

#### For Chuck-Type Clamping
1. Verify correct chuck for part size
2. Mount chuck on spindle nose (verify thread engagement)
3. Tighten chuck mounting nut with proper torque wrench
4. Test chuck security—gently pull, should not move

#### For Vise or Clamp Fixture
1. Install fixture on machine table
2. Verify all mounting bolts are tight
3. Check that fixture is level using level gauge
4. Test fixture security—try to wiggle, should be solid

### Step 7: Install Cutting Tools

#### Tool Gathering
1. Review setup sheet for tool list
2. Gather all required tools from tool room
3. Verify tool part numbers match setup sheet exactly
4. Inspect tools for damage, wear, or chipping
5. If tool is damaged, return to tool room and request replacement

#### Tool Installation
1. Power off machine spindle
2. Locate tool changer/turret
3. Install each tool in correct station per setup sheet
4. Verify tool seats fully (no gaps)
5. Tighten tool holders to manufacturer specification
6. Verify tools don't interfere with spindle area when turret rotates

#### Tool Offset Entry
1. Access tool offset screen in CNC control
2. For each tool, enter height offset (Z-axis):
   - Use pre-set tool heights if available
   - Manually measure tool height using edge finder if needed
   - Measure from spindle nose to tool cutting edge
   - Enter measurement into CNC system
3. Enter tool diameter compensation if required
4. Verify all tool offsets display correctly on screen

### Step 8: Load CNC Program

1. Power on CNC control system
2. Navigate to program memory or USB port
3. Locate correct program file (match work order number)
4. Load program into CNC memory
5. Verify program name displays correctly on screen
6. Review program length and complexity on display
7. Verify program calls correct number of tools

### Step 9: Program Verification (Dry Run)

1. Close all machine guards
2. Activate "Dry Run" or "Manual" mode on control
3. Set feed rate to 10% (safety setting)
4. Verify spindle is OFF
5. Press cycle start
6. Monitor machine movements:
   - All axes move smoothly
   - Tool path traces correct pattern
   - No unusual sounds or vibrations
   - Turret rotates to correct tool positions
7. When dry run completes, verify motion was correct
8. Reset machine to home position

### Step 10: Install Material & Verify Setup

1. Prepare work material per material prep procedure
2. Place work material in chuck/fixture
3. For chuck: tighten chuck firmly (hand-tight plus 1/4 turn)
4. For fixture: verify all clamps are snug
5. Verify no interference between material and spindle
6. Perform secondary dry run with material loaded (no spindle rotation)
7. Verify material doesn't slip or shift during air motion

### Step 11: Final Safety Setup

1. Reinstall all machine guards
2. Verify door interlocks function properly
3. Test emergency stop button
4. Verify all covers and shields in place
5. Check that no tools or loose objects in work area
6. Clear work area of personnel except operator

---

## Production Run (Continuous)

### Step 12: Start First Piece Production

1. Verify all setup complete and signed off by supervisor
2. Set spindle speed to specification (per setup sheet)
3. Set feed rate to 50% (production setting)
4. Position machine at cycle start position
5. Check material one more time for security
6. Press cycle start
7. Monitor first complete cycle from start to finish:
   - Spindle starts smoothly
   - Coolant flows properly
   - Tool motions are correct
   - Part removal works as designed
   - Cycle stops at end

### Step 13: First Piece Inspection

**Time**: Immediately after first piece completes
**Inspector**: Quality Inspector or trained operator

1. Cool part to room temperature (5-10 minutes)
2. Remove part from machine
3. Perform visual inspection:
   - No cracks or major defects
   - Surface finish acceptable
   - Dimensions appear correct
4. Use precision gage to measure critical dimensions:
   - Measure 3-5 critical dimensions minimum
   - Compare to drawing specifications
   - All dimensions must be within tolerance
5. Record measurements on First Article Inspection (FAI) form
6. Quality inspector approves FAI result

**If dimensions out of tolerance**:
- [ ] Stop production immediately
- [ ] Notify supervisor
- [ ] Adjust tool offsets per supervisor instruction
- [ ] Produce another first article
- [ ] Re-inspect until all dimensions pass

### Step 14: Continuous Production Monitoring

#### Every 25 Parts Produced
1. Stop machine at safe point
2. Remove one part for inspection
3. Perform visual inspection:
   - Surface finish acceptable
   - No cracks or defects
   - Edges smooth (no excessive burrs)
4. Use go/no-go gage to check critical dimensions
5. If any measurement fails, stop production and notify supervisor

#### Every Hour of Production
1. Record production data:
   - Time period (10:00 AM - 11:00 AM)
   - Number of parts produced in hour
   - Number of parts scrapped (if any)
   - Number of parts requiring rework (if any)
   - Equipment downtime minutes
   - Maintenance performed
   - Tool changes made
   - Any quality issues encountered
   - Your initials and machine ID
2. Update work order status in system
3. Visually inspect machine:
   - Coolant level still adequate
   - No unusual vibrations
   - Spindle temperature normal
   - No leaks

#### Continuous Operator Responsibilities
- Monitor machine continuously (don't leave unattended)
- Listen for unusual sounds (squealing, grinding, knocking)
- Watch for coolant degradation (foaming, discoloration)
- Verify finished parts are loading correctly
- Check for chip buildup (clear chips every 30 minutes)
- Verify tool offset stability (no drift in dimensions)
- Remove finished parts regularly (don't overfill area)

### Step 15: Tool Wear Management

#### Identifying Worn Tools
- Surface finish degrades (becomes rougher)
- Chatter marks appear on part surface
- Machine vibration increases
- Feed rate slowing with same parameters

#### Tool Replacement Procedure
1. Stop machine at safe point
2. Remove worn tool from turret
3. Return tool to tool room for resharpening/replacement
4. Install replacement tool
5. Verify new tool offsets entered correctly
6. Produce test piece to verify new tool setup
7. Inspect test piece for correct dimensions
8. Resume production

---

## End of Shift / Production Completion

### Step 16: Machine Shutdown

1. Complete current production cycle if in progress
2. Return spindle to home position
3. Power down spindle
4. Stop coolant flow
5. Allow machine to coast to stop (don't force stop)
6. Power down machine completely
7. Allow machine to cool 5-10 minutes if run hot

### Step 17: Workspace Cleanup

1. Remove all finished parts and stage for inspection
2. Remove all chips and debris from machine interior:
   - Use chip brush or soft brush (don't use compressed air)
   - Wipe down spindle area
   - Clean turret and tool changer
3. Wipe down machine exterior
4. Return all tools to tool room
5. Return fixtures to storage
6. Dispose of coolant waste properly in designated container
7. Clean work area floor
8. Remove any "DO NOT OPERATE" signs or tags

### Step 18: Production Documentation

Complete end-of-shift entry in production log:
- [ ] Work order number
- [ ] Machine ID
- [ ] Total parts produced
- [ ] Total scrap parts (with reasons)
- [ ] Total rework parts
- [ ] Downtime hours
- [ ] Tool changes made
- [ ] Final machine condition notes
- [ ] Any maintenance needed
- [ ] Your signature and time

### Step 19: Handover to Next Shift

1. If work order incomplete:
   - Prepare summary sheet for next operator
   - Note parts remaining to complete
   - Document any issues or adjustments made
   - Note material lot number still correct
   - Stage material for next shift
2. Verbal communication to next operator:
   - Explain what was completed
   - Describe any equipment issues
   - Note any tool wear concerns
   - Explain any parameter adjustments
3. Sign off on handover log with time

---

## Troubleshooting

### Problem: Machine Won't Power On
- [ ] Verify power cord connected
- [ ] Check circuit breaker
- [ ] Verify emergency stop button is not activated
- [ ] Contact maintenance if issue persists

### Problem: Coolant Not Flowing
- [ ] Check coolant level (refill if low)
- [ ] Verify coolant pump running (listen for hum)
- [ ] Check coolant lines for kinks or blockages
- [ ] Verify nozzles not clogged
- [ ] Stop machine and contact maintenance

### Problem: Tool Changer Not Moving
- [ ] Verify power is on
- [ ] Check for chip blockage in changer mechanism
- [ ] Manually move tool turret by hand to verify not locked
- [ ] Contact maintenance if issue persists

### Problem: Parts Out of Tolerance
- [ ] STOP PRODUCTION IMMEDIATELY
- [ ] Verify tool offset values entered correctly
- [ ] Check material isn't slipping in chuck
- [ ] Verify first piece inspection performed
- [ ] Contact supervisor for offset adjustment

### Problem: Unusual Vibration or Noise
- [ ] STOP MACHINE
- [ ] Check that chuck/fixture is tight
- [ ] Verify material is secure
- [ ] Check tool holder is seated properly
- [ ] Verify no debris in spindle area
- [ ] Contact maintenance if problem continues

---

## Safety Reminders

- **Never** reach into machine while spindle is rotating
- **Never** remove guards while machine is operating
- **Always** wear safety glasses in manufacturing area
- **Always** remove loose clothing, watches, jewelry
- **Always** keep hands clear of rotating spindle
- **Never** override emergency stop button
- **Always** ask for help if unsure about procedure

---

## Document History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2024-11-26 | Initial release | Manufacturing Eng |

---

**Questions or Suggestions?** Contact Manufacturing Engineering
