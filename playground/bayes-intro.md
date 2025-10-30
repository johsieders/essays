 # From Bayes to Neural Networks


We are easily fooled, as {cite}`kahneman2011thinking` tells us. Here is an example: You are given two lists. The first one 
contains descriptions of individuals, with passages such as 'a meek and tidy soul with a need for order and structure'. The second list
is simply a list of professions, such as 'librarian'. You are asked how likely a given individual is to exercise one of the
professions. Most people are only guided by how well the description matches the profession. But consider the professions of 
astronaut or lighthouse keeper.
These professions are so rare that, however well the description fits the 
salient traits, the likelihood of actually pursuing them is extremely low.
This is what Kahneman calls 'what you see is all there is' (WYSIATI), our tendency to think in a box.
What people forget to take into account is the base rate, or the probability of being a librarian, an astronaut, etc.
which must be something like the product of the base rate 
(the proportion of the given profession in a country), and some factor determined by the match between the individual and the profession.
Let's take the example of professional musicians with an estimated base rate of 0.1%, and assume that 5% of the population 
corresponds to what we call 'gifted for music'.

This means: A randomly chosen individual has a 0.1% probability of being a professional musician. 
An individual matching the description has a probability of about 20 × 0.1% = 2%, since 20 × 5% = 100%.
This factor (here, 20) is a measure of the information gained by knowing the *evidence* (is gifted at music). 
with respect to the *hypothesis* (is a professional musician). It is called the likelihood ratio. A perpetual source of
confusion arises from true/false positives/negatives. Here we go: True positives are professional musicians who are gifted at music. 
False negatives are professional musicians who are not gifted at music, a rare and unpleasant case that we cannot exclude. 
False positives are countless gifted people who, for one reason or another, have chosen a different career. 
The rest of us are true negatives: neither gifted nor musicians.

This pattern is ubiquitous in science. A pertinent example is a cancer screening test.
The test result is the evidence (it is positive if cancer is suspected), and the hypothesis is that the patient has cancer. 
The base rate is the prevalence or proportion of people with that type of cancer (which is often very small, at around 0.1% or less).
In real-world tests, the likelihood ratio is often around 10 (20 would be very good), meaning that a positive test result
amounts to a probability of 1% to 2% of having cancer. Did you know?

The hypothesis ('Is the cancer real?') requires thorough and expensive investigation, which is not 100 per cent reliable itself. 
The pharmaceutical company that is developing the screening tool performs tests on several hundred people with known status. 
This gives them an idea of the probability of a positive test result in people with or without cancer. 
The evidence is gathered a million times in the field. There, patients have a different concern: 
Given my test result, how likely am I to have cancer? False negative results would be catastrophic and, hopefully, rare.
False positive results are unavoidable, but they lead to undesirable anxiety. 


---

## References

```{bibliography}
:filter: docname in docnames
```






<div style="margin-bottom: 100px;"></div>
