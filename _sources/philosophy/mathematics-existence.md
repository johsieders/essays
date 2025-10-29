# What Exists in Mathematics?

*A Defense of Formalism Against Platonism*

*Johannes Siedersleben, assisted by Claude Sonnet 4.5     
October 2025*

---

Do mathematical objects exist independently of human minds? When we prove theorems about prime numbers, are we discovering pre-existing truths in some Platonic realm, or are we manipulating symbols according to rules we invented? This ancient question has gained new urgency as computers formalize mathematics and as we confront the "unreasonable effectiveness" of mathematics in physics.

My position: mathematics is human-constructed formal symbol manipulation, refined by selection pressure from empirical applications. Mathematical "existence" means consistency within a chosen formal system, not discovery of pre-existing abstract objects. Prime numbers exist exactly as much as the Sicilian Defense exists—as patterns within rule structures humans created.

## Numbers as Models of What We See

When we have five fingers and five pebbles, they share something we might call "fiveness," even though fingers and pebbles differ in every other respect. Numbers emerge as abstractions from this counting experience. We strip away everything particular about the objects—their color, texture, weight—and retain only their countability.

There must have been a first person to grasp the concept of "three" as something distinct from three particular objects. Numbers were invented by humans through this abstraction process. They exist, at minimum, in our minds as abstract concepts. Whether they exist anywhere else is the question at stake.

The mathematical process follows a three-stage pattern. First, we abstract from the real world to create formal models—numbers, geometric figures, algebraic structures. Second, we reason within these abstractions, proving theorems and developing theories. Third, we apply our results back to the real world. Remarkably, five plus seven equals twelve regardless of whether we're adding fingers, pebbles, or days. This universal applicability demands explanation, but the explanation need not invoke Platonic realms. As {cite}`leifer2016mathematics` argues, mathematics can be understood as a natural science—"the study of regularities, within regularities, within regularities of the natural world"—which explains why it applies so effectively to physics.

Consider another example: the anonymous scientist who, long before the Common Era, studied round objects like bowls, wheels, and the sun. He abstracted away properties such as weight, color, and the third dimension, eventually arriving at the idea of roundness shared by these objects: the circle was invented. Much later, Archimedes calculated its surface, circumference, and the number π. The circle is an abstraction or a model; bowls, wheels, and the sun are tangible instances, but they are never perfectly round. Archimedes' formula is exact for an ideal circle (which isn't real), but approximate otherwise.

Einstein captured this tension perfectly {cite}`einstein1950laws`: "As far as the laws of mathematics refer to reality, they are not certain; and as far as they are certain, they do not refer to reality."

## The Chess Analogy

Consider chess. The game has fixed, arbitrary rules invented by humans. Within this rule structure, certain truths are indisputable: a knight moves in an L-shape, castling requires specific conditions, checkmate ends the game. These truths are objective, eternal, and the same for everyone who plays chess. But they are relative to arbitrary, man-made rules.

No one believes chess pieces exist in some Platonic realm, waiting to be discovered. We invented chess. The rules could have been different—and indeed, there are chess variants with different boards, different pieces, different rules. Yet within standard chess, truth is perfectly clear and binding.

Mathematics works the same way. Natural numbers populate the set ℕ and are subject to Peano's axioms, which are arbitrary and man-made, just like chess rules. The axioms are the rules of the game. Logical steps from one statement to the next are the moves. Mathematical theorems are positions you can reach by legal moves from the starting position (the axioms).

What do numbers have in common with chess? Numbers are the chess pieces, the set ℕ is the chessboard, the axioms are the chess rules, and logical inference is moving the pieces. Peano arithmetic is just another game. Alternative games exist: Robinson arithmetic or Presburger arithmetic, where some of Peano's axioms are dropped—a bit like chess without knights or bishops.

Do these different arithmetical systems agree that 1 + 1 = 2? They do: according to an axiom shared by all three systems, every natural number has exactly one successor (that's what "+1" means), and the successor of 1 is called 2. To say that 1 + 1 = 2 is like saying that a triangle has three angles. It's true by definition within the system.

Chess has no counterpart in the real world—it's pure rule-following. Mathematics, by contrast, models part of reality. Numbers model everything that can be counted: five apples, five fingers, and five pounds share the property of fiveness, and 7 + 5 = 12, no matter what is being added. This is the crucial difference, and it explains why mathematical "rules" aren't entirely arbitrary. They have been adjusted over time until mathematics matches the world.

## Mathematics as Formal System

Chess illustrates the formal nature of mathematics, but mathematics extends far beyond anything with obvious empirical applications. Mathematicians freely generalize and explore. Complex numbers, quaternions, the number googol (10^100), and far more exotic constructs emerge naturally as extensions of simpler systems.

The key insight: we choose our axiom systems—whether Robinson arithmetic, Presburger arithmetic, or ZFC set theory—and we choose our rules of reasoning, like modus ponens. We experiment with these formal systems to discover what they can do.

Even basic arithmetic facts should be understood as conventional rather than metaphysically necessary. The statement "1 + 1 = 2" is a definition within the Peano axiom system, not a discovery about pre-existing abstract objects. Each number has exactly one successor by definition: the successor of 1 is called 2, and that's the end of the matter. Once we establish Peano arithmetic, theorems follow necessarily from the axioms—but the axioms themselves represent conventional choices, refined over time by what proves useful.

## The Correctness Problem: Symbol Manipulation

Here is a radical claim: mathematics can, at least in theory, be reduced to mere symbol manipulation. A computer can verify proofs mechanically without understanding what they mean. Given formal axioms and inference rules, a machine can check whether a purported proof is valid—just symbol pushing according to syntactic rules.

Consider the proof that √2 is irrational. A computer can verify this proof by checking each logical step, ensuring each follows from previous steps or axioms according to the rules of inference. The computer need not understand what "irrational" means, what square roots are, or why the result matters. It simply manipulates symbols according to rules.

This is not how mathematicians actually work, of course. Human mathematicians think about what theorems mean, develop intuitions, seek elegant arguments. But the *verification* of proofs can be mechanical. This is what proof assistants like Coq and Lean exploit. They formalize mathematics to the point where correctness becomes a computational question: does this string of symbols follow from these axioms according to these rules?

If mathematical truth were discovery of facts about pre-existing Platonic objects, this mechanical verifiability would be mysterious. How could symbol manipulation reveal truths about a transcendent realm? But if mathematics is a formal game we invented—elaborate chess—then mechanical verification makes perfect sense. We're just checking whether someone played by the rules.

The bedrock of mathematical truth is not as solid as it might appear. Around 1900, the foundations of mathematics were completely overhauled by Russell, Cantor, Hilbert, and many others. Existing theorems remained valid, but many proofs had to be revised. In 1931, Gödel shattered mathematics with his incompleteness theorems: many propositions can neither be proved nor disproved within any sufficiently powerful formal system. When will the next Russell come along to revise the foundations again, the next Gödel to reveal even more incompleteness?

## Darwinian Selection of Mathematical Theories

The central puzzle: Why does mathematics "work"? Why does it apply to physical reality with such remarkable precision? The answer lies in understanding mathematics not as discovery but as a selection process analogous to biological evolution.

Mathematics is pseudo-arbitrary. We could have invented other types of mathematics—and we did. We have kept the ones that are still around because they are useful. Similarly, we could have invented other board games, and we certainly did. We have kept the ones that are still around because we like them.

Consider the variation side. Mathematicians freely explore and generalize, proving theorems and developing theories far in excess of what applications require. There are millions of mathematical theorems in the literature, and the vast majority have no known application to physics or engineering. Pure mathematicians pursue questions for their intrinsic interest, follow aesthetic impulses toward elegance, and generalize concepts simply to see where they lead. This generates an enormous inventory of mathematical results, most of which will never find practical use.

On the selection side, physicists and engineers continually pose problems requiring mathematical solutions. They need tools for quantum mechanics, general relativity, fluid dynamics, cryptography, signal processing. When a physics problem arises, physicists search the mathematical inventory for applicable tools. Sometimes they find what they need already developed; sometimes they collaborate with mathematicians to extend existing frameworks.

Examples abound. Functional analysis was substantially developed in response to the needs of quantum mechanics. Riemannian geometry, originally explored for purely mathematical reasons in the 1850s, was revived and extended when Einstein needed it for general relativity in the 1910s. Group theory, developed in the 19th century to understand polynomial equations, became essential for particle physics in the 20th century. Conic sections, studied by Greeks for their geometric beauty, became crucial for orbital mechanics two millennia later.

This creates a survival-of-the-fittest dynamic. Useful mathematics gets refined, taught, celebrated, and remembered. It appears in textbooks, wins Fields Medals, and shapes future research. Useless mathematics, by contrast, is largely forgotten. Papers gather dust in obscure journals. Results are not taught to graduate students. Entire research programs fade away when they produce no applications.

The rules of the mathematical game are not entirely arbitrary. Rather, they have been adjusted over centuries until mathematics matches the world. This is one of the reasons why it works so well. Mathematical systems that failed to model reality were discarded. Those that succeeded were retained, refined, and extended.

New mathematical theories, like new physical theories, enter a Darwinian battlefield. They must prove their worth through applications, internal consistency, fertility for further research. Even if they survive initial scrutiny, they remain forever subject to competition from new theories, to revision in light of new foundations, to abandonment if better frameworks emerge.

## The Axiom of Choice: Selection Determines the Future

The Darwinian selection process continues today and will shape mathematics' future. Consider the Axiom of Choice (AC), one of the most controversial axioms in set theory.

AC states, roughly, that given any collection of non-empty sets, we can choose one element from each set, even if we have no rule for making the choice. This seems innocent but has counterintuitive consequences: it implies the Banach-Tarski paradox (you can decompose a sphere and reassemble it into two spheres of the same size) and the existence of non-measurable sets.

Today, mathematicians can practice mathematics with or without AC. You can work in ZFC (set theory with Choice) or in ZF (set theory without Choice). You can study constructive mathematics, which rejects not only AC but also the law of excluded middle. These are different formal systems, different mathematical "games," and they produce different theorems.

Which will survive? That depends on what proves useful, elegant, and fruitful. If physics or computer science finds applications for constructive mathematics, it may gain prominence. If the consequences of AC prove indispensable for important theories, ZFC will dominate. The selection process is ongoing.

The same applies to alternative arithmetics. You can study number theory using Peano axioms, Robinson axioms, or Presburger axioms. Each system proves different theorems, has different strengths. Which you choose depends on your purposes. This is not discovering pre-existing mathematical reality—it's choosing which formal game to play.

## Physics as a Model of Reality

Physics provides the clearest example of mathematics as modeling rather than discovering. Consider how physicists work: they start with a handful of non-provable principles, such as the constant speed of light or the principle of least action. They then apply appropriate mathematical theories and test the results in the laboratory. This process is repeated until mathematics matches the measurements.

Newton studied how heavy objects move when subjected to gravity. He abstracted away properties such as volume, feel, and color, eventually arriving at the idea of volume-less particles with positive mass, and calculated how they move. Raindrops, apples, and planets are tangible instances, but they have shape, volume, and many other properties. Newton's equations of motion are exact for particles (which aren't real), but approximate otherwise.

Newtonian mechanics is a model—in the mind, on paper, or in a computer—that describes reality and allows us to make predictions, but it is separate from nature. A falling raindrop is completely unaware of Newton's laws. Raindrops have always fallen in the same way. Newton's laws have less effect on objects in motion than a thermometer has on temperature.

Einstein studied particles moving at high relative speeds, a case where classical mechanics fails. He kept the four-dimensional space-time framework and particles, but included the constant speed of light. From his thought experiments, he concluded that observers traveling at high relative speeds would perceive each other in distorted ways. The equations of motion had to be adjusted so that all observers agree, regardless of their relative motion. This led to E = mc² and to relativity theory.

Schrödinger studied the double-slit experiment. He replaced particles moving along definite paths with evolving probabilities called wave functions. In classical mechanics you knew exactly where a particle would be; in quantum mechanics you just get probabilities. Determinism was gone. The idea of continuity was gone: on a small scale, what looks continuous (energy, for example) breaks up into tiny pieces called quanta.

Dirac brought relativity and quantum mechanics together. The formula he found became the equation of motion for quantum field theory (QFT). QFT features mathematical structures that predict four varieties of physics: one is ours (with time and space as we know them), and three others involve time reversal, space inversion, or both. Nobody knows if there are universes described by these other mathematical possibilities.

What have we learned? Science has produced powerful mathematical models that describe the observable world and make good, but imperfect, predictions. None is definitive; each has refined the previous one, been more precise, and often more complicated. The relationship to reality can be obvious (circles), plausible (Newtonian mechanics), puzzling (relativity), unfathomable (quantum mechanics), or mind-boggling (QFT).

This explains why mathematics and physics match so well: physics uses mathematics as its modeling language. Physicists choose mathematical structures that fit observations. When a mathematical model fails to match experiments, physicists adjust the model or develop a new one. The "unreasonable effectiveness" of mathematics dissolves once we recognize that physics is mathematical modeling of reality, not discovery of mathematical reality.

## Predictive Power: Remarkable But Not Miraculous

Mathematical structures sometimes predict completely unobserved phenomena before any experimental confirmation. The Dirac equation predicted antimatter. Maxwell's equations predicted electromagnetic waves. The Higgs mechanism predicted a new particle nearly half a century before detection. These successes are remarkable—but do they require Platonism?

Not necessarily. Consider how prediction works in this framework. Physicists build mathematical models that fit known observations. These models have internal mathematical structure—symmetries, conservation laws, derived consequences. When physicists work out all the implications of their models, they sometimes find predictions about unobserved phenomena. If the model is good (matches reality well), these predictions may come true.

This is impressive but not miraculous. It's what good models do. A geographical map predicts what you'll find if you travel west from here, even if the mapmaker never traveled that direction. The map's predictive power comes from accurately modeling the territory, not from accessing a Platonic realm of abstract geographical forms.

The Lorentz group's mathematical structure, for instance, reveals four disconnected components: our familiar world, plus three exotic possibilities involving time reversal, space inversion, or both. Mathematics generates more structure than we observe. Sometimes experiments later confirm these mathematical possibilities; sometimes they don't. We remember the successes and forget the failures.

What about the hit rate? If mathematical predictions succeeded far more often than chance would allow, that might suggest something beyond mere modeling. But we lack systematic data on prediction success rates. Physicists remember Dirac predicting antimatter; they forget countless failed predictions. This is publication bias and confirmation bias at work.

Moreover, even high success rates wouldn't require Platonism. They might simply show that our mathematical models are very good—that we've refined them through centuries of empirical testing until they capture deep structural features of reality. The models are still models, not discoveries of pre-existing mathematical objects.

Predictive power is remarkable. It shows that mathematics is extraordinarily useful. But "useful" doesn't mean "true in a Platonic sense." It means "matches reality well enough to make accurate predictions." That's all we need and all we can honestly claim.

## Two Varieties of Existence

There are two varieties of existence that matter for this discussion: physical existence and mathematical existence.

**Physical existence** is what we can perceive. Objects, forces, events in space and time. The chair you sit on, the light that reaches your eyes, the planet Earth. Physical existence is empirical—discovered through observation and experiment. It is contingent—the universe could have been otherwise. It is shared—we all perceive the same physical world (with minor variations in perspective).

**Mathematical existence** is what we can think of consistently within chosen axiom systems. Mathematical objects don't exist in space and time. You can't bump into a prime number or measure the weight of a triangle. Mathematical existence means: we can define this object within our formal system and reason about it without contradiction.

This makes mathematical existence system-relative. What exists in ZFC may not exist in constructive mathematics. It makes mathematical existence conventional—we choose which formal system to adopt. The natural numbers exist in Peano arithmetic because that system defines them. Whether they exist "absolutely" is a meaningless question, like asking whether the bishop exists absolutely rather than as a piece in chess.

Our choice of axiom systems is not arbitrary, however. It is driven by a kind of Darwinian evolution. We retain mathematical systems that prove useful for modeling reality, elegant for internal development, fruitful for generating interesting theorems. We discard or forget systems that fail these tests.

Physical theories use mathematical structures to model reality. When Newton modeled gravity, he used mathematical objects called "real numbers" and "differential equations." These mathematical objects don't physically exist—you can't put a differential equation in a test tube. But they provide the language for expressing physical laws.

The match between mathematics and physics is therefore not mysterious. Physics *uses* mathematics. Physicists choose mathematical structures that fit observations. If a mathematical structure fails to model reality, physicists try a different structure. The "effectiveness" of mathematics just means: physicists are good at finding mathematical structures that model reality well.

Why is reality *mathematizable* at all? Why can we model physical phenomena using formal systems? This remains genuinely mysterious. But positing a Platonic realm doesn't explain it. Saying "mathematics applies because mathematical structures exist independently and physical reality instantiates them" merely relocates the mystery. Why should physical reality instantiate mathematical structures? How does the instantiation relationship work? Platonism multiplies entities and relationships without genuinely explaining.

The anti-Platonist position admits ignorance here. We don't know why reality is mathematizable. We observe that it is, we exploit this fact brilliantly, but we have no ultimate explanation. Perhaps the question is unanswerable. Perhaps, as Wittgenstein said, "Explanations come to an end somewhere."

## Allies and Opponents

The position developed here stands in a complex relationship with various philosophical traditions.

### Allies

**Formalists** like Hilbert emphasized mathematics as symbol manipulation according to formal rules. Mathematical truth is provability within a formal system. This aligns well with the view that mathematics is chess-like rule-following rather than discovery of pre-existing objects.

**Nominalists** deny the existence of abstract objects. Only concrete particulars exist. Mathematical talk should be understood as useful fiction or eliminated through paraphrase. The present position shares nominalism's ontological parsimony while preserving mathematics' objectivity through formal rigor.

**Empiricists about mathematics** argue that mathematical knowledge derives from empirical observation and abstraction from physical experience. {cite}`leifer2016mathematics` makes this case powerfully, arguing that mathematics is a natural science like physics or biology. Mathematics studies "regularities, within regularities, within regularities of the natural world," becoming increasingly abstract through a process of recognizing analogies and creating new conceptual frameworks. Since mathematical theories derive from the natural world, albeit at higher levels of abstraction than other sciences, their applicability to physics becomes unsurprising rather than mysterious. This position closely parallels the view developed here, particularly regarding the empirical origins of mathematical concepts and the selection process that retains useful mathematics.

**Constructivists** require mathematical objects to be explicitly constructible and proofs to be algorithmic. They reject the Axiom of Choice and the law of excluded middle. While the present position doesn't mandate constructivism, it recognizes constructive mathematics as one legitimate formal system among others—another game we can play.

**Pragmatists** emphasize that truth is what works in practice. Mathematical truth might be understood as fertility for applications, elegance of formulations, and usefulness for science. The Darwinian selection model shares this pragmatic spirit.

### Opponents

**Platonists** like Gödel and many working mathematicians believe mathematical objects exist independently in an abstract realm. Mathematicians discover truths about this realm rather than inventing formal systems. This position explains mathematical objectivity and necessity elegantly but at the cost of metaphysical extravagance. Where is this Platonic realm? How do human minds access it? What is the relationship between abstract mathematical objects and physical reality?

**Realists** hold that true mathematical statements correspond to mathematical facts, and these facts obtain independently of human minds. Mathematical realism comes in various strengths, from Platonism (abstract objects exist in a non-physical realm) to Aristotelian realism (mathematical structures exist as aspects of physical reality). {cite}`maudlin2016mathematics` represents a sophisticated realist position, arguing that even the applicability of elementary mathematics like arithmetic and geometry requires explanation beyond mere convention or modeling. For Maudlin, the physical world genuinely has mathematical structure, and this structural correspondence demands a realist interpretation. All realist positions face the epistemic problem: how do we know about these mind-independent mathematical facts?

**Logicists** like Frege and the early Russell attempted to reduce mathematics to logic. If successful, this would ground mathematical truth in logical truth, which might be necessary and objective without requiring Platonic objects. But the project failed. Russell's paradox showed that naive set theory is inconsistent, and subsequent repairs (like type theory) introduced machinery as complex as mathematical axioms themselves.

**Intuitionists** like Brouwer ground mathematics in mental constructions. Mathematical objects are created by the ideal mathematician's thought processes. This shares with the present position an anti-Platonist stance but differs in emphasizing subjective mental acts rather than objective formal systems. The present position seeks intersubjective agreement through formal rules rather than grounding mathematics in individual consciousness.

The anti-Platonist formalist position developed here occupies distinctive ground. It shares with nominalism the rejection of abstract objects. It shares with formalism the emphasis on formal systems and symbol manipulation. It shares with pragmatism the emphasis on usefulness and selection. It shares with constructivism the recognition that we choose our axiom systems. But it synthesizes these elements into a view centered on Darwinian selection: mathematics consists of formal systems refined over time by what proves useful, elegant, and fruitful.

## Challenges

Several objections might be raised against this position.

### Mathematical Objectivity

If mathematics is just rule-following in games we invented, why does it feel so objective? Why do mathematicians experience themselves as discovering truths rather than creating them? When we prove that there are infinitely many primes, it feels like we've uncovered a fact about numbers, not like we've made an arbitrary choice.

**Response:** Chess also feels objective once you're playing it. Given the rules, certain positions are winning and others are losing—that's objective fact, not arbitrary choice. Mathematical objectivity comes from the rigidity of logical inference. Once axioms are chosen, theorems follow necessarily. This necessity feels like discovery because we can't change it by wishing.

Moreover, mathematical training shapes intuitions. After years of working within Peano arithmetic, the natural numbers feel real and their properties feel discovered. But this psychological experience doesn't settle the metaphysical question. It's compatible with both Platonism and formalism.

The question is: does this feeling of discovery require a Platonic realm, or can formal systems explain it? The latter seems sufficient. The objectivity is the objectivity of rule-following, not the objectivity of correspondence to pre-existing objects.

### Mathematical Necessity

Mathematical truths seem necessary in a way that physical truths don't. The laws of physics could have been different, but could 2 + 2 have equaled 5? Doesn't this necessity point toward Platonic existence?

**Response:** Mathematical necessity is hypothetical necessity: *given* these axioms and inference rules, these theorems follow. It's no more mysterious than: *given* chess rules, certain positions are checkmate. The necessity comes from logical consequence, not from the nature of abstract objects.

Could 2 + 2 have equaled 5? Not in Peano arithmetic—that's fixed by the axioms. But we could have adopted different axioms. In modular arithmetic mod 3, we have 2 + 2 ≡ 1. Different formal systems yield different "necessities."

The feeling that 2 + 2 *must* equal 4 reflects the depth of our commitment to standard arithmetic. We've been counting this way since childhood. The formal system is so deeply internalized that alternatives seem impossible. But this is psychological, not metaphysical.

### The Precision Problem

When mathematics and physics connect successfully, they often exhibit exact structural identity rather than approximate resemblance. The mathematics of quantum mechanics, for instance, precisely matches quantum phenomena. This precision strains the idea that we're simply selecting useful tools from a human-constructed inventory.

**Response:** Einstein's insight about mathematics and reality addresses this directly {cite}`einstein1950laws`. "As far as the laws of mathematics refer to reality, they are not certain; and as far as they are certain, they do not refer to reality."

Mathematical models never perfectly capture reality. Newton's laws are exact only for ideal point particles (which don't exist). Quantum mechanics uses continuous wave functions, but reality may be fundamentally discrete at the Planck scale. The "precision" is the precision of the model within its domain of applicability, not exact correspondence to reality itself.

When we say quantum mechanics "precisely matches" quantum phenomena, we mean: the model's predictions match our measurements to high accuracy. But measurements have limited precision. Experiments test predictions to many decimal places, and the agreement is impressive—but it's always finite precision, never infinite.

Moreover, the selection mechanism produces this precision. Mathematical models that match reality poorly get discarded. Models that match reality well get refined and extended. Over centuries of this process, we develop extraordinarily precise models. This doesn't require Platonism—just good modeling and selection.

Still, we can honestly admit: we don't know why models work so well. Conceding this surrenders explanatory ground that Platonists eagerly occupy. But their explanation—"mathematical structures exist independently"—doesn't actually explain anything. It just relocates the mystery.

### Pre-Adaptation Across Centuries

Mathematics developed purely for internal reasons—group theory for polynomial equations, conic sections for geometric beauty, prime numbers for intellectual curiosity—finds application centuries later to problems its developers never imagined. How does the selection model explain this?

**Response:** The selection model requires large numbers, long time scales, and vast unused inventory—all of which exist. Mathematicians have explored widely for millennia. Most of this exploration produces no applications. But the inventory is so vast that when physicists need a tool, they often find something already developed.

This is not miraculous pre-adaptation. It's the law of large numbers. Generate millions of theorems over thousands of years, and some will match future needs by chance. We remember group theory finding application in particle physics. We forget countless mathematical theories that found no application.

Perhaps the hit rate exceeds what pure chance would predict. If so, this might suggest that mathematical exploration, though unconstrained by immediate empirical needs, is still constrained by something—not Platonic objects exactly, but structural possibilities inherent in logic and coherence themselves. Mathematicians explore the space of consistent structures, and physics happens to actualize some structures from that space.

This wouldn't require Platonism, but it might suggest that the space of logically possible structures has its own reality independent of particular physical instantiation. Whether this helps or merely relocates the puzzle remains unclear.

### What About Discovery?

Mathematicians overwhelmingly report the phenomenology of discovery rather than invention. They feel they're exploring an objective realm, not making arbitrary choices. Doesn't this count for something?

**Response:** Psychological experience doesn't settle metaphysical questions. Scientists once experienced the sun rising and earth standing still—direct perceptual experience that turned out to be false. Mathematicians' feeling of discovery is genuine psychological data but doesn't entail Platonism.

Moreover, formalism explains this phenomenology. When exploring a formal system, mathematicians don't know in advance what theorems are provable. They investigate, conjecture, prove or disprove. This feels like exploring territory because, in a sense, it is—exploring the logical consequences of chosen axioms. But the territory is formal structure, not pre-existing Platonic objects.

Great mathematical discoveries—like non-Euclidean geometry or Gödel's theorems—often shock their discoverers. This seems to support Platonism: how could we be shocked by our own inventions? But shock comes from unexpected consequences of the rules we set up. Chess players are shocked by brilliant unexpected moves—this doesn't mean chess positions exist in Plato's heaven.

### The Axiom of Choice Dilemma

If mathematical existence is system-relative, and we can practice mathematics with or without the Axiom of Choice, doesn't this make mathematics arbitrary? How can mathematical truth be objective if we just choose axioms based on convenience?

**Response:** This is a feature, not a bug. Mathematical truth *is* system-relative. But this doesn't make it arbitrary in a problematic sense.

First, different formal systems serve different purposes. ZFC is useful for mainstream mathematics. Constructive mathematics is useful for computer science and proof theory. Each has its domain of application. Choosing between them is like choosing between Newtonian mechanics and quantum mechanics: the choice depends on what you're modeling.

Second, objectivity comes from rigorous proof within the chosen system. Once axioms are fixed, theorems follow necessarily. This necessity is objective, even if the initial choice of axioms was conventional.

Third, the Darwinian selection process isn't arbitrary. Mathematical systems that prove useful, elegant, and fruitful survive. Those that don't fade away. This isn't arbitrary selection—it's selection by multiple constraints: internal consistency, applicability, fertility, elegance.

The Axiom of Choice will persist if it proves indispensable. If constructive mathematics produces better applications or deeper theories, it may supplant ZFC. This is rational selection, not arbitrary whim.

## Conclusion

The anti-Platonist formalist position offers clarity about what mathematics is (formal systems), honesty about what remains mysterious (applicability), and parsimony in ontology (no Platonic heaven).

Mathematics consists of formal systems—combinations of axioms and inference rules—that humans construct. These systems don't emerge from nowhere. They're refined over time through selection pressure from applications. When a formal system proves useful for modeling reality, it survives, gets taught, appears in textbooks, shapes further development. When a system proves useless or leads nowhere, it fades from practice.

Mathematical existence means consistency within chosen formal systems. To say a mathematical object exists is to say we can define it consistently within an axiom system and reason about it without contradiction. This makes existence system-relative and conventional. The language of mathematical existence is pragmatic convenience rather than metaphysical discovery.

Why these formal systems apply to physical reality remains unexplained and perhaps inexplicable. We can point to the selection mechanism—systems that model reality well get retained—but this describes the process without explaining the deep fact that such systems exist at all. The position frankly admits this ignorance.

Some Platonists offer what they take to be explanations: mathematics applies because mathematical structures exist independently and physical reality instantiates them. But this merely relocates the mystery. Why should physical reality instantiate mathematical structures? How does the instantiation relationship work? Platonism multiplies entities without genuinely explaining.

This pattern repeats throughout intellectual history. When confronted with something remarkable—the apparent fine-tuning of physical constants, the emergence of life, the applicability of mathematics—a recurring argumentative move appears: "It's so fantastic, there must be... a God, a hidden reality, many universes, a Platonic realm."

The anthropic principles illustrate this dynamic. The strong anthropic principle assumes premeditation: physical constants were chosen to permit life. The weak anthropic principle uses probability: there are many universes, and we necessarily find ourselves in one compatible with observation. The non-anthropic principle simply accepts the world as it is: these are the constants, and we observe them.

Both anthropic principles fall to Occam's razor. They multiply entities—designers or multiverses—to explain what might simply be. But they cannot be disproven. The key point is recognizing that these moves don't actually explain; they relocate the mystery.

The same applies to Platonism about mathematics. Invoking a realm of abstract objects doesn't explain why mathematics applies to physics—it creates new questions about the relationship between Platonic and physical realms. The anti-Platonist position resists this multiplication of mysteries. Mathematics works remarkably well; we don't fully understand why; positing extra realms of being doesn't help.

Perhaps the effectiveness of mathematics is simply a brute fact about our universe—one we should accept with wonder rather than false confidence that we've explained it. As Wittgenstein said {cite}`wittgenstein1978remarks`: "Explanations come to an end somewhere."

The position represents a form of pragmatic nominalism. We use mathematics because it works, not because we've discovered eternal truths in a transcendent realm. Mathematical practice is sophisticated, rigorous, and objective—but objective in the sense that formal proof is mechanically checkable, not in the sense that mathematical objects exist independently of mathematical practice.

Prime numbers exist exactly as much as the Sicilian Defense exists—as patterns within rule structures humans created. Whether that constitutes "real" existence depends on what we mean by existence. And that question, like so many in philosophy, may have no final answer.

## References

```{bibliography}
:filter: docname in docnames
```

<div style="margin-bottom: 100px;"></div>
