# subook

I try to develop a package for LuaTeX with Soviet Union publishing traditions and layouts.

##Installation

1. Check where Your local texmf directory must reside (consult [here](http://tex.stackexchange.com/questions/1137/where-do-i-place-my-own-sty-or-cls-files-to-make-them-available-to-all-my-te)):
``` sh
kpsewhich -var-value=TEXMFHOME
```
2. Clone the repo inside this directory and subdirectory tex/latex, e.g.
```
mkdir -p ~/texmf/tex/latex
cd ~/texmf/tex/latex
git clone https://github.com/eugeneai/subook.git
```
3. Check if subook.sty could be found:
```
kpsewhich subook.sty
```
4. Install fonts according to [instruction](https://github.com/eugeneai/ttf-otf-font-set). 
   You also can add other fonts to be available for publishing.

## Additional references

Page about opensource font sets http://habrahabr.ru/post/67164/

Redhat promo http://openfontlibrary.org/en

