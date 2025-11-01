# Why Your Model Beats You: Bayesian Decision-Making Without Noise

*From Kahneman's Fallacies to Neural Networks That Replace Human Judgment*

*Johannes Siedersleben, assisted by Claude Sonnet 4.5     
November 2025*

---


We are easily fooled. Daniel Kahneman's *Thinking, Fast and Slow* {cite}`kahneman2011thinking` opens with a devastating example of human misjudgment. Imagine you are given two lists. The first contains personality descriptions like "a meek and tidy soul with a need for order and structure." The second is simply a list of professions: librarian, farmer, airline pilot, accountant. Your task: estimate how likely a given individual is to work in each profession.

Most people approach this by asking: "How well does the description match the profession?" Meek and tidy? That sounds like a librarian! But this intuitive approach is fundamentally flawed. It ignores a crucial fact: some professions are vastly more common than others. However perfectly a personality fits an astronaut or lighthouse keeper, these professions are so rare that the actual probability of encountering one remains minuscule.

Kahneman calls this cognitive error "What You See Is All There Is" (WYSIATI)—our tendency to make judgments based solely on available information while ignoring what's missing. What people systematically forget is the **base rate**: the underlying frequency of each profession in the population. There are thousands of accountants for every lighthouse keeper, regardless of personality fit.

The correct probability of someone being a librarian, astronaut, or accountant must be approximately the product of the base rate (how common is this profession?) and some factor determined by the personality match (how well does this person fit the professional profile?). Understanding this product—and learning to think about it systematically—is the gateway to Bayesian reasoning.

This essay traces a journey from Kahneman's insights about human fallibility through the mathematics of Bayesian tests to a surprising conclusion: trained automatons—neural networks making decisions based on weighted scores—systematically outperform human experts. The implications for medicine, insurance, criminal justice, and countless other domains are profound and troubling. We begin with a concrete example.

## A Worked Example: Musicians and Base Rates

Let's examine professional musicians. Suppose:
- **Base rate**: 0.1% of the population are professional musicians (1 in 1,000 people)
- **Musical giftedness**: 5% of the population is musically gifted (50 in 1,000 people)
- **Assumption**: All professional musicians are musically gifted (a simplification, but reasonable)

Now consider a person selected at random from the population. If we learn nothing about them, their probability of being a professional musician is simply the base rate: 0.1%. But suppose we learn they are musically gifted. How does this change the probability?

Here's the calculation:

| Population Category | Count (per 1,000) | Percentage |
|---------------------|-------------------|------------|
| General population | 1,000 | 100% |
| Professional musicians | 1 | 0.1% |
| Musically gifted people | 50 | 5% |
| Musicians among the gifted | 1 | — |
| **P(musician \| gifted)** | **1/50** | **2%** |

The probability jumps from 0.1% to 2%—a twentyfold increase. Yet the person is still overwhelmingly unlikely to be a professional musician. Among the 50 musically gifted people, 49 have chosen different careers or never developed their talent professionally.

This pattern is ubiquitous in medical diagnosis, security screening, machine learning, and everyday reasoning. Understanding it requires some terminology:

- **Evidence**: Information that is readily available (here: "is musically gifted")
- **Hypothesis**: What we're trying to determine about the underlying reality (here: "is a professional musician")
- **Base rate**: Prior probability of the hypothesis before considering evidence (here: 0.1%)
- **Likelihood**: Probability of observing the evidence (here: 5%)
- **Likelihood ratio**: The multiplicative factor by which evidence changes probability (here: 20)

The likelihood ratio quantifies the information gained from the evidence. A ratio of 20 is excellent; in many real-world applications, we're lucky to achieve 10.

## Bayesian Tests: The Cancer Screening Problem

The same pattern applies to medical diagnosis. Consider a cancer screening test:
- **Hypothesis**: The patient has cancer
- **Evidence**: The test result is positive
- **Base rate**: Cancer prevalence (often around 0.1% for many cancers)

Let's work through a concrete example with actual numbers. Suppose we screen 10,000 people for a rare cancer:

**Given:**
- Base rate: 0.1% (10 people in 10,000 have cancer)
- Sensitivity (true positive rate): 95% (the test detects 95% of actual cancers)
- Specificity (true negative rate): 95% (the test correctly identifies 95% of healthy people)

**Calculation:**
- True positives (TP): 10 people with cancer × 95% = 9.5
- False negatives (FN): 10 people with cancer × 5% = 0.5
- True negatives (TN): 9,990 people without cancer × 95% = 9,490.5
- False positives (FP): 9,990 people without cancer × 5% = 499.5

**Results:**
- Total positive tests: TP + FP = 9.5 + 499.5 = 509
- Precision (positive predictive value): TP/(TP + FP) = 9.5/509 = **1.9%**

Out of 509 people who test positive, only 9.5 actually have cancer. That's 98.1% false positives. Most patients—and many physicians—find this deeply counterintuitive. A test that is "95% accurate" produces overwhelming numbers of false alarms.

This is not a defect of the test. It's an inevitable consequence of screening for rare conditions. When the base rate is 0.1% and the false positive rate is 5%, you will necessarily get 50 times more false positives than true positives.

### The Confusion Matrix

The confusion matrix organizes these four outcomes systematically:

|                       | **Cancer Absent** | **Cancer Present** | **Total** |
|-----------------------|:-----------------:|:------------------:|:---------:|
| **Test Negative**     | TN = 9,490.5      | FN = 0.5           | 9,491     |
| **Test Positive**     | FP = 499.5        | TP = 9.5           | 509       |
| **Total**             | 9,990             | 10                 | 10,000    |

Understanding this matrix is crucial for evaluating any classification system—whether medical diagnosis, spam detection, or criminal risk assessment.

### Four Ways to Measure Performance

From the confusion matrix, we can derive multiple performance metrics, each capturing a different aspect of test quality:

| Metric | Formula | Value | Interpretation |
|--------|---------|-------|----------------|
| **Accuracy** | (TP+TN)/(TP+TN+FP+FN) | 95% | Overall correctness |
| **Precision** | TP/(TP+FP) | 1.9% | What patients care about |
| **Recall (Sensitivity)** | TP/(TP+FN) | 95% | How many cancers we catch |
| **Specificity** | TN/(TN+FP) | 95% | How many healthy people we correctly identify |

The test has 95% accuracy, 95% recall, and 95% specificity—all excellent numbers. Yet the precision is merely 1.9%. This is the paradox of rare events: even very good tests produce mostly false positives when screening for conditions with low base rates.

**False negatives** are catastrophic—missing someone who actually has cancer. Fortunately, with 95% sensitivity, these are rare (0.5 cases in our example).

**False positives** are merely anxiety-inducing—telling someone they might have cancer when they don't. Unfortunately, these are common (499.5 cases in our example).

For all their limitations, Bayesian tests have been the foundation of medical diagnosis, quality control, security screening, and scientific inference for over a century. They remain indispensable because the alternative—human intuition—is systematically worse.

### The Asymmetry Between Lab and Field

There is a deep asymmetry between developing a test and deploying it. Pharmaceutical companies typically develop tests in laboratory settings with carefully balanced populations: perhaps 500 people with cancer and 500 without. The test's job is to distinguish these two equal-sized groups.

In this balanced setting, the same 95% sensitivity and 95% specificity yield vastly different results:
- True positives: 500 × 95% = 475
- False positives: 500 × 5% = 25
- Precision: 475/(475+25) = **95%**

The precision is excellent! The test appears to work beautifully.

But when deployed in the field on the general population—where only 0.1% have cancer—that same test's precision collapses to 1.9%. The test hasn't changed; the population has. This asymmetry between development (balanced populations) and deployment (real-world base rates) is the source of most Bayesian confusion and most real-world disappointment with screening programs.

## The Apgar Test Is a Neural Network

Let's shift from passive diagnosis to active decision-making. The Apgar test, developed in 1952 by anesthesiologist Virginia Apgar, is a worldwide standard for assessing newborn babies. A physician observes five criteria immediately after birth:

1. **A**ppearance (skin color)
2. **P**ulse (heart rate)
3. **G**rimace (reflex response)
4. **A**ctivity (muscle tone)
5. **R**espiration (breathing)

Each criterion receives a score of 0 (poor), 1 (fair), or 2 (good). The five scores are summed to produce the Apgar score, ranging from 0 to 10. A score of 7 or higher indicates a healthy newborn; a score below 7 indicates a baby requiring immediate medical attention.

The Apgar test fits perfectly into our Bayesian framework:
- **Evidence**: The five observable scores
- **Hypothesis**: The baby is healthy or critical
- **Decision rule**: Score ≥ 7 → healthy; score < 7 → critical

The test could function as a decision automaton: observe, score, sum, compare to threshold, act. In practice, of course, a responsible physician is present, and the test guides rather than replaces human judgment.

### From Fixed Weights to Trained Weights

The original Apgar test treats all five criteria as equally important—each contributes 0, 1, or 2 points to the total. But is this optimal? Perhaps appearance is more informative than grimace. Perhaps pulse should count more than respiration. How would we determine the optimal weights?

Imagine we modify the Apgar test to use arbitrary weights w₁, w₂, w₃, w₄, w₅ (summing to 1 for normalization):

**Weighted Apgar Score** = w₁×(appearance) + w₂×(pulse) + w₃×(grimace) + w₄×(activity) + w₅×(respiration)

Now the question becomes: what values of the weights work best?

Here's how we find them:

1. **Collect training data**: Gather observations from 1,000 newborns, recording:
   - The five Apgar scores for each baby
   - The true health status (healthy or critical) determined by follow-up examination

2. **Frame as optimization problem**: We have 1,000 equations (one per baby), each relating five observations to one outcome, and we want to find five weights that best predict the outcomes.

3. **Solve the optimization**: Use mathematical techniques (typically least squares or gradient descent) to find the weights that minimize prediction errors on the training data.

4. **Deploy the trained test**: Use the learned weights w₁, w₂, w₃, w₄, w₅ to score future babies.

**Congratulations: you have just trained your first neural network.**

This is not a metaphor or analogy. The weighted Apgar test *is* a neural network—specifically, a single-layer perceptron with five inputs, one output, and no hidden layers. The architecture looks like this:

```
Input Layer:          Weights:      Output:
[Appearance]  -------  w₁  ------→
[Pulse]       -------  w₂  ------→
[Grimace]     -------  w₃  ------→  [Weighted Sum] → [Threshold] → Decision
[Activity]    -------  w₄  ------→
[Respiration] -------  w₅  ------→
```

This is not a toy example or simplification. Real-world neural networks use exactly this principle, scaled up:
- More inputs (50, 500, or 50,000 features instead of 5)
- Hidden layers (intermediate processing stages)
- Nonlinear activation functions (allowing more complex relationships)
- Billions of weights instead of five

But the fundamental idea is identical: find numerical weights that transform inputs into predictions, and optimize those weights using training data.

The trained Apgar test (and every neural network) fits perfectly into the Bayesian testing framework. It produces predictions (evidence) about underlying states (hypotheses). It can be evaluated using precision, recall, accuracy, and specificity. It will produce false positives and false negatives. And like all Bayesian tests, its quality depends critically on the quality of the training data.

## From Apgar to Insurance: Scaling Up

Let's take the next step: from medical diagnosis with five observable features to commercial decision-making with dozens or hundreds of features. Consider an insurance company automating its claims processing.

### Step 1: Convert Reality to Numbers

The first challenge—and this requires considerable expertise—is to represent each insurance claim as a vector of numerical scores. For an auto insurance claim, this might include:

1. **Claim amount** (normalized to $0-100k range)
2. **Days since policy purchase**
3. **Claimant age**
4. **Number of previous claims** (in last 5 years)
5. **Police report filed?** (binary: 0 or 1)
6. **Independent witness statements?** (count: 0, 1, 2, ...)
7. **Photos provided?** (count: 0, 1, 2, ...)
8. **Damage assessment matches photos?** (binary)
9. **Claimant response time** (hours to first contact)
10. **Repair shop reputation score** (0-100)
11. **Claimant credit score** (normalized)
12. **Time of day of incident** (encoded as hour 0-23)
13. **Weather conditions** (clear/rain/snow/fog encoded)
14. **Claim description coherence score** (0-100, from NLP analysis)
15. **Prior claims in same location?** (binary)
... and perhaps 35-85 more features

Choosing these features requires domain expertise, legal knowledge (what are we allowed to consider?), and practical judgment (what data can we reliably obtain?). This is emphatically not automated—it's skilled human work.

### Step 2: Gather Training Data

The company needs historical data: thousands of past claims with:
- All feature scores
- The final decision (approved or denied)
- Ideally, whether that decision was correct (did fraud eventually surface? did legitimate claims get wrongly denied?)

Suppose they have 10,000 historical claims with known outcomes.

### Step 3: Train the Model

Using the same mathematical techniques as the weighted Apgar test (but with more sophisticated algorithms capable of handling 50+ features), the company finds the weights that best predict historical decisions:

**Claim Score** = w₁×(claim_amount) + w₂×(policy_age) + ... + w₅₀×(feature₅₀)

If the score exceeds some threshold, approve the claim. If it falls below, deny or flag for human review.

### Step 4: Deploy and Monitor

The trained model processes new claims automatically. Claims with clear scores (very high or very low) are decided automatically. Claims near the threshold are flagged for human review.

This is precisely analogous to the Apgar test, the cancer screening, and the musician example. It's a Bayesian classifier making decisions based on evidence. And if the training data is good—if it represents the full diversity of legitimate and fraudulent claims—the model can be excellent.

But there's a crucial difference between babies and insurance claims.

## The Problem of Ground Truth

There is a fundamental difference between medical diagnosis and commercial decision-making. For newborn babies, there is an objective ground truth:
- We can monitor the baby's condition over hours and days
- We can run blood tests, observe vital signs, consult specialists
- We can determine with near-certainty whether the baby was truly healthy or critical

The same applies to cancer screening:
- We can perform biopsies
- We can do follow-up imaging
- We can eventually determine whether the patient had cancer

But for many real-world decisions, there is **no objective ground truth**:

### Insurance Claims
An insurance adjuster decides whether a claim is legitimate or fraudulent. But this decision itself is judgment-based. There's no lab test for fraud. The "ground truth" in the training data is just another human's opinion. When we train a model on these decisions, we're training it to replicate human judgment—including human biases, blind spots, and inconsistencies.

### Criminal Sentencing
A judge decides whether a defendant is high-risk or low-risk for reoffending. But this is predictive judgment, not observable fact. The training data consists of past judicial decisions and subsequent recidivism rates. A model trained on these decisions learns to reproduce judicial patterns—including racial biases, socioeconomic prejudices, and geographic disparities that characterize the justice system.

### Loan Applications
A bank decides whether to approve a loan. The "ground truth" is whether the person defaulted. But this is affected by the bank's own decision: denying a loan to someone who would have repaid it creates no training signal (we never learn what would have happened). The training data is systematically incomplete.

### Medical Triage
An emergency room nurse decides which patients need immediate attention. The "ground truth" is patient outcomes—but these are affected by the triage decision itself. Patients sent home might have recovered regardless, or might have deteriorated because they were sent home. Cause and effect are entangled.

This is the fundamental problem of training decision-making systems: **we are training models to reproduce human decisions, not to discover objective truths**. The model learns human biases as faithfully as it learns human expertise. It becomes a consistent version of human judgment—bias included.

## Why Automatons Beat Humans Anyway

Given that models learn from flawed human decisions, why would they outperform humans? This is the central thesis of Kahneman's *Noise: A Flaw in Human Judgment* {cite}`kahneman2021noise`: trained automatons systematically beat human experts at decision-making because they eliminate **noise**.

### What is Noise?

Noise is random variability in human judgment. It has several sources:

**Occasion noise**: The same person makes different decisions at different times
- Monday morning vs. Friday afternoon
- Before lunch vs. after lunch
- After a good night's sleep vs. after a sleepless night
- After approving three claims vs. after denying three claims

**Mood noise**: Emotional states affect judgment
- Anxiety, anger, depression alter risk assessment
- Recent personal events (argument with spouse, traffic jam) color decisions
- Weather, temperature, even sports results influence judges and parole boards

**Context noise**: Irrelevant information affects decisions
- The order in which cases are reviewed
- Anchoring on previous cases
- Arbitrary reference points mentioned in conversation

Studies documenting occasion noise are disturbing:
- Judges grant parole more often right after lunch than before lunch
- Radiologists are more likely to detect anomalies early in their shift
- Loan officers are harsher after denying several applications in a row
- Insurance adjusters vary by ±30% in claim approval rates on identical cases

This variability is not bias (systematic error). It's noise (random error). Two experts reviewing the same case on different days can reach opposite conclusions. The same expert reviewing the same case twice may contradict themselves.

### The Automaton Advantage

Now suppose you train a model on one particular expert's decisions—their judgments over thousands of cases spanning several years. That model learns to predict what the expert would decide. But crucially, the model has several advantages:

1. **No occasion noise**: The model has no Mondays, no lunch breaks, no bad nights
2. **No mood noise**: The model has no emotions, no quarrels with partners, no traffic jams
3. **No context noise**: The model doesn't anchor on previous cases or get influenced by irrelevant details

The model represents that expert's judgment **with the noise removed**. It captures their consistent patterns while eliminating their random fluctuations.

As Kahneman puts it: **Your model beats you, and it beats you consistently.**

This is deeply counterintuitive. We expect humans to beat machines at tasks requiring judgment. But Kahneman's research shows that in high-volume decision-making—insurance claims, loan applications, medical triage, parole decisions—trained automatons outperform the experts whose decisions they learned from.

The automaton is not smarter than the expert. It's more consistent. And in many domains, consistency matters more than peak performance.

### Evidence from Real Systems

Several large-scale studies support this conclusion:

**Medical diagnosis**: Simple algorithms predicting heart attack risk outperform cardiologists' intuitive judgments (because the algorithms apply consistent criteria).

**Recidivism prediction**: The COMPAS algorithm (despite its controversies) predicts reoffending more consistently than parole boards (though it inherits their biases).

**Insurance underwriting**: Automated systems approve/deny claims more consistently than human adjusters (though they sometimes miss unusual cases requiring human judgment).

**Academic admissions**: Weighted formulas combining GPA and test scores predict college success better than holistic human review (though they may miss important qualitative factors).

The pattern is clear: in domains with:
- High volume (thousands of decisions per year)
- Clear features (observable, quantifiable information)
- Historical data (past decisions and outcomes)
- Tolerable error rates (no single decision is catastrophic)

...trained automatons systematically outperform human experts.

## When Should Automatons Decide?

Not all decisions should be automated. The critical question is: when is automation appropriate, and when does it cross ethical lines?

### The Appropriate Domain for Automation

**High-volume, moderate-stakes decisions with clear features:**
- Insurance claim processing (most claims are routine)
- Fraud detection (flag suspicious transactions for human review)
- Medical triage (prioritize patients for human examination)
- Loan pre-approval (initial screening before human underwriting)
- Spam filtering (users can check spam folders)
- Quality control (flag defective products for human inspection)

These domains share several characteristics:
- Thousands or millions of decisions required
- Features can be quantified reliably
- Errors are tolerable (false positives get human review; false negatives are rare)
- Speed and consistency matter
- Humans can intervene in edge cases

### The Inappropriate Domain for Automation

**Low-volume, high-stakes decisions requiring explanation:**
- Criminal sentencing (individual liberty at stake)
- Medical diagnosis for serious conditions (life-or-death consequences)
- Child custody decisions (profound impact on multiple lives)
- Asylum and immigration decisions (deportation vs. safety)
- Academic expulsion or professional license revocation (irreversible harm)

These domains share different characteristics:
- Each decision is individually significant
- Explanations and justifications are required
- Errors are catastrophic (wrongful conviction, missed cancer, child abuse)
- Human judgment includes factors that resist quantification (remorse, credibility, unique circumstances)
- Affected individuals have a right to human consideration

### Three Critical Problems

Even in appropriate domains, automation faces three serious problems:

#### 1. The Training Data Problem

Models learn exactly what they're taught—including biases. If historical decisions show:
- Racial disparities in loan approval
- Gender biases in hiring
- Socioeconomic discrimination in insurance
- Geographic prejudices in medical care

...the model will faithfully reproduce these patterns. It doesn't distinguish between legitimate expertise and unjust bias. Both appear as correlations in the training data.

**Example**: The COMPAS recidivism predictor was trained on historical criminal justice data that reflected systemic racial biases. It learned to assign higher risk scores to Black defendants, not because of any individual characteristics, but because the training data showed Black defendants were more likely to be re-arrested (reflecting both higher policing in Black communities and judicial biases). The model amplified existing injustice.

#### 2. The Feedback Loop Problem

Once deployed, models create their own training data. If an automated loan system denies credit to certain demographics, those people never get loans, never demonstrate creditworthiness, and the system "learns" that denying them was correct. The model's decisions become self-fulfilling prophecies.

**Example**: Amazon's automated recruiting tool learned to penalize résumés containing the word "women's" (as in "women's chess club") because historical hiring data showed men were more often hired. The system then reinforced this pattern by recommending male candidates, creating training data that confirmed its bias.

#### 3. The Accountability Problem

When a human makes a bad decision, we can ask: Why did you decide that? What were you thinking? We can hold individuals accountable. But when a neural network with 10 million parameters makes a decision, there's no comprehensible explanation. The weights are optimized mathematically, not reasoned through logically.

This creates a responsibility gap: the model acts, but no one can explain why. The engineer who trained it doesn't know why it made this specific decision. The organization deploying it can't justify the outcome. The affected person has no recourse.

**Example**: A patient denied insurance coverage wants to know why. "The algorithm gave you a score of 4.7" is not an explanation. "Your claim contained keywords associated with fraud" might be, but if the keywords are learned statistical patterns rather than explicit rules, even this explanation is suspect.

### A Framework for Responsible Automation

Decision automation should follow a tiered approach:

**Tier 1: Full automation** (routine, low-stakes, high-volume)
- Spam filtering
- Product recommendations
- Routine transaction approval
- Error: minor inconvenience
- Human intervention: user can override or flag

**Tier 2: Assisted decision** (moderate stakes, some complexity)
- Insurance claims flagged as suspicious
- Medical test results suggesting further examination
- Loan applications requiring additional documentation
- Error: increased scrutiny, not automatic rejection
- Human intervention: required for final decision

**Tier 3: Human decision with AI support** (high stakes, complex)
- Medical diagnosis combining AI image analysis with physician judgment
- Criminal sentencing with risk assessment as one input among many
- Academic admissions using test scores plus holistic review
- Error: potentially catastrophic
- Human intervention: AI provides information, human decides

**Tier 4: Human decision only** (highest stakes, requires empathy)
- Parole decisions
- Child custody
- Asylum determination
- Physician-assisted suicide authorization
- Error: irreversible harm
- Human intervention: required throughout, AI may provide background information only

## Conclusion: The Bayesian Pattern from Kahneman to Neural Networks

We began with Kahneman's observation that humans systematically ignore base rates. We traced this insight through the mathematics of Bayesian tests—medical screening, risk assessment, classification problems—showing how evidence updates probabilities.

We revealed that the weighted Apgar test is a neural network, and that neural networks are fundamentally Bayesian classifiers: systems that transform observable features into probability estimates about underlying states.

We showed that trained automatons outperform human experts in many domains, not because they're smarter but because they're consistent. They represent human expertise with the noise removed.

But we also confronted the limitations: the ground truth problem (we're training on human bias), the feedback loop problem (models amplify their own errors), and the accountability problem (no one can explain individual decisions).

The appropriate conclusion is not that automatons should replace humans, nor that humans should resist automation. Rather, we need a sophisticated understanding of where consistency matters more than flexibility, where volume demands automation, and where human judgment remains indispensable.

Kahneman's central insight applies to both sides: humans are flawed, but so are the models trained on human decisions. The question is not whether to automate, but when, how, and with what safeguards.

The Bayesian inference pattern—from evidence to hypothesis, from observation to probability, from features to decisions—is powerful and ubiquitous. Understanding it is essential for anyone making decisions, evaluating tests, or deploying AI systems in the real world.

Your model might beat you. But only you can decide when it should.

## References

```{bibliography}
:filter: docname in docnames
```

<div style="margin-bottom: 100px;"></div>
