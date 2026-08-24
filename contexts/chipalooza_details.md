Open Circuit Design "Chipalooza Challenge"

IHP SG13CMOS5L First Challenge: July 13 to November 9, 2026

Rules and Regulations
The official name of the challenge is "Chipalooza Challenge #2 (IHP SG13CMOS5L)". This challenge may be referred to as "Chipalooza Challenge #2" (the Challenge #1 being the one run by Efabless in 2024). It may also be referred to informally as "IHP (1)". All designs created for this challenge must conform to all requirements of the IHP SG13CMOS5L process (i.e., DRC, voltage limits, etc.).
The official start date for the Chipalooza Challenge #2 is Monday, July 13, 2026.
The challenge is 17 weeks long, counting from the start date and ending on the tapeout date. A normal challenge is 18 weeks; however, in this case IHP announced after the start of the challenge that they were pulling in the tapeout date by one week, a situation beyond our control.
Designers may work as individuals or as a team. It is preferable to keep teams to three people or fewer, but not a requirement.
Proposals are due two weeks from the beginning of the challenge, which is July 27, 2026. An exception will be made for the first IHP challenge because the challenge is still in the process of being organized, with proposals accepted up to two weeks after the deadline (August 10, 2026). The tapeout date is fixed, so late proposals will reduce total available design time. Proposals should be submitted to chipalooza@opencircuitdesign.com
Proposals need to provide the following:
The type of IP block
List of I/O, including test ports
Functional description of the IP block
A target specification with all relevant characteristics, including average, minimum, and maximum values (as appropriate), and absolute limits.
An outline of a test plan for validating the IP block through measurement.
List of any equipment available for use in testing (sent separately from the proposal)
CVs of the designers (sent separately from the proposal)
Note that personal and institutional details are to be left out of the main proposal document. The main proposal document ultimately will be part of the IP block's documentation in its repository.
The proposed IP block should be a block that is useful within the context of a system-on-chip (SoC). This includes all of the IP blocks that were created for the Efabless Chipalooza Challenge #1, as well as additional useful blocks like SERDES, LVPECL/LVDS drivers/receivers, PLLs, programmable filters, USB PHY, etc. Designers may assume availability of external resources in the form of (1) supply voltages at 1.2V (digital) and 3.3V (analog); (2) a bandgap voltage of 1.2V; (3) up to 2 bandgap-referenced bias voltages (see voltage reference specification); (4) up to 2 bandgap-referenced current sources (see current reference specification); (5) up to 16 digital control and test signals as needed. Any exceptions to the resource list need to be approved.
The target specification of the circuit is up to the designer, but the specification should be good enough to be attractive to an SoC designer looking for an IP block to use within a system. The design will need to meet the given specification in post-layout verification. Changes to the target specification mid-design must be approved.
Up to 16 designs can be accommodated on a single test chip. The ratio of submitted proposals to completed designs is unknown, so more proposals may be accepted than will fit on the test chip. If more designs are completed through layout and final verification than the test chip can accommodate, some designs may be delayed to the second IHP challenge (a 1-year delay).
Every design must be put in a public git repository. This may be github, gitlab, codeberg, or any other as long as it is publicly accessible. The repository must contain all files needed to completely reproduce and verify the IP block as well as use the IP block as a component in a larger system.
The design must be verifiable with open source EDA tools. This does not prevent the design from being created with commercial tools, but if the project cannot be verified as meeting specifications with open source tools, then it will be rejected. AI may be used in support of circuit design but must not be a requirement for the end user of the IP block to use, verify, or modify the IP block.
All source files needed to generate all views of the design must be available in the repository. It must be possible for anyone using the design to modify the design as needed for their purposes, using open source EDA tools.
The full behavioral description of the circuit must be documented, with documentation available in the repository. Documentation may be in any reasonable format, including plain text, markup, LibreOffice, PDF, etc. Some plain-text files (TBD) will be required for automated handling of the IP blocks for top-level chip integration.
Avoid putting unnecessary data dumps into the repository. Sign-off data is required (i.e., final DRC and LVS results). Simulation results should be summarized in plots, not raw data, but it must be possible to reproduce the raw data from the design sources in the repository on demand.
Every design must be licensed under a standard open source license, preferably Apache 2.0. Other similar licenses will be considered. In no case may a design use any sources which would violate the terms of the source's license or the Apache 2.0 license.
Every design should follow the repository template (once it has been made available). Every attempt will be made to keep the template as flexible as possible. The repository template will contain scripts for running basic sign-off verification, which must be able to run by anyone cloning the repository and show a verified result.
Post-layout designs must be verified over PVT corners for commercial spec (maximum 110C is acceptable; a wider spec is obviously preferred).
Layout will be restricted to the size of slots available on the test chip to be assembled for IHP tapeout. The slot size and I/O configuration (TBD) will be specified in the template repository, with a template layout for the "wrapper" cell around the project IP block. The designer is responsible for wiring up the IP block inside the wrapper cell.
Project designs will necessarily have to share analog pins through analog multiplexers. Any limitations on the amount of resistance between the pad and project should be noted so that multiplexer switches can be designed accordingly. Approval needs to be given for any project requiring sole access to a pin (analog or digital).
The challenge stages will be gated by reviews. These reviews include:
A. Proposal review (week of July 27)
B. Schematic design and pre-layout simulation review (week of Aug. 31)
C. Layout design and post-layout simulation review (week of Sept. 28)
D. Final design review (week of Oct. 19)
Designs not ready for tapeout by the final design review will not make it to IHP tapeout.
Awards will be given for completed designs. The award schedule will be posted once funding for the challenge is in place (expected to be around August 1).
Any updates that modify the terms of the challenge will be announced in the https://fossi-chat.org/#Chiplooza forum. There will be updates regarding specifics of layout and test which have yet to be determined (see "TBD" entries above).