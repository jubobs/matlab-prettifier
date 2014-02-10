For nicely typesetting Matlab code in a LaTeX document, consider using the
matlab-prettifier package.

Piggybacking on the listings package, it doesn't require much configuration,
and keeps track of the context behind the scenes in order to highlight code as
it appears in the Matlab editor. In this respect, it arguably does a much
better job than the other available options (minted, listings, mcode, etc.) do.

Code elements currently highlighted by the matlab-prettifier package include:

- context-sensitive keywords (e.g. end, properties, etc.),
- line-continuation tokens (...),
- code-section titles,
- block comments,
- (to be announced...)

The matlab-prettifier package also defines a macro for typesetting placeholders
in code snippets. Altough it doesn't support Unicode, it is compatible, not
only with LaTeX, but also with XeLaTeX and LuaLaTeX.

I plan to submit matlab-prettifier to CTAN in the near future. In the meantime, 
  you can simply download it from the Bitbucket repo.
