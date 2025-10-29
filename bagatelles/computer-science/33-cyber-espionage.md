# The Spy Who Came in from the Cloud
A journey from John le Carré to CrowdStrike


*Johannes Siedersleben, June 2025*

<small>Warning: The following paragraph gives away in a few lines what John le Carré conceals in hundreds of pages in his novel *The Spy Who Came in from the Cold*.</small>

Alec Leamas was head of the Berlin Command of the British Secret Service for four years. But one by one his agents are blown or killed. The head of East German intelligence is Mundt, who had been in London a year or two before. Leamas, tired and frustrated, is given a new assignment by Control, his boss in London: he is to play the role of a disgraced former agent who defects to East Germany. The supposed aim is to overthrow Mundt in a plot led by Fiedler, Mundt's second-in-command. Fiedler suspects Mundt of being a British mole and carefully gathers evidence. Leamas infiltrates the Abteilung, the East German Secret Service, and joins Fiedler's plot. With the help of Leamas, Fiedler almost succeeds in proving Mundt's guilt. But then Liz Gold, Leamas's girlfriend, whom he met during his period of disgrace, turns up as a witness. Her sheer presence destroys Leamas's credibility and that of Fiedler. The end of the story is Mundt's complete public rehabilitation and Fiedler's defeat. Leamas and Liz are given the opportunity to escape, but they do not make it over the wall. The truth, as it slowly emerges in the final chapters, is this: Mundt is in fact a British mole. Leamas, Fiedler and Liz Gold were pawns in a diabolical game devised by Control and George Smiley, one of the super brains of the British Secret Service. Mundt had the British agents killed to hide his own role, which was more important than that of the victims. The key is to understand who knew what: Control, Smiley and Mundt knew everything. Fiedler rightly suspected Mundt of being a British mole, but was unaware of Leamas´s role. Leamas wanted revenge on Mundt, but never dreamed he was a mole. And Liz Gold knew nothing.

<small>After a long and dangerous journey, the Childlike Empress reached the summit. There she met the Old Man who was writing incessantly. ’You write down everything that happens,' she said. 'Everything I write down happens,' was the Old Man's reply.</small> 

The Old Man runs Phantasia, the imaginary realm where Michael Ende's *Neverending Story* is set. What runs our world? It's software, or almost. Software tracks much of what happens, and much of what happens is directed, controlled, or at least influenced by it: in the stock market, most trades are decided by software. Few shares have a physical representation. Few of us have ever seen more than a few thousand pounds in cash, yet billions are traded every day. Nearly all financial transactions take place in a virtual world that has become reality. Planes and trains follow programmed timetables. From rivets to rockets, the production of goods depends on software. Software is ubiquitous, pervasive, and the scions of Smiley and Mundt have discovered that it is much easier to deal with the enemy's software than with the real thing. Cyber-espionage has supplanted espionage, at least to some extent. Information is no longer obtained by photographing paper documents, but by breaking into enemy software systems; sabotage is no longer done by placing bombs under bridges, but by planting malware. Robbing a bank requires nerves of steel and a great deal of recklessness, while siphoning off a few million could be done from your armchair if you are clever. But acquiring the necessary skills is hard. Just how hard?

The key to understanding is the idea of *shellcode*, which is to cyber-espionage what a mole is to espionage. Shellcode is a piece of software that is buried deep inside the victim's operating system and takes control of all or a large part of it. Writing shellcode requires a deep understanding of how software works. Here are some facts, a bit random and by no means exhaustive:

- Shellcode is an executable binary that has been carefully crafted by hand for the intended target system. You would have to disassemble it to get an idea of the damage it can do.

- Once it is written, it needs to be injected into the target system. Shellcode is shipped under some innocent disguise, such as an ASCII string or buried in a Word document. The challenge is to load and execute the binary in spite of all the obstacles the operating system may have in store. A key insight: barriers are easier to get around than to break. 

- Injecting shellcode involves *exploits* (explained shortly) and is done by means we are familiar with: poisoned messages, infected USB sticks and the like. Sophisticated methods manage to infiltrate the target system over the air without anyone clicking the wrong button. 

- Shellcode does whatever the attacker deems useful, such as reformatting the hard drive, displaying a blue screen, or replicating itself and attacking neighbouring systems. It grabs as many privileges as it can.

- Shellcode is highly dependent on the hardware and software environment of the target system. Every bit has to fit. But of course you can write versions of your shellcode for any number of environments, bundle them all into one or load them as needed, and start with a piece of code that detects where it is and chooses the appropriate version.

Hello World examples are only a few lines long: it is easy to infect, say, a Raspberry Pi and have it display a funny message. Sophisticated examples include the famous Stuxnet, which consists of a cascade of shellcodes that detect their environment, propagate themselves over a network, conceal  their activities and cause extensive damage to hardware. While Hello World examples can be written and deployed in a matter of hours, large-scale malware requires a huge amount of intelligence and manpower that only large companies or intelligence agencies have at their disposal. Stuxnet was a joint venture between the NSA and Israeli intelligence and destroyed a fifth of Iran's gas centrifuges for separating nuclear material.

Software is fragile, even when there are no hackers around. What you see of a system, on screen or on any device, is the top of a huge stack consisting of bare metal at the bottom, then firmware, virtual machines, cloud management systems, the Internet with its many layers, operating systems, and further up, off-the-shelf or bespoke applications from different vendors using different protocols and different programming languages. Some components are recent, some are decades old. It is a miracle that this mess works at all. In any case, no matter how thoroughly software is tested, there is no guarantee of correctness outside a few labs. We find ourselves in a curious situation: software works and doesn’t work at the same time. The software cocoon that surrounds us, this monster that directs, controls or at least influences what happens, seems to be quite reliable: failures are the exception, not the rule. Of course, we have seen rockets explode, airports grounded, manufacturing plants shut down because of software problems. Yet most of us rely on our bank, on the plane we board, on the tax bill we receive – all of which depend heavily on software. But software can be hacked, and there seems to be no way around this fact. Are we living at the mercy of hackers who, out of some inexplicable benevolence, refrain from bringing the whole thing down? If I knew, I would tell you.

A *vulnerability* is a security hole in a system that can be as ubiquitous as iOS or Java, for example, or limited to a small application distributed by a local company. An *exploit* is a piece of software that takes advantage of (i.e. exploits) one or more vulnerabilities, and *malware* combines one or more exploits into something that spies on or sabotages the enemy. Just to complete the picture, a *backdoor* is a secret, deep-buried piece of spyware, agreed between a vendor (say, Google) and an intelligence agency (say, the NSA) that gives the latter the opportunity to spy on what's going on. Back to vulnerabilities: a famous one was Log4Shell, a security hole that affected virtually all systems written in Java and was so gaping that no one can explain how it went undetected by the developers (Apache) for about eight years before it was publicized in 2021. Known vulnerabilities can be found free of charge on the CVE list (Common Vulnerabilities and Exposures). Log4Shell, for example, is CVE-2021-44228. Defending against known vulnerabilities is not always cheap, but it is easy, at least in theory. The real challenge lies in vulnerabilities and exploits unknown to the developers, but known to at least one hacker. These are called zero-day exploits, because the developers have no time (zero days) to fix the bug. Zero-day exploits are traded at huge prices on a completely unregulated black market, with participants ranging from individual hackers to small and large companies, to intelligence agencies of friendly and not-so-friendly governments. It’s the Wild West. The price of an exploit depends on its secrecy (i.e. the number of initiated) and its potential damage. Whatever is on the CVE list is public and therefore worthless. This state of affairs is so dangerous that it could lead to the end of the world, according to Nicole Perlroth. But not all hope is lost, for at least two reasons. Reason one: The big companies (GAFAM) have a vital interest in thwarting exploits and endless resources to do so. Coders and hackers meet on a level playing field and occasionally switch sides. AI is available to all. Reason two: Shellcode can be malware (malicious) or counter-malware (benign). A well-known example of effective counter-malware is CrowdStrike. Like a human mole, it sits deep within the system being defended, but its job is to detect and neutralize threats (would-be software-moles) as early and as thoroughly as possible. This can be done in many ways, including spoofing attacks using known exploits, tricking the intruder into honeypots, endpoint monitoring, or anomaly detection. Ironically, in July 2024, a buggy update from CrowdStrike itself caused millions of systems to crash. The problem was fixed within hours, but as we see once again, software is fragile.

A skilled writer could devise a plot about counter-malware (Fiedler) attacking malware (Mundt) but failing because it is undermined by counter-counter-malware (Leamas). However, since software is inanimate, without feeling or emotion, such a novel wouldn't make it into the bestseller lists – Liz Gold, as Leamas’s lover, just doesn't fit. A better plot, involving people and perhaps romance, might be this: Imagine an open source library that is included in many operating systems (Windows, macOS, some Linux distributions), developed by a team of volunteers scattered around the globe, each with their aversions and affections. Access to the team is based on the quality of the applicant’s contributions, there is no special clearance. Imagine that one of them is a human mole. He/she manages, little by little, over many commits, to introduce a piece of malware into the library that goes undetected by the regression tests in place. Finally, imagine that this malware could subvert a connectivity tool widely used on the Internet. The bad news first: The mole existed and called himself/herself *Jia Tan*. The library is called *liblzma* (unimportant, but ubiquitous), and the connectivity tool affected is *OpenSSH*. The good news: A programmer at Microsoft, who noticed that his test cases were taking a bit longer and was determined to find out why, discovered the plot before it could do any harm. It was a narrow escape, the whole thing (the Web) could have been brought down! This near-exploit, known as CVE-2024-3094, has been foiled, but how many others are out there? How many moles are up to no good in GAFAM or anywhere else right now? How many backdoors have been agreed? The key is to understand who knows what: First, there are the big shots in industry and the intelligence services, who know the backdoors and moles (human or software) they have created themselves. They probably share their knowledge with their respective governments and act according to their orders. Then there is the Wild West of zero-day exploits, inaccessible to the uninitiated, where knowledge is turned into money. The human moles out there are aware of the exploits they use or plant, but are unaware of other moles and the measures taken against them until they are caught. And the rest of us are left with the tamed tigers on the CVE list or published in outdated books like Chris Anley’s.


## References

Chris Anley et al.: The Shellcoder’s Handbook. 2007

John le Carré: The Spy Who Came in from the Cold. 1963

CrowdStrike: Global Threat Report 2024

Michael Ende: The Neverending Story. 1979

Nicole Perlroth: This is How They Tell Me the World Ends. 2021

Martin Untersinger: Espionner, mentir, détruire. 2024




















<div style="margin-bottom: 100px;"></div>
