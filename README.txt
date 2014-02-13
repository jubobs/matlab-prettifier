For nicely typesetting Matlab code in a LaTeX document, consider using the
matlab-prettifier package.

Piggybacking on the listings package, it doesn't require much configuration,
and keeps track of the context behind the scenes in order to highlight code as
it appears in the Matlab editor. In this respect, it arguably does a much
better job than the other available options (minted, listings, mcode, etc.) do.

The matlab-prettifier automatically highlights

    - context-insensitive keywords (e.g. for, while, break),
    - context-sensitive keywords (e.g. end, properties, events),
    - (quoted) strings,
    - one-line and block comments,    
    - line-continuation tokens (...),
    - code-section titles.

Additional features include

    - manual highlighting of variables with shared scope,
    - a macro for easily typesetting placeholders in code snippets,
    - automatic scaling of inline code according to its surroundings,
    - two predefined styles (black & white, and a MatlabLexer-like style)
    - compatibility with XeLaTeX and LuaLaTeX.
    - partial support of Unicode, if used in conjunction with the listingsutf8
package.

I plan to submit the matlab-prettifier package (complete with documentation) to
CTAN (http://www.ctan.org) in the very near future. If my submission is
successful, matlab-prettifier should be available directly through your
favourite TeX distribution. In the meantime, you can simply download the alpha
version from my Bitbucket repository
(https://bitbucket.org/Jubobs/matlab-prettifier/src).
