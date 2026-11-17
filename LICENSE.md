# License

Our own work in this repository is under two licenses: one for the words and pictures, and one for the code.

| What | License |
| --- | --- |
| The course content: prose, tables and figures in `chapters/`, `images/` and `index.qmd`, as they appear on the rendered site | [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0; [legal code](https://creativecommons.org/licenses/by/4.0/legalcode)) |
| Code: the R package in `R/`, the figure script in `images/`, the Lua filters, the stylesheets and page includes, the workflow and helper scripts | MIT License, in [`LICENSE`](LICENSE) |

Neither license covers the following, since they are not ours to license:

- **Quotations and cited material** belong to their authors.
- **The `latex-macros/` submodule** carries its own license.
- **Vendored extensions** in `_extensions/` carry their own licenses where they include one.
  `coatless-quarto/custom-callout` is under the GNU Affero General Public License 3.0, in [its repository](https://github.com/coatless-quarto/custom-callout);
  the copy here does not yet carry that license's text ([csci201#32](https://github.com/Morrison-Lab/csci201/issues/32)).
- **Quarto's own page scripts, styles and fonts** in the rendered site carry their own licenses.

When reusing the course content, credit "CSCI 201 course logistics, Morrison-Lab/csci201" with a link to <https://github.com/Morrison-Lab/csci201>, link the license, and say what you changed.

The plain-text `LICENSE` file holds only the MIT License, because the R package names it (`License: MIT + file LICENSE` in `DESCRIPTION`).
