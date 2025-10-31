 # The Bayesian Inference Pattern


We are easily fooled, as {cite}`kahneman2011thinking` tells us. Here is an example: You are given two lists. The first one 
contains descriptions of individuals, with passages such as 'a meek and tidy soul with a need for order and structure'. The second list
is simply a list of professions, such as 'librarian'. You are asked how likely a given individual is to exercise one of the
professions. Most people only consider how well the description matches the profession. But consider astronauts or lighthouse keepers.
They are so rare that, however well the description fits the salient traits, the likelihood of actually pursuing them is extremely low.
This is what Kahneman calls 'what you see is all there is' (WYSIATI), our tendency to think in a box.
What people forget to take into account is the *base rate*, the frequency of the given profession—low for astronauts, high for clerks.
The probability of actually being a librarian, an astronaut, etc. must be something like the product of the base rate 
and some factor determined by the match between the individual and the profession.

Let's take the example of professional musicians with an estimated base rate of 0.1%, and assume that 5% of the population 
corresponds to what we call 'gifted for music'. This means:
On average, there is one professional musician for every 1,000 people.
If we assume that all professional musicians belong to the gifted 5%, a gifted individual would be one in 50 rather than one in 1,000. 
Therefore, the probability of being a professional musician increases from 0.1% to 2%.

Some terminology is in order: The *evidence* is information that is readily available, here: 'is gifted at music'. The *hypothesis*
describes what's going on behind the scenes, here: 'is a professional musician'.
The factor (here: 20) is called the *likelihood ratio*. It is a measure of the information gained by knowing the evidence 
(is gifted at music) with respect to the hypothesis (is a professional musician). 

A perpetual source of confusion arises from true/false positives/negatives. The following pattern is easy to remember: 
True positives are professional musicians who are gifted at music. 
False negatives are professional musicians who are not gifted at music, a rare and unpleasant case that we cannot exclude. 
False positives are the countless gifted people who, for one reason or another, have chosen a different career. 
The rest of us are true negatives: neither gifted nor musicians.

This pattern is ubiquitous in science. A pertinent example is a cancer screening test.
The test result is the evidence (it is positive if cancer is suspected), and the hypothesis is that the patient has cancer. 
The base rate is the prevalence or the proportion of people with that type of cancer (which is often very small, at 0.1% or less).
In real-world tests, the likelihood ratio is often around 10 (20 would be very good), meaning that a positive test result
amounts to a probability of 1% to 2% of having cancer. Did you know?

The hypothesis ('Is the cancer real?') requires thorough and expensive investigation, which is not 100 per cent reliable itself. 
it is important to distinguish between the lab and the field.

In the lab, the pharmaceutical company developing the screening tool performs tests on, say, several hundred people with known status
to learn the probability of a positive test result in people with or without cancer.
In the field, the evidence is gathered a million times. Patients want to know: 
'Given my test result, how likely am I to have cancer?' False negative results would be catastrophic, but hopefully they are rare.
False positives are, in general, frequent. They lead to undesirable anxiety. 
Other examples include alarm systems 
(evidence = alarm, hypothesis = fire, burglary, whatever) and message transmission (evidence = bit received, hypothesis = bit sent).
Understanding the meaning of true/false positives/negatives in each case is a useful exercise.

The Apgar test is a well-established method of assessing the condition of a newborn baby. A physician observes five criteria:
(appearance, pulse, grimace, activity, and respiration), each of which is given a score of 0 (poor), 1 (medium) or 2 (good).  
The Apgar score is the sum of these five values; a score of seven or higher is generally regarded as healthy, otherwise as critical. 
In the case of the Apgar test, the evidence is given as five scores, 
which are simply added. 
We can see that this test perfectly fits into the framework of evidence and hypothesis and that it could be used
as a decision automaton: seven or more is ok, otherwise nok.

In a way, the Apgar test is serendipitous because all five scores seem to be equally important.
Let's assume for a moment that we need to assign weights to each observation:
Appearance could be more important, grimacing a bit less so, and so on. We end up with five 
unknowns, called weights, assigned to each observation. 
These sum to one, meaning there are actually only four variables, but that's only a detail.
The problem is finding weights that accurately reflect the importance of each observation.

This is done as follows: You need data on a large number of newborn babies, say 1,000, with 
five corresponding observations, as well as their true state (healthy or critical). This results in 1,000 equations with five unknowns. 
Some maths and programming will then provide the weights that best fit. 
Once you have done that, you have trained your first neural network! 
This is a basic 'hello world' network with only five parameters, 
while real-world neural networks have billions, interconnected in various ways, forming a complex neural network. 
However, the principle is the same. 
There are some technical issues, such as what is meant by 'best fit',
what if there are a million data points rather than a thousand? These issues are secondary, however. 
The crucial question is how representative your data is. 
The perfect training set would reflect the base rates of sex, race, social standing,
and any other criteria you can think of, but this is hard to get by.
In any case, the hypothetical parameterized Apgar test fits perfectly into the framework of evidence and hypothesis 
and could be used as a decision automaton: seven or more is OK; otherwise, not OK.

The Apgar test has probably never been parameterized, but many other tests have been.
Imagine an insurance company trying to automate its claims handling process. 
The first step would be to transform each claim into a set of scores — probably more than five, likely around 100.
They then proceed exactly as we did in our hypothetical parametric Apgar test. 
They gather test data — tens of thousands of samples — with known scores and decisions. 
For the sake of simplicity, we assume that there are only two possible outcomes: accept or reject.
The same maths and programs yield the best-fitting set of parameters, and, as before, we obtain a 
test that fits perfectly into the framework of evidence and hypothesis and can be used as a decision automaton. 
As before, the quality of our test results depends crucially on the quality of the training data. 
The test reflects exactly what has been taught to it.
It may turn out to be too lenient or too severe. 
If the training data varies significantly, the test results can be close to random.
But the test can be excellent if the training data are good.

How do trained automatons compare to humans? {cite}`kahneman2011thinking` and {cite}`kahneman2021noise` have a clear message: 
Humans are bad at making decisions — leave it to the automatons!  Kahneman provides shocking examples of how wrong humans can be. 
This can depend on the system — such as the American justice system — or on the decision maker's mood. 


## References

```{bibliography}
:filter: docname in docnames
```






<div style="margin-bottom: 100px;"></div>
