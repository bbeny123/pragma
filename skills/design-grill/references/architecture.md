# Architecture decisions

Read for a material boundary/interface decision, restructuring proposal, or architecture review concern.

- Treat the caller contract as everything needed for correct use: invariants, ordering, errors, configuration, lifecycle, and meaningful runtime cost, as well as signatures.
- Put behavior and knowledge where they simplify real callers and localize changes. Distinguish domain decisions, application coordination, and external integration according to the repository's actual structure; framework use or a particular directory layout alone does not establish a defect.
- Apply the deletion test: if removing an abstraction eliminates needless obligations, simplify it. If removal distributes those obligations across callers, preserve or improve the boundary. One implementation or a thin adapter can serve a real architectural purpose.
- Compare interfaces using actual caller examples: what must each caller know, which responsibilities stay hidden, and what must change together? Prefer useful contracts over fewer parameters obtained by hiding cost or ambiguity.
- Choose verification that exercises the affected contracts, including transaction and lifecycle behavior where relevant.
- Ground restructuring in observed friction: repeated scattered edits, difficult behavioral verification, coupling, lifecycle constraints, or demonstrated runtime cost. Weigh the benefit against migration, regression, and maintenance cost. Preserve established domain language and prior decisions unless evidence justifies reopening them.
- Compare alternative designs when the choice matters.
