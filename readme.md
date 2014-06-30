# Bluedrake Color Palette

**A color palette for perfectionists**

Bluedrake is a carefully designed palette of 16 colors composed of 8 base colors
and 8 accent colors. The colors in the bluedrake palette were chosen using the
HCL (Hue-Chroma-Luminance) color space, which is a transformation of the
[CIELUV](https://en.wikipedia.org/wiki/CIELUV) color space (see
[here](http://www.r-project.org/conferences/DSC-2003/Proceedings/Ihaka.pdf) and
[here](https://www.sciencedirect.com/science/article/pii/S0167947308005549?np=y)
for details). The 8 accent colors were chosen so that no color stands out
compared to another color, that is, each accent color has the same chroma and
luminance values, just different hues. In addition, the accent colors are
equally spaced on the color wheel, meaning adjacent colors have equal contrast.
The 8 base colors all have the same hue as the blue accent color and are
composed of two gradients; a six tone gradient with a low luminance and a two
tone gradient with a medium luminance.


![Color Palette](/screenshots/palette.jpg)
![Light Theme](/screenshots/screen_light.png)
![Dark Theme](/screenshots/screen_dark.png)



# Features
  - Light and dark themes that use the same 16 color palette
  - Base color palette with consistent hue
  - Equally visible accent colors
  - GUI and terminal compatible (see Installation for more info)
  - Built-in Vim [Airline](https://github.com/bling/vim-airline) theme



# Installation
Unless you have a preferred installation method, I recommend installing
[pathogen](https://github.com/tpope/vim-pathogen) and then simply run:

    cd ~/.vim/bundle
    git clone git://github.com/michaelmalick/vim-colors-bluedrake.git

Then add the following lines to your `.vimrc` file for the dark theme:

    syntax enable
    set background=dark
    colorscheme bluedrake

or the following lines for the light theme:

    syntax enable
    set background=light
    colorscheme bluedrake

### Terminal Users
If you are using vim in a terminal (i.e., not a GUI like gvim or macvim) you
should also install a bluedrake terminal theme, otherwise bluedrake will default
to the 16 color palette set by your terminal. Themes for the Mac terminal.app
and iterm2 are available in the `/terminals` directory. If you are using a
different terminal, please consider setting the colors to the specs listing in
the Colors section. If you are in a terminal that does not allow you to set the
colors, there is an option to use only the 256 color palette. To make bluedrake
only use the 256 palette put the following line in your `.vimrc` file before the
`colorscheme bluedrake` line:

    let g:bluedrake_256=1



# Options
If you want to toggle between the light and dark themes add the following lines
to your `.vimrc` file:

    function! ColorSchemeToggle()
        if &background=="dark"
            let &background="light"
        else
            let &background="dark"
        endif
        exe "colorscheme bluedrake"
    endfunction
    nnoremap <silent> <F1> :call ColorSchemeToggle()<CR>

If you are like me and prefer a light color theme in the GUI and a dark theme in
the terminal add the following lines to your `.vimrc` file:

    if has('gui_running')
        set background=light
    else
        set background=dark
    endif



# Colors
Listed below are the color specs for the bluedrake palette:

| Name    | Term Name | 16 | Hex     | Term 256 |  R  |  G  |  B  |
|---------|-----------|----|---------|----------|-----|-----|-----|
| blue    | blue      | 4  | #0096dc | 32       | 0   | 150 | 220 |
| red     | red       | 1  | #da5b51 | 167      | 218 | 91  | 81  |
| orange  | brgreen   | 10 | #bb7600 | 136      | 187 | 118 | 0   |
| yellow  | yellow    | 3  | #888b00 | 100      | 136 | 139 | 0   |
| green   | green     | 2  | #009b00 | 28       | 0   | 155 | 0   |
| cyan    | cyan      | 6  | #00a5aa | 37       | 0   | 165 | 170 |
| purple  | brmagenta | 13 | #7a74ef | 99       | 122 | 116 | 239 |
| magenta | magenta   | 5  | #ce4ad9 | 170      | 206 | 74  | 217 |
| base00  | black     | 0  | #132b43 | 235      | 19  | 43  | 67  |
| base01  | brblack   | 8  | #24384F | 236      | 36  | 56  | 79  |
| base10  | bryellow  | 11 | #3773a4 | 24       | 55  | 115 | 164 |
| base11  | brblue    | 12 | #4187bf | 110      | 65  | 135 | 191 |
| base20  | brred     | 9  | #8692a1 | 246      | 134 | 146 | 161 |
| base21  | brcyan    | 14 | #97a2b0 | 247      | 151 | 162 | 176 |
| base30  | white     | 7  | #dfe6ec | 253      | 223 | 230 | 236 |
| base31  | brwhite   | 15 | #f2f8fc | 254      | 242 | 248 | 252 |

Table Notes:

  1. Term Name = the terminal name mapped to the color, br stands for bright
  2. 16 = color code for the 16 base terminal colors the color is mapped to
  3. Term 256 = the 256 color code the color is mapped to



# License 
Bluedrake is [MIT/X11](http://opensource.org/licenses/MIT) licensed.
Copyright (c) 2014 Michael Malick
