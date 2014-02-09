For typesetting Matlab code in LaTeX, consider using the matlab-prettifier package.

Piggybacking on the listings package, it doesn't require much configuration, as it keeps track of the context behind the scenes in order to highlight code as it appears in the Matlab editor. In this respect, it arguably does a much better job than the other available options (minted, listings, mcode, etc.) do.

Syntax highlighting currently performed by the matlab-prettifier package include:

- context-sensitive keywords (e.g. end, properties, etc.),
- line-continuation tokens (...),
- code-section titles,
- block comments,
- (to be announced...)

It also defines macro for typesetting placeholders in code snippets. Altought it doesn't support Unicode, it is compatible with XeLaTeX and LuaLaTeX.

I plan to submit matlab-prettifier to CTAN in the near future. In the meantime, you can simply download it from the Bitbucket repo.
