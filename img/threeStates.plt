
# Global settings

set encoding iso_8859_1 ;
set terminal postscript eps enhanced clip color rounded 16 ;

# Style

set size 5.5/5.0, 2.0/3.5 ;
set style fill solid 0.4 noborder ;
set style rectangle fill solid 0.4 noborder ;
unset border ;
unset tics ;
unset key ;
set tmargin 0 ; set lmargin 0 ; set bmargin 0 ; set rmargin 0 ;

# Dimensions

dX = 50. ;
dY = 50. ;
aspect = 5.5 / 2. ;
pitchX = dX * 2. / 3.5 ;
pitchY = pitchX * aspect ;
pinX = pitchX * 0.5 ;
pinY = pitchY * 0.5 ;
XX = 1.3 ;

xm = 0;
x0 = -dX + pitchX / 2. ;
x1 = +dX - pitchX / 2. ;

ym = 0 ;
word = pitchY / 10 ;
y0 = ym - pitchY / 2. + word ;

# Colors

red  = '#FF0000' ;
blue = '#0000FF' ;

# Objects and labels

FONT = 'Sans, 20'

# Nominal

set object rectangle               at x0, ym size pitchX, pitchY fillcolor rgb blue fillstyle border 0 ;
set object ellipse                 at x0, ym size pinX, pinY     fillcolor rgb red  fillstyle border 0 ;
set label "1 Nominal"         center at x0, y0 font FONT ;

# Expanded

set object rectangle               at xm, ym size pitchX, pitchY       fillcolor rgb blue fillstyle border 0 ;
set object ellipse                 at xm, ym size pinX * XX, pinY * XX fillcolor rgb red  fillstyle border 0 pattern 1 ;
set label "2 Perturbed"        center at xm, y0 font FONT ;

# Virtual

set object rectangle               at x1, ym size pitchX, pitchY       fillcolor rgb blue fillstyle border 0 pattern 6 ;
set object ellipse                 at x1, ym size pinX, pinY           fillcolor rgb red  fillstyle border 0 pattern 2 ;
set label "3 Virtual Density" center at x1, y0 font FONT ;

plot [-dX * (1.01):+dX * (1.01)][-dY * (1.01):+dY * (1.01)] 1 / 0 notitle ;
