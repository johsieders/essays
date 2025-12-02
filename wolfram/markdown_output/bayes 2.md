13.2.2025
The simple story
see Oxford Talk

## Bayes

(see: bayes.ipynb)
probability, conditional probability
Bayesian chain rule, Total probability, Bayes' theorem
Let A, B be any events. Bayes' Theorem tells us that

$P[A|B] = \frac{P[A]}{P[B]} P[B|A]\text{  $
$x^{3 $
Let $x$be a real variable, and let $y$ be another real variable such that $x \cdot  y = 0$. 

This is a table: $\text{Table}[2*n,\{n,1,3\}]$

\text{Probability}[x{}^{\wedge}2>1\unicode{f3d3}x>1/2, x\unicode{f3d2}\text{LaplaceDistribution}[0,1/2]] \text{(*} \text{ESC} \text{cond} \text{ESC},
\backslash \backslash [\text{Conditioned}] \text{*)}
\text{(*} \text{ESC} \text{dist} \text{ESC}, \backslash \backslash [\text{Distributed}] \text{*)}

\text{PDF}[\text{BernoulliDistribution}[p], k] \text{(*} (\text{probability}) \text{density} \text{function} \text{*)}
\text{CDF}[\text{BernoulliDistribution}[p], k] \text{(*} (\text{cumulative}) \text{distribution} \text{function} \text{*)}

\text{TraditionalForm}[\text{let x be a real number}]
\text{Row}[\{\text{Let }, \text{Style}[\text{x}, \text{Italic}], \text{ be a real number}\}]

\text{Table}[2*n,\{n,1,3\}]

\begin{doublespace}
\noindent$\text{Probability}\left[\{\{6400.,361.\},\{0.,1.\}\}>1\unicode{f3d3}\{\{80.,19.\},\{0.,1.\}\}>\frac{1}{2},\{\{80.,19.\},\{0.,1.\}\}\unicode{f3d2}\text{LaplaceDistribution}\left[0,\frac{1}{2}\right]\right]$
\end{doublespace}

\begin{doublespace}
\noindent$\begin{array}{ll}
 \{ & 
\begin{array}{ll}
 1-p & k==0 
 p & k==1 
 0 & \text{True} 
\end{array}
 
\end{array$
\end{doublespace}

\begin{doublespace}
\noindent$\begin{array}{ll}
 \{ & 
\begin{array}{ll}
 0 & k<0 
 1-p & 0\leq k<1 
 1 & \text{True} 
\end{array}
 
\end{array$
\end{doublespace}

\begin{doublespace}
\noindent$\text{let x be a real number$
\end{doublespace}

\begin{doublespace}
\noindent$\text{Let }\text{x}\text{ be a real number$
\end{doublespace}

\begin{doublespace}
\noindent$\{2,4,6\$
\end{doublespace}


### Examples

life expectancy, Monty Hall, bags on a plane (AI33: tipping point)
conditional probability vs causality

### Bayesian Decisions

P[cancer$|$test positive], P[test positive$|$cancer]
P[smoker$|$cancer], P[cancer$|$smoker]
prior probability, posterior probability, likelihood, likelihood ratio
False/true positives/negatives
precision, accuracy, recall, confusion matrix
More examples: Morse, alarm, mammography, Cabs
test vs. action AI35

\text{mammography} = \{\{8788., 1198.\}, \{4., 10.\}\};
\text{test} = \{\{85., 6.\}, \{5., 4.\}\};
\text{cabs} = \{\{6800., 1700.\}, \{300., 1200.\}\};
\text{smoker} = \{\{80., 19.\}, \{0., 1.\}\};
m = \text{smoker};

\text{total} = \text{Total}[m, 2];
\text{prior} = \{\text{Total}[m[[1]]], \text{Total}[m[[2]]]\};\text{   }\text{(* row sums *)}
\text{evidence} = \text{Total}[m];\text{                   }\text{(* col sums *)}

\text{likelihood} = m/\text{prior};
\text{posterior} = \text{Transpose}[\text{Transpose}[m]/\text{evidence}];
\text{likelihoodRatio} = \text{Transpose}[\text{Transpose}[\text{likelihood}]/\text{evidence}]*\text{total};

\text{check} = \text{prior} * \text{likelihoodRatio} - \text{posterior}

\text{Joint Distribution}
\text{Grid}[m/\text{total}, \text{Frame}\text{-$>$\text{All}, \text{Background}\text{-$>$\text{GrayLevel}[0.95,1.], \text{ItemSize}\text{-$>$8]
\text{Likelihood}
\text{Grid}[\text{likelihood}, \text{Frame}\text{-$>$\text{All}, \text{Background}\text{-$>$\text{LightBlue}, \text{ItemSize}\text{-$>$8]
\text{Prior}
\text{Grid}[\{\text{prior}/\text{total}\}, \text{Frame}\text{-$>$\text{All}, \text{Background}\text{-$>$\text{LightBrown}, \text{ItemSize}\text{-$>$8]
\text{Likelihood Ratio}
\text{Grid}[\text{likelihoodRatio}, \text{Frame}\text{-$>$\text{All}, \text{Background}\text{-$>$\text{LightGreen}, \text{ItemSize}\text{-$>$8]
\text{Posterior}
\text{Grid}[\text{posterior}, \text{Frame}\text{-$>$\text{All}, \text{Background}\text{-$>$\text{LightYellow}, \text{ItemSize}\text{-$>$8]

\begin{doublespace}
\noindent$\{\{99.,94.05\},\{0.,4.95\}\$
\end{doublespace}

\begin{doublespace}
\noindent$\text{Joint Distribution$
\end{doublespace}

\begin{doublespace}
\noindent$\begin{array}{cc}
 0.8 & 0.19 
 0. & 0.01 
\end{array$
\end{doublespace}

\begin{doublespace}
\noindent$\text{Likelihood$
\end{doublespace}

\begin{doublespace}
\noindent$\begin{array}{cc}
 0.808081 & 0.191919 
 0. & 1. 
\end{array$
\end{doublespace}

\begin{doublespace}
\noindent$\text{Prior$
\end{doublespace}

\begin{doublespace}
\noindent$\begin{array}{cc}
 0.99 & 0.01 
\end{array$
\end{doublespace}

\begin{doublespace}
\noindent$\text{Likelihood Ratio$
\end{doublespace}

\begin{doublespace}
\noindent$\begin{array}{cc}
 1.0101 & 0.959596 
 0. & 5. 
\end{array$
\end{doublespace}

\begin{doublespace}
\noindent$\text{Posterior$
\end{doublespace}

\begin{doublespace}
\noindent$\begin{array}{cc}
 1. & 0.95 
 0. & 0.05 
\end{array$
\end{doublespace}

x = \{\{10, 20\}, \{30, 40\}\};
y = \{3, 4\};

x = \{\{80., 19.\}, \{0., 1.\}\};
\text{Total}[x] \text{(* col sums *)}
\{\text{Total}[x[[1]]], \text{Total}[x[[2]]]\} \text{(* row sums *)}

\begin{doublespace}
\noindent$\{80.,20.\$
\end{doublespace}

\begin{doublespace}
\noindent$\{99.,1.\$
\end{doublespace}

#### Computing the frequencies of dots and dashes

\text{morseAlphabet} = <|
\text{   }\text{A} \text{-$>$ \text{.-},
\text{   }\text{B} \text{-$>$ \text{-...},
\text{   }\text{C} \text{-$>$ \text{-.-.},
\text{   }\text{D} \text{-$>$ \text{-..},
\text{   }\text{E} \text{-$>$ .,
\text{   }\text{F} \text{-$>$ \text{..-.},
\text{   }\text{G} \text{-$>$ \text{--.},
\text{   }\text{H} \text{-$>$ \text{....},
\text{   }\text{I} \text{-$>$ \text{..},
\text{   }\text{J} \text{-$>$ \text{.---},
\text{   }\text{K} \text{-$>$ \text{-.-},
\text{   }\text{L} \text{-$>$ \text{.-..},
\text{   }\text{M} \text{-$>$ \text{--},
\text{   }\text{N} \text{-$>$ \text{-.},
\text{   }\text{O} \text{-$>$ \text{---},
\text{   }\text{P} \text{-$>$ \text{.--.},
\text{   }\text{Q} \text{-$>$ \text{--.-},
\text{   }\text{R} \text{-$>$ \text{.-.},
\text{   }\text{S} \text{-$>$ \text{...},
\text{   }\text{T} \text{-$>$ -,
\text{   }\text{U} \text{-$>$ \text{..-},
\text{   }\text{V} \text{-$>$ \text{...-},
\text{   }\text{W} \text{-$>$ \text{.--},
\text{   }\text{X} \text{-$>$ \text{-..-},
\text{   }\text{Y} \text{-$>$ \text{-.--},
\text{   }\text{Z} \text{-$>$ \text{--..},
\text{   }1 \text{-$>$ \text{.----},
\text{   }2 \text{-$>$ \text{..---},
\text{   }3 \text{-$>$ \text{...--},
\text{   }4 \text{-$>$ \text{....-},
\text{   }5 \text{-$>$ \text{.....},
\text{   }6 \text{-$>$ \text{-....},
\text{   }7 \text{-$>$ \text{--...},
\text{   }8 \text{-$>$ \text{---..},
\text{   }9 \text{-$>$ \text{----.},
\text{   }0 \text{-$>$ \text{-----},
\text{   }. \text{-$>$ \text{.-.-.-},
\text{   }, \text{-$>$ \text{--..--},
\text{   }? \text{-$>$ \text{..--..},
\text{   }' \text{-$>$ \text{.----.},
\text{   }! \text{-$>$ \text{-.-.--},
\text{   }/ \text{-$>$ \text{-..-.},
\text{   }( \text{-$>$ \text{-.--.},
\text{   }) \text{-$>$ \text{-.--.-},
\text{   }\& \text{-$>$ \text{.-...},
\text{   }: \text{-$>$ \text{---...},
\text{   }; \text{-$>$ \text{-.-.-.},
\text{   }= \text{-$>$ \text{-...-},
\text{   }+ \text{-$>$ \text{.-.-.},
\text{   }- \text{-$>$ \text{-....-},
\text{   }\_ \text{-$>$ \text{..--.-},
\text{   }\texttt{"} \text{-$>$ \text{.-..-.},
\text{   }\$ \text{-$>$ \text{...-..-},
\text{   }@ \text{-$>$ \text{.--.-.},
\text{   }  \text{-$>$ /
|>;

\text{letterFrequencies} = <|
\text{   }\text{A} \text{-$>$ 8.17,
\text{   }\text{B} \text{-$>$ 1.49,
\text{   }\text{C} \text{-$>$ 2.78,
\text{   }\text{D} \text{-$>$ 4.25,
\text{   }\text{E} \text{-$>$ 12.70,
\text{   }\text{F} \text{-$>$ 2.23,
\text{   }\text{G} \text{-$>$ 2.02,
\text{   }\text{H} \text{-$>$ 6.09,
\text{   }\text{I} \text{-$>$ 6.97,
\text{   }\text{J} \text{-$>$ 0.15,
\text{   }\text{K} \text{-$>$ 0.77,
\text{   }\text{L} \text{-$>$ 4.03,
\text{   }\text{M} \text{-$>$ 2.41,
\text{   }\text{N} \text{-$>$ 6.75,
\text{   }\text{O} \text{-$>$ 7.51,
\text{   }\text{P} \text{-$>$ 1.93,
\text{   }\text{Q} \text{-$>$ 0.10,
\text{   }\text{R} \text{-$>$ 5.99,
\text{   }\text{S} \text{-$>$ 6.33,
\text{   }\text{T} \text{-$>$ 9.06,
\text{   }\text{U} \text{-$>$ 2.76,
\text{   }\text{V} \text{-$>$ 0.98,
\text{   }\text{W} \text{-$>$ 2.36,
\text{   }\text{X} \text{-$>$ 0.15,
\text{   }\text{Y} \text{-$>$ 1.97,
\text{   }\text{Z} \text{-$>$ 0.07,
\text{   }. \text{-$>$ 6.57,
\text{   }, \text{-$>$ 6.14,
\text{   }? \text{-$>$ 0.08,
\text{   }! \text{-$>$ 0.05,
\text{   }' \text{-$>$ 1.52,
\text{   }\texttt{"} \text{-$>$ 2.62,
\text{   }: \text{-$>$ 0.34,
\text{   }; \text{-$>$ 0.33,
\text{   }- \text{-$>$ 1.12,
\text{   }\_ \text{-$>$ 0.03,
\text{   }( \text{-$>$ 0.27,
\text{   }) \text{-$>$ 0.27,
\text{   }[ \text{-$>$ 0.02,
\text{   }] \text{-$>$ 0.02,
\text{   }\{ \text{-$>$ 0.01,
\text{   }\} \text{-$>$ 0.01,
\text{   }/ \text{-$>$ 0.03,
\text{   }\backslash \texttt{"} \text{-$>$ 0.02,
\text{   }\& \text{-$>$ 0.03,
\text{   }@ \text{-$>$ 0.01,
\text{   }\# \text{-$>$ 0.01,
\text{   }\$ \text{-$>$ 0.01,
\text{   }\% \text{-$>$ 0.01,
\text{   }{}^{\wedge} \text{-$>$ 0.01,
\text{   }* \text{-$>$ 0.02,
\text{   }+ \text{-$>$ 0.01,
\text{   }= \text{-$>$ 0.01
|>;

\text{dotCount} = \text{Map}[\text{StringCount}[\#, .]\&, \text{morseAlphabet}];
\text{dotFrequencies} = \text{Merge}[\{\text{dotCount}, \text{letterFrequencies}\}, \text{Apply}[\text{Times}]];
\text{dotTotal} = \text{Total}[\text{dotFrequencies}];

\text{dashCount} = \text{Map}[\text{StringCount}[\#, -]\&, \text{morseAlphabet}];
\text{dashFrequencies} = \text{Merge}[\{\text{dashCount}, \text{letterFrequencies}\}, \text{Apply}[\text{Times}]];
\text{dashTotal} = \text{Total}[\text{dashFrequencies}];

\text{total} = \text{dotTotal} + \text{dashTotal};
\text{dotRatio} = \text{dotTotal}/\text{total}
\text{dashRatio} = \text{dashTotal}/\text{total}

\begin{doublespace}
\noindent$0.554697$
\end{doublespace}

\begin{doublespace}
\noindent$0.445303$
\end{doublespace}

### Bayesian Networks

Bayesian networks - a generalization of Bayesian decisions

