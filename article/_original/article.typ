#import "mathphil.typ": *

#show: mathphil-article.with(
  title: "On the Expressive Limits of Formal Truth Predicates",
  short-title: "Expressive Limits of Truth Predicates",
  short-authors: "Doe",
  authors: (
    (
      name: "Alex Doe",
      affiliation: "Munich Center for Mathematical Philosophy",
      email: "alex.doe@lmu.de",
    ),
  ),
  abstract: [
    We re-evaluate the axiomatic theories of truth extending Peano Arithmetic. By
    restricting reflection principles to grounded syntactic formulae, we preserve
    classical logic while resisting Tarskian semantic hierarchies.
  ],
  keywords: ("Axiomatic Truth", "Kripke-Feferman", "Incompleteness", "Model Theory"),
  msc: "03C90, 03B42",
)

= Introduction

Formal theories of truth face classical diagonal limits, as originally formulated by
#cite(<tarski1936>, form: "prose"). A recurrent difficulty concerns whether typed
semantic structures are mandatory to avoid paradox @halbach2014.

= Formal preliminaries

Let $cal(L)$ denote the first-order language of arithmetic, and let $cal(L)_T = cal(L) union {T}$
be the extension obtained by adding a unary truth predicate $T(x)$.

#definition(title: "Arithmetical Coding")[
  For any formula $phi in cal(L)_T$, let $corner(phi)$ denote its canonical Gödel number
  under a fixed primitive recursive coding scheme.
]

The standard axiomatization over Peano Arithmetic ($sans("PA")$) requires compositional
truth clauses:

$ sans("PA") tack.rr T(corner(phi and psi)) <==> T(corner(phi)) and T(corner(psi)). $

#theorem(title: "Semantic Triviality")[
  If a theory $Sigma supset sans("PA")$ satisfies unrestricted capture and release:
  $ Sigma tack phi <==> T(corner(phi)), $
  then $Sigma$ is inconsistent under classical logic.
]

#proof[
  By the diagonal lemma, construct a sentence $lambda$ such that
  $sans("PA") tack lambda <==> not T(corner(lambda))$.
  Applying release yields $Sigma tack lambda arrow not lambda$, from which
  $Sigma tack bot$ follows by reductio.
]

#bibliography("references.bib")
