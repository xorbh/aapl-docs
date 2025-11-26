# MkDocs Navigation Configuration Options

## Current Setup (Simplified - Auto-Discovery)

The mkdocs.yml now uses **automatic navigation discovery**. No more manual updates needed!

---

## Three Options for Navigation in MkDocs

### Option 1: ✅ **Automatic Discovery (RECOMMENDED - Current Setup)**

**How it works:**
- Remove the `nav:` section entirely
- MkDocs automatically discovers all `.md` files
- Navigation built from directory structure
- Page titles from markdown `# Header` or filename

**mkdocs.yml:**
```yaml
site_name: Manufacturing Documentation Portal
theme:
  name: material
# No nav: section needed
# Files auto-discovered from docs/ folder
```

**Pros:**
- ✅ No manual updates needed
- ✅ New files automatically included
- ✅ Simplest maintenance
- ✅ Built-in feature (no plugins)

**Cons:**
- ❌ Navigation order is alphabetical
- ❌ Less customization control
- ❌ Can't easily customize section names
- ❌ Harder to control documentation structure

**When to use:**
- Simple documentation structures
- Frequently adding new files
- Team doesn't need strict navigation control

---

### Option 2: **Manual Navigation (Maximum Control)**

**How it works:**
- Explicitly define entire navigation structure
- Full control over order and naming
- Must update mkdocs.yml when adding new pages

**mkdocs.yml:**
```yaml
site_name: Manufacturing Documentation Portal
theme:
  name: material
nav:
  - Home: index.md
  - Manufacturing:
      - Production Processes: manufacturing/production-processes.md
      - Work Instructions:
          - Index: manufacturing/WORK-INSTRUCTIONS-INDEX.md
          - WI-001 CNC: manufacturing/WI-001-CNC-Machining.md
          - WI-002 Material: manufacturing/WI-002-Material-Receiving.md
          # ... more items
```

**Pros:**
- ✅ Complete control over navigation order
- ✅ Can customize section and page names
- ✅ Professional appearance
- ✅ Best for customer-facing docs

**Cons:**
- ❌ Manual updates required for new files
- ❌ More maintenance burden
- ❌ Risk of documentation getting out of sync
- ❌ More YAML to maintain

**When to use:**
- Professional/customer-facing documentation
- Stable documentation structure
- Team wants strict navigation control
- Fixed set of pages that rarely changes

---

### Option 3: **Hybrid with Awesome Pages Plugin**

**How it works:**
- Use plugin to auto-generate nav from folder structure
- Can customize with `.pages` files in folders
- Better control than pure auto-discovery
- Uses community plugin

**Installation:**
```bash
pip install mkdocs-awesome-pages-plugin
```

**mkdocs.yml:**
```yaml
site_name: Manufacturing Documentation Portal
theme:
  name: material
plugins:
  - search
  - awesome-pages

# No nav: section needed
```

**Create `.pages` file in manufacturing folder:**
```yaml
# manufacturing/.pages
nav:
  - Production Processes
  - Equipment Maintenance
  - Work Instructions:
    - WORK-INSTRUCTIONS-INDEX.md
    - WI-001-CNC-Machining.md
    - WI-002-Material-Receiving.md
    # ... more
```

**Pros:**
- ✅ Automatic discovery with customization
- ✅ New files auto-included
- ✅ Control via `.pages` files
- ✅ Good balance of automation and control

**Cons:**
- ❌ Requires plugin installation
- ❌ Need to maintain `.pages` files
- ❌ More complex setup
- ❌ Additional dependencies

**When to use:**
- Large documentation with multiple sections
- Want automation but need some control
- Team occasionally adds new pages
- Professional structure needed

---

## Comparison Table

| Feature | Auto-Discovery | Manual Nav | Awesome Pages |
|---------|---|---|---|
| **Setup Complexity** | Very Easy | Medium | Complex |
| **Maintenance Burden** | None | High | Low |
| **New Files Auto-Added** | ✅ Yes | ❌ No | ✅ Yes |
| **Navigation Control** | ❌ Low | ✅ High | ✅ Medium |
| **Plugin Required** | ❌ No | ❌ No | ✅ Yes |
| **Best For** | Small/Growing Docs | Corporate/Public | Large/Complex |

---

## Current Recommendation

**For your manufacturing documentation:**

### Use **Option 1: Automatic Discovery**
- Your docs are growing (8 new work instructions)
- You'll be adding more procedures frequently
- Team doesn't need strict navigation control
- Simplest maintenance going forward

### File Structure (Auto-Discovered Order):

```
docs/
├── index.md                                  # Home
├── engineering/
│   ├── api-reference.md                     # Equipment Operations
│   ├── architecture.md
│   └── diagrams.md
├── manufacturing/
│   ├── WORK-INSTRUCTIONS-INDEX.md
│   ├── WI-001-CNC-Machining.md
│   ├── WI-002-Material-Receiving.md
│   ├── WI-004-FAI.md
│   ├── WI-005-Grinding-Operations.md
│   ├── WI-006-Welding-Operations.md
│   ├── WI-007-Assembly-Testing.md
│   ├── WI-008-Quality-Inspection.md
│   ├── equipment-maintenance.md
│   ├── production-processes.md
│   └── production-scheduling.md
├── operations/
│   ├── checklists.md
│   └── onboarding.md
├── product/
│   ├── overview.md
│   └── roadmap.md
├── quality/
│   └── quality-standards.md
├── safety/
│   └── workplace-safety.md
└── supply-chain/
    └── procurement.md
```

---

## How to Switch Later

If you change your mind:

### From Auto-Discovery → Manual Navigation
1. Generate manual nav from current structure
2. Add `nav:` section to mkdocs.yml
3. Manually list all files in desired order

### From Manual Navigation → Auto-Discovery
1. Delete `nav:` section from mkdocs.yml
2. Files auto-discovered immediately
3. Order becomes alphabetical by filename

### From Auto-Discovery → Awesome Pages Plugin
1. Install plugin: `pip install mkdocs-awesome-pages-plugin`
2. Add to mkdocs.yml plugins
3. Create `.pages` files for customization
4. Keep no `nav:` section

---

## Summary

**Bottom Line:** With automatic navigation, you **never need to manually update mkdocs.yml again**. Just:

1. ✅ Create new work instruction markdown files
2. ✅ Place them in the `manufacturing/` folder
3. ✅ They automatically appear in navigation

No more manual YAML editing required!
