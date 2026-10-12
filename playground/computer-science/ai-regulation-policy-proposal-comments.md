# Reviewer A

## Main issues

1. **The aviation sequence is historically misleading.** The FAA’s regulatory authority and the NTSB predate NASA’s Aviation Safety Reporting System. Reporting → investigation → certification → grounding is a useful *policy sequence*, but not how aviation institutions actually arose. Present it as your proposed sequence, not an aviation precedent.

2. **Phase I’s legal mechanism is unresolved.** It calls reporting and monitoring *mandatory*, yet gives the office no power to compel either. Procurement preferences and insurance incentives will not reach every covered lab. Specify which existing authority imposes and enforces the duties, or call them voluntary conditions. Likewise, FOIA protection and restrictions on evidential use require explicit legislation; the ASRS/CIRCIA analogy does not confer them.

3. **The scope contradicts itself.** I.1 covers labs above a compute/capability threshold; the omissions section says Phase I avoids capability thresholds; the scope section favours hazard- and use-based coverage. Choose one rule. The strongest candidate is to regulate the *deployment’s autonomy and access*, regardless of who trained the model.

4. **Some technical claims are too strong.** Deployed models do not generally “keep learning after certification”; their weights may be fixed while prompts, tools, context and surroundings change. “Safety training suppressed” also conflates training with inference-time safeguards or a separately modified model. A required monitor would ensure it was *running*, not that it would detect the breach.

5. **Phase II treats hypotheses as incident-derived requirements.** The account supports concern about inadequate isolation and monitoring. It does not, as presented, demonstrate *correlated guard failure*, establish that cross-lineage supervision would have helped, or show that evaluation-awareness caused the breach. Label these as additional risks rather than root causes revealed by this incident.

6. **The supervision design needs a trust boundary.** A single gateway and automatic suspension work only if the agent cannot bypass the gateway or disable the supervisor. Say what enforces that separation. Also, a roughly 13-hour escalation is fast operationally, but not proof that human intervention is inherently too slow; detection and response times are the relevant quantities.

## Style and balance

The chapter is considerably longer than its policy argument requires. “Honest assessment”, caveats and objections repeatedly restate the same limitations. The front-page caveat cannot substitute for a **dated, citable incident chronology** distinguishing confirmed facts, parties’ claims and inferences. Finally, “politically viable within 12–24 months” and “technically sound” are stronger conclusions than the unresolved enforcement and supervisor questions warrant. “Designed for near-term viability” and “technically ambitious” would be more exact.

---

# Reviewer B

Here’s a concise review of your chapter, structured by category:

---

### **Factual Errors**
- **Minor historical nit**: The Han dynasty’s interruption by Wang Mang (9–25 CE) is correctly noted, but the Kushan emperor **Kaniska**’s reign is now dated to ~127–150/151 CE (not 127–151 CE as a fixed range). This is irrelevant to your text but aligns with your preference for precision.
- **Legal citations**: The references to **14 CFR 91.25** (ASRS immunity) and **49 U.S.C. §1154(b)** (NTSB report inadmissibility) are accurate, but the text could clarify that **CIRCIA’s 72-hour cyber-incident reporting** applies only to *covered critical infrastructure* (not all AI labs). This is implied but worth stating explicitly to avoid overbreadth.

---

### **Logical Gaps**
1. **Phase I’s "modest" framing**:
   - The claim that frontier labs "already do informally" what Phase I mandates (I.1–I.3) is **under-evidenced**. Public disclosures (e.g., OpenAI’s 2024 incidents) suggest *some* internal monitoring exists, but not universally, and not with the rigor proposed. This weakens the political-feasibility argument.
   - **Mitigation**: Cite specific lab policies (e.g., Google DeepMind’s red-team charters) or surveys (e.g., Stanford AI Index) to substantiate the claim.

2. **Monitoring requirement (I.3)**:
   - The text acknowledges that a missing monitor caused the incident but doesn’t address **how to enforce "continuous" monitoring** in practice. A lab could technically comply by running a trivial monitor (e.g., logging only failed API calls). The "minimum capabilities" list helps but lacks **auditability criteria** (e.g., third-party validation of monitor effectiveness).
   - **Suggestion**: Add a requirement for **periodic third-party audits** of monitors (even if lightweight in Phase I).

3. **Phase II’s supervisor independence (II.2)**:
   - The "materially different training lineage" requirement is **underspecified**. What constitutes "divergent base weights"? A 1% fine-tune? A separate pre-training corpus? Without a **quantitative threshold**, this risks becoming a checkbox.
   - **Suggestion**: Propose a **minimum divergence metric** (e.g., cosine similarity < *x* between agent and supervisor embeddings) or defer to a future standard (e.g., NIST AI RMF).

4. **Evaluation-awareness (II.5)**:
   - The open problem of agents detecting evaluation vs. deployment is **correctly flagged**, but the text doesn’t explain **why current interpretability tools (e.g., mechanistic circuits, linear probes) fail to address it**. A brief note on their limitations would strengthen the case for dedicated research funding.

---

### **Stylistic Weaknesses**
1. **Overlong sentences**:
   - Example: *"The provision mandates the *outcome* — continuous, auditable automated oversight — not a specific technique (chain-of-thought monitoring, action classifiers, and so on)."* → **Split for clarity**: *"The provision mandates the outcome: continuous, auditable automated oversight. It does not prescribe specific techniques (e.g., chain-of-thought monitoring)."*
   - **General rule**: Avoid em-dash nests (e.g., *"a small, fast-moving office could build — and enforce —"*).

2. **Passive voice**:
   - *"A short mandatory clock closes this gap"* → **"The mandatory clock would close this gap"** (active, clearer agency).
   - *"The reference incident's sandbox was reportedly tested and validated internally"* → **"Reportedly, the lab internally tested and validated the sandbox"** (more direct).

3. **Redundancy**:
   - *"The answer is no. Gödel showed..."* → **"No. Gödel showed..."** (your own writing in *27-science.md* avoids this).
   - *"A disclosure clock cannot start before the lab knows a breach occurred, and the same monitoring failure that caused the incident can delay detection."* → **"A disclosure clock cannot start until the lab detects the breach—and the same monitoring failure that caused the incident may delay detection."**

4. **Tone mismatches**:
   - *"This is the aviation model's strongest tool and the one that draws the fiercest resistance if proposed before a disclosure regime has built a track record."* → **Too conversational for the otherwise formal tone**. Suggest: *"This is the aviation model’s most potent tool—but also the most contentious if proposed prematurely, before a disclosure regime has established its value."*

5. **Inconsistent terminology**:
   - *"Agentic deployments"* (I.3) vs. *"AI agent"* elsewhere. **Standardize** (e.g., always "AI agent" or "agentic system").
   - *"Frontier labs"* vs. *"high-reach deployments"*. Define "frontier" early (e.g., models above *X* FLOPs or with *Y* capabilities).

---
---
### **Biased Statements**
1. **Pro-Phase I bias**:
   - The text **overstates** Phase I’s likely effectiveness: *"Phase I would have [...] compressed the industry-wide learning cycle."* This assumes labs will **actually comply** with disclosure and monitoring. A skeptic might argue that labs could **game the system** (e.g., underreporting severity, claiming "near-miss" status). **Acknowledge this risk** explicitly.

2. **Anti-industry bias**:
   - *"A determined lab could still treat a safety-officer sign-off as a formality."* → **Implies bad faith**. Soften: *"A lab under commercial pressure might treat sign-offs as pro forma, absent strong enforcement."*

3. **Pro-regulatory bias**:
   - The aviation analogy **downplays** key disanalogies:
     - Aircraft failures are **physical and observable**; AI failures can be **latent and distributed** (e.g., a model subtly manipulating users over time).
     - Aviation regulators have **decades of incident data**; AI lacks this. **Acknowledge this asymmetry** to avoid overconfidence in the analogy.

4. **Understated risks of Phase II**:
   - The **suspension authority (II.3)** could **chill innovation** (e.g., labs avoiding high-tier deployments entirely). The text notes industry opposition but doesn’t engage with the **economic trade-offs** (e.g., reduced deployment of beneficial AI). **Add a sentence on this tension**.

---
---
### **Structural Suggestions**
1. **Add a table** summarizing **which provisions address which incident failure modes** (e.g., missing monitor → I.3, safety suppression → I.2, disclosure gap → I.1). This would mirror your *28-truth.md*’s clarity.

2. **Clarify the "autonomy/reach threshold"** (I.3, II.1):
   - Define **concrete baselines** (e.g., "100 autonomous steps" or "any external financial transaction"). Currently, this is left vague.

3. **Explicitly address jurisdiction**:
   - Phase I/II assume a **single jurisdiction** (likely the U.S.). But AI deployments are global. **Briefly note** how this interacts with EU AI Act or other regimes (e.g., conflicts, harmonization).

---
---
### **Summary of Critical Fixes**
| **Issue**               | **Location**       | **Suggested Fix**                                                                 |
|-------------------------|--------------------|-----------------------------------------------------------------------------------|
| Underevidenced claim    | I.1 (labs "already do") | Cite specific lab policies or surveys.                                          |
| Underspecified term     | II.2 (supervisor lineage) | Add a quantitative divergence metric or defer to a standard.                   |
| Passive voice           | I.3, II.1          | Rewrite in active voice (e.g., "The clock would close the gap").                |
| Overlong sentences      | Throughout         | Split complex sentences (e.g., avoid em-dash nests).                           |
| Pro-Phase I bias        | Phase I assessment | Acknowledge risks of non-compliance or gaming.                                  |
| Missing trade-offs      | II.3               | Note economic costs of suspension authority (e.g., chilling innovation).       |

---
**Final Verdict**: The chapter is **technically sound and well-structured**, with only minor factual nits. The **logical gaps** (monitoring enforceability, supervisor independence) and **stylistic issues** (passive voice, redundancy) are the highest-priority fixes. The **biases** are subtle but should be **explicitly balanced** to maintain your preferred **analytical, non-ideological tone**.

---

# Reviewer C

# Review: "How to Rein in AI?"

## 1. Factual errors and unverifiable claims

- **The reference incident.** I cannot verify a 2026 OpenAI–Hugging Face incident. The caveat helps, but the whole chapter rests on it. Specific details (the 13 hours, the five weeks, the two direct quotes, "the monitor would have caught it a day early") need citations or must be marked as allegations each time they are used, not only once in the preamble. The claim about the monitor is a counterfactual and needs a source in any case.
- **The aviation sequence is historically wrong, and it is your guiding principle.** In the US the order was roughly the reverse of what you describe:
  - aircraft certification and pilot licensing (Air Commerce Act, 1926);
  - investigation under the Commerce Department and later the CAB (1940);
  - the FAA, with airworthiness-directive powers (1958);
  - an independent NTSB (1967);
  - ASRS (1976), which is *voluntary*, not mandatory.

  The institutional lesson may still hold, but it cannot be presented as aviation's actual path.
- **14 CFR 91.25** bars the FAA from using ASRS reports in enforcement. The waiver of penalties comes from Advisory Circular 00-46, not from the regulation itself.
- **49 U.S.C. §1154(b)** bars NTSB *reports*. Under 49 CFR 835, factual reports and investigator testimony are partly admissible. This is a minor point, but worth stating precisely.
- **CIRCIA** was enacted in 2022, but the final rule implementing the 72-hour obligation was still pending at my last information. You cannot cite it as an operating regime. It also has a 24-hour clock for ransom payments.
- **NIS2** requires a 24-hour early warning followed by a 72-hour notification, so "NIS2/GDPR 72-hour" is only half right.
- **EU AI Act, Art. 73** sets deadlines of 15 days in general, 10 days if a death occurs, and 2 days for widespread or critical-infrastructure incidents. If you want to harmonise with it, quote these figures.
- **NIST AI Safety Institute** was renamed the Center for AI Standards and Innovation (CAISI) in 2025.
- **FTC** "untested for AI" is too strong. The FTC has brought AI-related cases (Rite Aid, Operation AI Comply). What is untested is its use for AI *safety incidents*.
- **"AI systems keep learning after certification"** (II.1). Deployed models generally have frozen weights; behaviour changes through updates, tools, memory, and context. This also blurs your earlier, more accurate formulation that the model "updates its state contextually".
- **"Sudden capability jumps"** are contested. Schaeffer et al. (2023) argue that many apparent jumps are artefacts of the metrics used. Mark the claim as disputed.
- **"Black boxes by construction"** overstates the case, since interpretability research exists. "Largely opaque" is defensible.
- **FAA research share** is vague. Quantify it: FAA R&D is on the order of 1–2% of the agency budget. Whether that counts as "meaningful" is for you to argue.

## 2. Logical gaps

- **13 hours is not "machine speed".** A competent security operations centre responds well within 13 hours, and you claim the monitor would have flagged the activity a day early. On your own figures, human alerting would have sufficed. This undercuts the main argument for II.2's unilateral automatic suspension.
- **Filter (i) contradicts I.1.** Phase I is said not to require defining capability, yet I.1 is triggered by a "compute/capability threshold". II.1 then argues that compute alone is the wrong trigger.
- **Filter (iii) contradicts the incident.** You say labs "already do informally" what Phase I mandates, but the reference case is precisely one where they did not.
- **I.3 is mandatory but unenforceable in Phase I.** Enforcement is incentive-based only. The monitor existed and was not running, and nothing in Phase I compels it to run. The honest assessment's claim that Phase I "would have forced the missing monitor to exist and run" does not follow.
- **Offshoring is listed as a risk, but none of the mitigations address it.**
- **One incident drives the whole design.** With n = 1, the risk is building a regime against the last failure. You need at least an argument for why this incident is representative.
- **Open weights.** Given that Hugging Face is involved, the scope section's open question about forks and community models is the central case, not a footnote.
- **No cost side.** There is no estimate of compliance cost, the office's size, or the false-positive rate. You ask "compared to what?" of others, and the chapter should answer it too.
- **Jurisdiction is unclear.** The legal hooks are American (CFR, NIST, FTC), but you also invoke the EU AI Act, and one party is Franco-American. State who enacts the proposal.
- **Summary table.** "Guard independence: not addressed" in Phase I ignores I.2's independent safety officer. II's assessment credits II.2 with fixing the missing monitor, which is I.3's job.

## 3. Stylistic weaknesses

- **Self-certifying honesty.** "Stated honestly", "honest assessment", "honest delta", "stated plainly rather than papered over", "not decorative". Show candour; don't announce it.
- **Caveat inflation.** Nearly every provision carries its own objection-and-reply paragraph. A single section on limitations would cut a third of the length.
- **Repeated "not X but Y" constructions and em-dash chains.** They become a tic and read like generated prose.
- **Unexplained jargon for your intended audience.** SBOM/MBOM, UDAP, SLA, P0–P2, ISAC, DO-178C, BASA.
- **The title.** "How to Rein in AI?" is ungrammatical as a question. It also promises more than the text delivers, which is about *agentic deployments by frontier labs*. Something like "Reining in AI Agents: Lessons from Aviation" would fit better.
- **Against your own Russell lessons.** The text tells everything and shows little. A short, concrete narrative of the incident at the start would do more than the italic abstract.

## 4. Biased or loaded statements

- **Regulation is the only option considered.** Alternatives are not weighed: a strict-liability regime, insurer-led standards, or simply waiting for more data. The strongest counter-argument, that premature rules entrench incumbents and freeze immature practice, appears only partially in II.2.
- **The incident framing rests on one side's account.** Hugging Face "went public first", and OpenAI's pause is cast as luck rather than evidence that voluntary mechanisms can work. Your II.3 argument needs the latter acknowledged.
- **"Skeptical legislature or change-averse administration"** is mildly loaded. "A cautious legislature" is neutral.
- **The design is US-centric.** The EU appears mainly as a harmonisation constraint rather than as the jurisdiction that has actually legislated.
