Chipalooza Challenge #2 (IHP SG13CMOS5L) — consolidated summary
A community reference pulled together from the thread + shared docs, since the details are scattered across messages and there's no single page yet. Corrections welcome — this is my read, not an official statement. Organizer = Open Circuit Design (Tim Edwards).

What it is
Crowd-sourced open-source analog / mixed-signal IP for the IHP SG13CMOS5L
process. Follows the Efabless Chipalooza #1 (sky130, 2024, ~25 circuits). Long game is a shared IP library across the three open PDKs — sky130, GF180MCU, IHP SG13CMOS5L — with blocks ported between them.

Key dates
| Milestone | Date |
| --- | --- |
| Start | Mon Jul 13, 2026 |
| Proposals due | Jul 27, 2026 — extended to Aug 10, 2026 for this first IHP run |
| Length | 17 weeks (normally 18; IHP pulled tapeout in by a week) |
| Tapeout | ~Nov 9, 2026 (fixed — late proposals just eat your design time) |

How it works (the model)
It's a shared test chip, not one-chip-per-designer (closer in spirit to
TinyTapeout than a full custom tapeout):

One carrier = a nested "openframe" Caravel harness. Up to 16 slots, each
holding one analog/mixed-signal macro with a common pinout.
You design one macro into one slot; the organizers own the top-level chip,
padframe, packaging, and tapeout.
Slot size + I/O config are TBD — will land in the template repo along with a
wrapper cell; you wire your IP up inside the wrapper. (Tim's ballpark from
Q&A: last run's slots were ≈ 520×250 µm; the chip is budgeted ~10 mm².)
Shared on-chip resources you can assume
Supplies: 1.2 V digital, 3.3 V analog.
Bandgap 1.2 V reference.
Up to 2 bandgap-referenced bias voltages + up to 2 bandgap-referenced
current sources (per the reference specs).
Up to 16 digital control/test signals via a simple SPI control/status bus.
On the first SG13CMOS5L run (pending confirmed-working test): current reference =
a 5-bit iDAC, ~50 nA–10.32 µA; voltage reference = two scales
(~0.3–2.4 V / 0.4–3.2 V steps). Anything outside this resource list needs approval.
Harness framework repo: github.com/RTimothyEdwards/sg13cmos5l_ocd_openframe
(still to be updated with defined slot areas/pins).

Rules (short version)
Public git repo, fully reproducible + usable as an SoC component.
Must be verifiable with open-source EDA (commercial tools OK to design with,
but open-source sign-off is required or it's rejected).
Apache 2.0 preferred (other permissive licenses considered).
PVT over commercial spec in post-layout (max 110 °C acceptable, wider
preferred).
Sign-off DRC + LVS required; summarize sims as plots, don't dump raw data
(but raw must be reproducible from sources).
AI may be used to design, but must not be required for an end user to
use/verify/modify the IP.
Follow the repo template (forthcoming; will include sign-off scripts).
Proposal needs: IP type, I/O list (incl. test ports), functional description,
target spec (typ/min/max + absolute limits), a measurement test plan.
Personal/institutional details + CVs + equipment list go separately (the main
proposal becomes repo documentation).
Submit proposals by email to chipalooza@opencircuitdesign.com (per Tim
Edwards).
After tapeout
Manufactured via existing shuttles (ChipFoundry, Wafer.Space, IHP), QFN
packaged, assembled onto dev PCBs with plug-in daughterboards, and distributed
to designers for characterization — measured results go back into each repo. A
consolidating website is planned.

Designs they'd especially like
Anything SoC-useful. Explicitly called out: PLL (was on the #1 list, nobody
finished one), programmable filter, more LDO / ADC variants, and high-speed
blocks — mixers, LVDS/LVPECL drivers/receivers, SERDES, USB PHY. Prefer clean
digital interfacing (enable/disable, level shifters where needed).

Ecosystem tooling shared on the thread (FSiC 2026)
Useful even though several pieces are still WIP:

IIC-JKU AMS chip template (recursive Makefiles, defined folder structure) +
tutorial — github.com/iic-jku/ihp-sg13g2-ams-chip-template /
iic-jku.github.io/ihp-sg13g2-ams-chip-template. Being ported to
sg13cmos5l; HeiChips (early Aug) reuses the same structure/targets.
IIC-OSIC-TOOLS July release targeting sg13cmos5l (~late July); notably
KLayout LVS now works without ntap/ptap devices.
Packaging: IHP/EUROPRACTICE QFN offer (Rene, FSiC slides p.19) vs. SERMA
OmPP (Simi); a bondplan auto-generator (takes a LibreLane-style
config.yaml + your GDS + the EUROPRACTICE package GDS) lives in the AMS
template's packaging/.
Note: last year's silicon-loan restriction was tied to that run's financing —
anything made now carries no such restriction.
Still TBD (worth watching)
Template repo + slot size / wrapper / pinout spec.
Final reference-block specs (iDAC / voltage ref) once tested.
KLayout callable in the IIC-OSIC-TOOLS sg13cmos5l image.
IHP-approved padframe link.
Final plain-text integration file formats for top-level assembly.