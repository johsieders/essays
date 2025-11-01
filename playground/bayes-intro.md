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

## Baysian Tests

Let's take the example of professional musicians with an estimated base rate of 0.1%, and assume that 5% of the population 
corresponds to what we call 'gifted for music'. This means:
On average, there is one professional musician for every 1,000 people.
If we assume that all professional musicians belong to the gifted 5%, a gifted individual would be one in 50 rather than one in 1,000, 
and the probability of being a professional musician increases from 0.1% to 2%. Some terminology is in order: 

* The *evidence* is information that is readily available here: 'is gifted at music'. 
* The *hypothesis* describes what's going on behind the scenes, here: 'is a professional musician'.
* The *likelihood* is the probability of positive evidence, here 5%.
* The *likelihood ratio* is the factor (here: 20). It is a measure of the information gained by knowing the evidence 
(is gifted at music) with respect to the hypothesis (is a professional musician).

This pattern is ubiquitous in science, and it has a name: *Baysian test*. A pertinent example is a cancer screening test:
* The test result is the evidence (positive if cancer is suspected).
* The hypothesis is that the patient has cancer. 
* The base rate is the prevalence or the proportion of people with that type of cancer (which is often very small, at 0.1% or less).

In real-world tests, the likelihood ratio is often around 10 (20 would be very good), meaning that a positive test result
amounts to a probability of 1% to 2% of having cancer. Did you know?
Other examples include alarm systems (evidence = alarm, hypothesis = fire, burglary, whatever) 
and message transmission (evidence = bit received, hypothesis = bit sent).

A perpetual source of confusion arises from true/false positives/negatives. The following pattern is easy to remember: 
* *True positives (TP)* are professional musicians who are gifted at music.  
* *False negatives (FN)* are professional musicians who are not gifted at music, a rare and unpleasant case that we cannot exclude.   
* *False positives (FP)* are the countless gifted people who, for one reason or another, have chosen a different career.   
* The rest of us are *true negatives (TN)*: neither gifted nor musicians.

For the cancer screening, the same pattern reads as: 
* *True positives* are patients with cancer tested positive.  
* *False negatives* are patients with cancer tested negative, a catastrophy.   
* *False positives* are patients without cancer tested positive. 
* The rest of us are *true negatives*: no cancer and tested negative.

The *confusion matrix* summarizes this situation for both musicians and cancer. 
Assuming that we have virtually no false negatives, it looks like this:

|                       | hypothesis false | hypothesis true | 
|-----------------------|:----------------:|:---------------:|
| **evidence negative** |     TN = 95%     |     FN = 0%     |   
| **evidence positive** |    FP = 4.9%     |    TP = 0.1%    |  


In these terms, the base rate is $(TP+FN)/(TP+TN+FP+FN) = 0.1%$. 
The evidence is often called *prediction*: a positive test *predicts* cancer truly or falsely.
Assessing a test is not obvious at all. 
There are numerous alternative, widely differing measures; the four most important being these:

* *Accuracy* is the share of correct predictions: $(TP+TN)/(TP+TN+FP+FN)$
* *Precision* is the share of true positives among all positive results: $TP/(TP+FP)$. This is what patients are really interested in.
* *Recall* is the share of true positives among all those who should have been positive: $TP/(TP+FN)$
* *Specificity* is the share of true negatives among all those who should have been negative: $TN/(TN+FP)$

The following table (identical for cancer and musicians) gives typical values, assuming that $FN$ is close to $0$.


| What             | Value | 
|:-----------------|:------|
| base rate        | 0.1%  |  
| likelihood       | 5.0%  |   
| likelihood ratio | 20    |
| accuracy         | 95%   |   
| precision        | 2%    |  
| recall           | 100%  |   
| specificity      | 95%   |   

There is often a deep asymmetry between evidence and hypothesis. 
Let's look at the pharmaceutical company developing the cancer screening tool.
In the lab, they perform tests on, say, a thousand people with known status
to find out the probability of a positive test result in people with or without cancer.
The company must be able to assess the status of a patient with certainty close to 100%. This procedure is typically long, expensive, 
and can only be performed in the lab. In the field, the test is applied to millions of patients. 
It is typically quick and cheap but has a much reduced certainty. Patients want to know: 
'Given my test result, how likely am I to have cancer?' False negative results would be catastrophic, but hopefully, they are rare.
False positives are, in general, frequent and lead to undesirable anxiety. But for all their shortcomings, 
Baysian tests have been around for a century or so, and seem to be here to stay. 

## Baysian Decision-Making

Any Bayesian test could be used as an automaton that makes decisions based on the evidence.
While this sounds foolish given the low precision values we have just seen, 
it is successfully applied in many real-world applications. The main message of {cite}`kahneman2021noise`
is that trained automatons systematically outperform humans at decision-making, and Kahneman provides hair-rising examples
of human misjudgement as evidence. This can depend on the system — such as the American justice system — or on the decision maker's mood. 

Our journey to Baysian decision-making starts with the Apgar test, a well-known, 
worldwide established method of assessing the condition of a newborn baby.
A physician observes five criteria
(appearance, pulse, grimace, activity, and respiration), each of which is given a score of 0 (poor), 1 (medium) or 2 (good).  
The Apgar score is the sum of these five values; a score of seven or higher is generally regarded as healthy, otherwise as critical.
We can see that this test perfectly fits into the framework of evidence and hypothesis. 
It could be used as a decision automaton: a score of seven or more means: nothing to do, otherwise: take appropriate measures. 
I assume that, in reality, there is a responsible doctor around.

In a way, the Apgar test is serendipitous because all five scores seem equally important.
Let's make a little thought experiment and assume, for a moment that life is more complicated:
Appearance could be more important, grimacing a bit less so, and so on. We need to assign weights to each observation, and
the problem is finding values that accurately reflect the importance of each observation.
These weights sum to one, meaning there are actually only four variables, but that's a technical detail.

Here is a key idea: Any set of weights defines an Apgar variant, and the question is how to find the optimal solution,
the weights that work best in whatever sense. This is how it's done: 
You need data on a large number of newborn babies, say 1,000, with 
five corresponding observations, as well as their true state (healthy or critical). 
This results in 1,000 equations with five unknowns. 
Some maths and programming will then provide the weights that best fit. 
Once you have done that, you have trained your first neural network!

It is a basic one with only one layer and five parameters, while 
real-world neural networks can have billions, interconnected in various ways, forming a complex neural network. 
Though, the principle is the same, with some technical issues, such as what is meant by 'best fit',
what if there are a million data points rather than a thousand? These issues are secondary, however. 
The crucial question is how representative your data is. 
The perfect training set would reflect the base rates of sex, race, social standing,
and any other criteria you can think of, but this is hard to get by.
Assuming that we have decent training data, we now own a trained Apgar test that could outperform the original one.
Both Apgar tests (plain and trained) fit perfectly into the framework of Bayesian tests.

The trained Apgar test was introduced as a thought experiment, meant to prepare the way for Bayesian decision-making.
Here we go. Imagine an insurance company trying to automate its claims handling process. 
The first step would be to transform each claim into a set of scores — probably more than five, likely around 50 or more.
This is essential. You always start by reducing a real world situation to a set (a vector) of scores (sheer numbers), and it 
requires much skill finding suitable ones. Once the scores are in place, 
the company proceeds exactly as we did in our hypothetical parametric Apgar test. 
They gather test data — thousands of samples — with known scores and decisions. 
For the sake of simplicity, we assume that there are only two possible outcomes: accept or reject.
The same maths and programs as above yield a best-fitting set of weights to be assigned to the scores,
and, as before, we obtain a trained test that fits perfectly into the framework of Bayesian tests.
The quality depends again crucially on the quality of the training data. 
The test reflects exactly what has been taught to it.
It may turn out to be too lenient or too severe. 
If the training data varies significantly, the test results can be close to random.
But the test can be excellent if the training data are good.
There is a crucial difference between newborn children and insurance claims: 
A newborn baby has a true state that can be assessed to any degree of certainty.
But there is no such truth in an insurance claim, whose assessment depends on the expert investigating the case.
{cite}`kahneman2021noise` claims that Bayesian decision-making consistently outperforms human experts, and he goes even one step further:
Imagine you train your automaton with the decisions of one particular person, their deciions over the last few years.
That automaton is a model of that person, supposed to judge exactly as the original would do. 
But, as Kahnemann puts it, your model beats you, and that consistently. Here is why: 
Your model has always the same mood, never spent a bad night, never quarreled with their partner and so on. 
The model models you with the noise removed and is therefore better than you!



## References

```{bibliography}
:filter: docname in docnames
```






<div style="margin-bottom: 100px;"></div>
