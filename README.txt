For nicely typesetting Matlab code in a LaTeX document, consider using the
matlab-prettifier package.

Piggybacking on the listings package, it doesn't require much configuration,
and keeps track of the context behind the scenes in order to highlight code as
it appears in the Matlab editor. In this respect, it arguably does a much
better job than the other available options (minted, listings, mcode, etc.) do.

Code elements currently highlighted by the matlab-prettifier package include.

    - context-insensitive keywords (e.g. for, while, break),
    - context-sensitive keywords (e.g. end, properties, events),
    - (quoted) strings,
    - one-line and block comments,    
    - line-continuation tokens (...),
    - code-section titles.

In addition, the matlab-prettifier package

    - defines a macro for easily typesetting placeholders in code snippets,
    - automatically scales inline code to the size of its surroundings,
    - doesn't support Unicode, but is compatible with XeLaTeX and LuaLaTeX.

I plan to submit matlab-prettifier to CTAN in the near future. In the meantime, 
  you can simply download it from the Bitbucket repo.
