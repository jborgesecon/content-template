#import "template.typ": *

#show: carousel-deck.with(
  topic: "FORMAL EPISTEMOLOGY",
  author: "@YourHandle"
)

// ----------------------------------------------------
// Card 1: The Hook
// ----------------------------------------------------
#v(60pt)
#badge("Foundational Limits")

#v(40pt)
#text(size: 64pt, weight: "bold", fill: c-text)[
  The Problem With Unrestricted Truth
]

#v(24pt)
#text(fill: c-text.lighten(20%), size: 36pt)[
  Why classical formal systems cannot contain their own semantic predicates without collapse.
]

#v(50pt)
#card(title: "The Dilemma")[
  Every formal language rich enough to encode arithmetic must choose: sacrifice classical logic, or accept semantic incompleteness.
]

#pagebreak()

// ----------------------------------------------------
// Card 2: The Core Friction
// ----------------------------------------------------
#v(30pt)
#text(size: 52pt, weight: "bold", fill: c-text)[1. The Tarskian Trap]

#v(20pt)
Naive truth requires two intuitive operations:
- *Capture:* If $phi$ holds, then "$phi$ is true" holds.
- *Release:* If "$phi$ is true" holds, then $phi$ holds.

#v(40pt)
#card(title: "The Inevitable Paradox")[
  Pairing capture and release with standard arithmetic yields sentences that assert their own falsehood ($lambda <==> not T(corner(lambda))$).
]

#pagebreak()

// ----------------------------------------------------
// Card 3: The Formal Mathematical Equation
// ----------------------------------------------------
#v(30pt)
#text(size: 52pt, weight: "bold", fill: c-text)[2. Inconsistency Proof]

#v(20pt)
By the Gödel-Carnap Diagonal Lemma, we derive:

#v(20pt)
#highlight-box[
  $ Sigma tack lambda <==> not T(corner(lambda)) $
]

#v(30pt)
Applying release to $lambda$ yields:
$ Sigma tack lambda arrow not lambda $

Which reduces instantaneously to:
$ Sigma tack bot $

#pagebreak()

// ----------------------------------------------------
// Card 4: The Core Mechanism
// ----------------------------------------------------
#v(20pt)
#text(size: 52pt, weight: "bold", fill: c-text)[3. How to Break the Loop]

#v(30pt)
Modern formal theories diverge into two architectures:

#v(15pt)
#card(title: "A. Typed Hierarchies (Tarski)")[
  Stratify truth into metalanguages: $T_0, T_1, T_2 dots$. Prevents self-reference at the expense of unified expression.
]

#v(15pt)
#card(title: "B. Axiomatic Truth (Kripke-Feferman)")[
  Retain a single predicate $T(x)$, but govern it via partial valuation or restricted syntactic reflection.
]

#pagebreak()

// ----------------------------------------------------
// Card 5: Synthesis / Framework
// ----------------------------------------------------
#v(30pt)
#text(size: 52pt, weight: "bold", fill: c-text)[Architectural Trade-offs]

#v(30pt)
#table(
  columns: (1fr, 1fr),
  stroke: 1pt + c-border,
  fill: (col, row) => if row == 0 { c-margin } else { c-surface },
  inset: 22pt,
  text(fill: c-primary, weight: "bold")[Approach],
  text(fill: c-primary, weight: "bold")[Primary Cost],
  [Stratified Types], [Expressive fragmentation],
  [Fixed Points], [Non-classical logic],
  [Axiomatic Systems], [Proof-theoretic complexity]
)

#v(30pt)
#card(title: "Key Takeaway")[
  Expressive power and deductive stability exist in permanent mathematical tension.
]

#pagebreak()

// ----------------------------------------------------
// Card 6: Call To Action
// ----------------------------------------------------
#v(60pt)
#badge("Full Paper Available")

#v(30pt)
#text(size: 60pt, weight: "bold", fill: c-text)[
  Dive Deeper Into Axiomatic Truth
]

#v(24pt)
#text(size: 34pt)[
  Read the formal proofs and consistency models in our latest preprint published on SSRN.
]

#v(50pt)
#highlight-box[
  ssrn.com/abstract=YOUR_ID
]

#v(40pt)
#card(title: "Join the Conversation")[
  - Repost to share with your network
  - Follow for mathematical philosophy breakdowns
]
