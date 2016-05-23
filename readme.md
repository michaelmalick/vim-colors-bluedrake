# Bluedrake Color Palette

Bluedrake is a carefully designed palette of 16 colors that was inspired by
color palettes used for quantitative graphics. The colors in the bluedrake
palette were chosen using the perceptually-based HCL (Hue-Chroma-Luminance)
color space. The 8 base colors are a sequential color palette with all colors
having the same hue (same as the blue accent hue). This sequential palette makes
it easy to switch between light and dark color themes while using the same
accent colors. The 8 accent colors are a qualitative color palette and were
chosen so that no color stands out compared to another color (i.e., all accents
have the same chroma and luminance but different hues). This means that
different syntax groups are distinguished based on the location of the color on
the color wheel rather than how bright the color is.

The basic design and structure underlying bluedrake is similar to the incredibly
well designed [solarized](http://ethanschoonover.com/solarized) color palette by
Ethan Schoonover. The main design difference is that in bluedrake the main
content is colored using the blue accent color, whereas in solarized it is
colored using a base color. In general, the base colors are not used for content
in the bluedrake color scheme, resulting in all content being highlighted by
colors that are the same hue.

![Color Palette](/screenshots/palette.jpg)
![Light Theme](/screenshots/screen.jpg)


# Features
  - Light and dark themes that use the same 16 color palette
  - Equally visible content colors
  - Base color palette with consistent hue
  - GUI and terminal compatible (see Installation for more info)


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


# Terminal Users

If you are using vim in a terminal, I highly recommend changing the default
terminal colors to the specs listed in the Colors sections. Light and dark
themes are available for OSX terminal.app in the `terminal` directory. Bluedrake
defaults to using the terminal specified colors, if you are in a terminal that
does not allow setting the colors, put `let g:bluedrake_256=1` in your `.vimrc`
before the `colorscheme bluedrake` line.


# Options
If you want to toggle between the light and dark themes, add the following lines
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

If you prefer a light color theme in the GUI and a dark theme in
the terminal add the following lines to your `.vimrc` file:

    if has('gui_running')
        set background=light
    else
        set background=dark
    endif



# Colors
Listed below are the color specs for the bluedrake palette:

    BLUEDRAKE HCL       TERMCOL   16 HEX     256 RGB
    --------- --------- --------- -- ------- --- -----------
    base03    232 30 15 brblack   8  #002d49 235 0   45  73
    base02    232 28 21 black     0  #003951 236 0   57  81
    base01    232 25 40 brgreen   10 #2f5468 24  47  84  104
    base00    232 22 47 bryellow  11 #577284 242 87  114 132
    base0     232 18 65 brblue    12 #8ea2b0 247 142 162 176
    base1     232 15 72 brcyan    14 #b4c3cf 110 180 195 207
    base2     232 12 91 white     7  #dae6f0 253 218 230 240
    base3     232 10 97 brwhite   15 #edf8ff 254 237 248 255
    yellow    97  90 55 yellow    3  #768f00 100 118 143 0
    orange    52  90 55 brred     9  #b67800 136 182 120 0
    red       7   90 55 red       1  #d75a69 167 215 90  105
    magenta   322 90 55 brmagenta 13 #d74bb9 170 215 75  185
    violet    277 90 55 magenta   5  #976ce2 99  151 108 226
    blue      232 90 55 blue      4  #0094d4 32  0   148 212
    cyan      187 90 55 cyan      6  #00a39a 37  0   163 154
    green     142 90 55 green     2  #009e3c 28  0   158 60

Table Notes:
  1. 16  = terminal color code
  2. HCL = hue chroma luminance
  3. RGB = red green blue



# License
The bluedrake color palette is [MIT/X11](http://opensource.org/licenses/MIT)
licensed. Copyright (c) 2014 Michael Malick
