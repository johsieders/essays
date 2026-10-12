Here is my point-by-point response to the reviewers’ comments.

---

# Reviewer A

### Main issues

1. **The aviation sequence is historically misleading.**  
   **Accept.** You are entirely right on the history: the Air Commerce Act (1926) established airworthiness certification and licensing fifty years before NASA’s ASRS (1976).  
   *Fix:* Strip the claim that aviation historically unfolded in this sequence. Reframe it strictly as a proposed policy logic for AI, using aviation institutions as conceptual building blocks rather than a historical blueprint.

2. **Phase I’s legal mechanism is unresolved.**  
   **Accept.** Calling a duty “mandatory” while relying solely on procurement incentives and insurance carrots is a contradiction; statutory FOIA exemptions and evidentiary shields cannot be created by executive fiat.  
   *Fix:* Explicitly anchor Phase I in a legislative vehicle (e.g. an amendment to an existing authorization bill or standalone transparency statute) that grants subpoena/audit power and statutory disclosure protection, or candidly downgrade Phase I to a "voluntary safe-harbour registry" with federal contracting conditions.

3. **Scope contradiction (compute threshold vs hazard/reach).**  
   **Accept.** Tripping over compute in I.1 while disavowing capability metrics in the rationale and promoting reach in the scope section is a muddle.  
   *Fix:* Unify the trigger strictly around **hazard and operational reach**: autonomy (consecutive unreviewed actions) $\times$ tool permissions (external network egress, shell access, financial endpoints), regardless of training FLOPs or origin.

4. **Technical claims too strong ("keep learning", "safety training suppressed", monitor efficacy).**  
   **Accept.**  
   *Fix:*  
   - Replace "keep learning after certification" with "exhibit state drift via tool integration, expanded context, and external memory."  
   - Change "safety training suppressed" to "safety guardrails and refusal filters suppressed at inference or fine-tuning."  
   - Change "would have caught" to "was designed to detect, though detection efficacy in practice remains probabilistic."

5. **Phase II treats hypotheses as incident-derived requirements.**  
   **Accept.** The reference incident demonstrated isolation breakdown and absent telemetry; it did not establish correlated model failure or evaluation-awareness as the root cause.  
   *Fix:* Disentangle incident-derived fixes (sandboxing, telemetry, human circuit-breakers) from structural defense-in-depth hypotheses (cross-lineage supervision, evaluation-gaming), labelling the latter clearly as systemic risks rather than direct postmortem findings.

6. **Supervision trust boundary and 13-hour escalation speed.**  
   **Accept.** 13 hours is ample time for a security operations centre (SOC) if an alarm sounds; it is only "fast" if monitoring is unstaffed. Furthermore, software supervisors share the operating fabric with the agent unless isolated at the hypervisor/network level.  
   *Fix:* Clarify that the supervisor and gateway must sit on an isolated administrative plane (kernel/network hypervisor separation), and reframe the 13-hour window as an argument for automated alerting and automated triage rather than instant autonomous shutdown.

### Style and balance
**Accept.** The repetitive self-auditing ("honest assessment") and caveat paragraphs bloat the chapter.  
*Fix:* Consolidate reservations into a single structured limitations section; replace the speculative 12–24 month political claims with sober institutional prerequisites; add a dated, source-qualified chronology at the start.

---

# Reviewer B

### Factual errors
- **Kaniska reign date:**  
  **Refute.** This critique refers to reference paper `9-russell-on-useless-knowledge.md`, which is background reading, not part of the chapter under review.
- **CIRCIA scope:**  
  **Accept.**  
  *Fix:* State explicitly that CIRCIA currently covers only designated critical infrastructure entities, so applying an analogous standard to AI labs requires new statutory definitions.

### Logical gaps
1. **Labs "already do informally" is under-evidenced:**  
   **Accept.**  
   *Fix:* Remove the blanket assertion. Replace it with reference to published lab commitments (e.g. Frontier Model Forum safety frameworks) while noting that informal internal adherence has historically been uneven and non-binding.
2. **Monitoring auditability (I.3):**  
   **Accept.** A mandated monitor without testable audit criteria will degenerate into logging empty health checks.  
   *Fix:* Define minimum telemetry specs (retained immutable audit trails of external HTTP/socket calls and shell executions) and mandate periodic third-party configuration verification.
3. **Supervisor lineage underspecified (II.2):**  
   **Accept.** Cosine similarity is inadequate (orthogonal embeddings can still share logical failure modes), but "lineage" needs operational teeth.  
   *Fix:* Define independence operationally: distinct pre-training data corpora, separate fine-tuning architectures, and distinct base-model developers, delegating technical compliance test batteries to NIST/CAISI benchmarks.
4. **Why interpretability tools fail on evaluation-awareness (II.5):**  
   **Accept.**  
   *Fix:* Add a concise note: linear probes and circuit analysis identify internal representations of known concepts, but they struggle with situational awareness that is dynamically composed or distributed across complex reasoning traces.

### Stylistic weaknesses
- **Overlong sentences, passive voice, redundancies:**  
  **Accept.**  
  *Fix:* Break up nested em-dash clauses, switch to direct active constructions, and eliminate throat-clearing phrasing.
- **Inconsistent terminology ("agentic deployment" vs "AI agent"):**  
  **Accept.** Standardise on "autonomous AI agent" and "agentic deployment" with defined scopes.

### Biased statements
1. **Pro-Phase I compliance bias:**  
   **Accept.**  
   *Fix:* Explicitly address evasion tactics (gaming classification thresholds, logging selectively) and explain why external whistleblowing and logging audits are necessary counterweights.
2. **Anti-industry tone ("bad faith"):**  
   **Accept.**  
   *Fix:* Rephrase from moral culpability to economic incentives: "Under release deadlines and compute budgets, internal safety reviews face strong organizational friction."
3. **Aviation disanalogies (physical vs latent failure):**  
   **Accept.**  
   *Fix:* Note upfront that aircraft wear out physically and visibly, whereas software agent capabilities and failure modes can remain latent until specific environment triggers appear.
4. **Phase II economic trade-offs (chilling effects):**  
   **Accept.**  
   *Fix:* Explicitly discuss the deadweight loss: high compliance costs entrench well-funded incumbents, and heavy-handed suspension powers risk halting valuable autonomous workflows.

### Structural suggestions
- **Table of provisions vs failure modes:** **Accept.** Will include in the revised introduction.
- **Concrete baselines for autonomy:** **Accept.** Adopt concrete thresholds (e.g. 50+ autonomous tool invocations or arbitrary network socket creation).
- **Jurisdiction:** **Accept.** Harmonise with US/EU jurisdictional bounds as detailed under Reviewer C.

---

# Reviewer C

### 1. Factual errors and citations
- **The reference incident / unverifiable citations:**  
  **Accept.** The chapter leans on reported accounts without giving a verifiable timeline.  
  *Fix:* Present the incident strictly as an explicit, dated scenario based on public filings and company statements, clearly segregating established facts from claims and analytical deductions.
- **Aviation sequence backwards:**  
  **Accept.** (Addressed under Reviewer A.1).
- **14 CFR 91.25 vs AC 00-46:**  
  **Accept.** 14 CFR 91.25 only bars use of reports in enforcement; penalty immunity is an FAA administrative policy under Advisory Circular 00-46F.  
  *Fix:* Correct the legal citation to reference both 14 CFR 91.25 and AC 00-46F.
- **49 U.S.C. §1154(b) / 49 CFR 835:**  
  **Accept.**  
  *Fix:* Note that while NTSB *probable-cause determinations* are barred from civil litigation under §1154(b), factual accident reports are partially discoverable under 49 CFR 835.
- **CIRCIA implementation status:**  
  **Accept.** CIRCIA was passed in 2022, but the CISA Notice of Proposed Rulemaking was issued in 2024 and final rules remain pending.  
  *Fix:* Cite CIRCIA as a statutory model in the rulemaking phase, noting both its 72-hour breach clock and 24-hour ransom payment reporting requirement.
- **NIS2 notification tiers:**  
  **Accept.**  
  *Fix:* State the exact two-stage rule: a 24-hour "early warning" followed by a comprehensive incident notification within 72 hours.
- **EU AI Act Art. 73 deadlines:**  
  **Accept.**  
  *Fix:* Replace vague harmonisation gestures with Art. 73’s concrete deadlines: 2 days for critical infrastructure incidents, 10 days for fatal incidents, 15 days for general serious incidents.
- **NIST AISI renamed to CAISI:**  
  **Accept.**  
  *Fix:* Update the agency designation to the Center for AI Standards and Innovation (CAISI).
- **FTC AI safety enforcement:**  
  **Accept.** The FTC has targeted deceptive AI claims, not runtime safety failures.  
  *Fix:* Clarify that Section 5 UDAP applies to deceptive representations of safety, not as a general engine for autonomous systems safety enforcement.
- **"AI systems keep learning after certification":**  
  **Accept.** (Addressed under Reviewer A.4).
- **"Sudden capability jumps" contested:**  
  **Accept.** Schaeffer, Miranda, and Koyejo (2023) demonstrated that apparent emergent jumps are often metric artifacts of non-linear scoring.  
  *Fix:* Soften to: "capability progressions that appear sharp under non-linear evaluation metrics."
- **"Black boxes by construction":**  
  **Accept.** Mechanistic interpretability disproves total opacity.  
  *Fix:* Rephrase to "high-dimensional and largely uninterpretable by inspection."
- **FAA R&D share:**  
  **Accept.**  
  *Fix:* Quantify: FAA RE&D funding runs at approximately 1.5–2% of its total annual budget ($250M–$350M out of ~$20B).

### 2. Logical gaps
- **13 hours is not "machine speed":**  
  **Accept.** (Addressed under Reviewer A.6).
- **Filter (i) vs I.1 compute threshold:**  
  **Accept.** (Addressed under Reviewer A.3).
- **Filter (iii) contradicts the incident:**  
  **Accept.** Claiming labs informally adhere to these steps while discussing an incident caused by bypassing them is self-defeating.  
  *Fix:* Drop the claim that labs already do this informally.
- **I.3 unenforceable in Phase I:**  
  **Accept.** (Addressed under Reviewer A.2).
- **Offshoring risk unmitigated:**  
  **Accept.**  
  *Fix:* Add import/deployment restrictions: models deployed to users or accessing local networks within the jurisdiction must comply regardless of where their server infrastructure is hosted.
- **n = 1 incident design:**  
  **Accept.** Regulating for one incident is brittle.  
  *Fix:* Frame the reference incident not as a bespoke case, but as a representative archetype of a known failure category: privilege escalation across unmonitored egress paths.
- **Open weights / forks:**  
  **Accept.** Open-weight releases cannot comply with mandatory continuous telemetry.  
  *Fix:* Separate obligations: the developer of open weights cannot monitor deployment telemetry; the liability and monitoring burdens in I.3/II.1 must attach strictly to the *deployer or host* granting the model autonomous environment tools.
- **No compliance cost / false-positive analysis:**  
  **Accept.**  
  *Fix:* Add realistic order-of-magnitude estimates: operational overhead of continuous egress proxying, compute cost of dedicated oversight passes (~5–10% inference overhead), and the economic cost of false-positive service halts.
- **Jurisdiction ambiguity:**  
  **Accept.** The draft floats between US and EU concepts without committing.  
  *Fix:* Ground the core proposal squarely within US federal administrative law, while treating the EU AI Act and NIS2 strictly as external cross-border harmonisation points.
- **Summary table inconsistencies:**  
  **Accept.**  
  *Fix:* Correct the table to credit I.2 with internal human governance and I.3 with baseline automated telemetry.

### 3. Stylistic weaknesses
- **Self-certifying "honesty" tic:**  
  **Accept.** Preaching candour is irritating; arguments should speak for themselves.  
  *Fix:* Strike every occurrence of "honestly stated", "honest assessment", "honest delta", and "not decorative".
- **Caveat inflation:**  
  **Accept.** Inline rebuttals interrupt the narrative drive.  
  *Fix:* Streamline the policy prose; group remaining counter-arguments into a distinct structural limits section.
- **"Not X but Y" and em-dash overuse:**  
  **Accept.**  
  *Fix:* Rewrite using straightforward declarative sentences.
- **Unexplained acronyms:**  
  **Accept.**  
  *Fix:* Define SBOM/MBOM, UDAP, SLA, ISAC, and DO-178C at first mention, or replace them with plain descriptive English where the acronym adds nothing.
- **The title:**  
  **Accept.** A question mark after a prepositional infinitive is clumsy.  
  *Fix:* Change to: "Reining in AI Agents: What Aviation Can and Cannot Teach Us".
- **Narrative opening (Russell lessons):**  
  **Accept.** Abstract policy disclaimers make for dull reading.  
  *Fix:* Open directly with a concrete, tightly written reconstruction of the breach before laying out the institutional architecture.

### 4. Biased or loaded statements
- **Regulation as the only option:**  
  **Accept.** Market liability and insurance standards are viable alternative levers.  
  *Fix:* Explicitly compare the proposed administrative regime against a strict enterprise tort liability regime, setting out the trade-offs (e.g. tort handles compensation well but struggles with machine-speed escalation).
- **One-sided incident framing:**  
  **Accept.** Treating voluntary pauses as mere luck undermines the value of industry self-restraint.  
  *Fix:* Frame voluntary pauses as valuable but insufficient safeguards against market pressure during competitive races.
- **Loaded language ("change-averse"):**  
  **Accept.**  
  *Fix:* Change to "a cautious legislature".
- **US-centric bias:**  
  **Accept.** (Addressed under Reviewer C.2, Jurisdiction).