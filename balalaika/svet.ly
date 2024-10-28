\version "2.19.20"
\header {
title = "Светит месяц"
composer = "Русская народная песня"
tagline = "Серенада" 
piece="Балалайка"
}
dd=\markup { \hspace #.2 \raise #-.6 \musicglyph #"scripts.dmarcato"}
uu=\markup { \hspace #.2 \raise #-1.2 \musicglyph #"scripts.umarcato"}
\score {
\layout {}
\midi {}
 \relative c'' {
    \tempo "Allegretto"
    %4=120
    \set Staff.midiInstrument = #"pizzicato strings" 
    \key d \major
d4^\markup"vibr." \p a d e | fis a, e' d | cis a cis d | e cis a cis | d a d e | fis a, e' d | cis a cis d | e cis e cis |
b e, b' cis | d e, cis' b | a e cis' e, | e' e, d' cis | b e, b' cis | e d cis b | a g fis e | r1 |
\mark "1"
\time 2/4
<a d>4.:16 \pp <a e'>8:16 |  <a fis'>4:16 <a e'>8:16 <a d>:16 | <a cis>4.:16 <a d>8:16 | <a e'>4 <a a> | <a d>4.^"simile" <a e'>8 | <a fis'>4 <a e'>8 <a d> | <a cis>4. <a d>8 | <a e'>4 <a e'>4 |
<gis b>4. \p <gis cis>8 | <gis d'>4 <gis cis>8 <gis b> | <a a>4 <a cis> | <a e'> <a d>8 <a cis> | <gis b>4. <gis cis>8 | <gis d'>4 \> <gis cis>8 <gis b> | <a a>4 <a cis> | <a a>8 \pp <e g a>-> <e g b>-> <e g cis>-> \sff |
\mark "2"
<fis a d>4. \f <a e'>8 |  <a d fis>4 <a e'>8 <a d> | <e a cis>4. <a d>8 | <a cis e>4 <e a a> | <fis a d>4. <a e'>8 \< | <a d fis>4 <a e'>8 \! <a d>  | <a cis>4. <a d>8 | <a e'>4 <a e'>4 |
<e gis b>4. \f <e a cis>8 | <gis b d>4 <e a cis>8 <e gis b> | <e a>4 <e a cis> | <a cis e>4 <a d>8 <e a cis> <e gis b>4. <e a cis>8 | <gis b d>4 <e a cis>8 <e gis b> | <e a>4 <e a cis> | <e a>8 r8 r4
\mark "3"
<a d>4.:16 <a e'>8:16 |  <a fis'>4:16 <a e'>8:16 <a d>:16 | <a cis>4.:16 <a d>8:16 | <a e'>4 <a a> | <a d>4. <a e'>8 | <a fis'>4 <a e'>8 <a d> | <a cis>4. <a d>8 | <a e'>4 <a e'> |
<gis b>4. <gis cis>8 | <gis d'>4 <gis cis>8 <gis b> | <a a>4 <a cis> | <a e'> <a d>8 <a cis> | <gis b>4. <gis cis>8 | <gis d'>4 <gis cis>8 <gis b> | <a a>4 \> <a cis>| <a a>8 \p  \< a' gis \sf g  |
\mark "4"
fis8^\uu \mp \< <d g>^\dd gis^\uu <d a'>^simile \! | b' \> <d, a'> g <d fis> \! | e \< <cis fis> g' <cis, fis> \! | a' \> <cis, g'> <fis> <cis e> \! | fis \< <d g> gis <d a'> \! | b' \> <d, a'> g <d fis> \! | e <e, d'> cis' <e, b'> | <e e>4 <a cis e>^\dd \ff |
b8 \p <e, cis'> d' <e, cis'> | e' <e, d'> cis' <e, b'> | cis' <a d> dis <a e'> | fis' <a, e'> d <a cis> | b <e, cis'> d' <e, cis'> | e' <e, d'> cis' <e, b'> | <a a> <a e'> <a cis> <a e'> \! | <e' a>4 \glissando <e, a> |
\mark "5"
<a d>8 \ff <a d>16 <a d> <a d>8 <a e'>-> | <a fis'>8 <a fis'>16 <a fis'> <a e'>8 <a d>-> | <a cis>8 <a cis>16 <a cis> <a cis>8 <a d>-> | <a e'>8 <a e'>16 <a e'> <a a>8 <e e a>-> | <a d>8 <a d>16 <a d> <a d>8 <a e'>-> | <a fis'>8 <a fis'>16 <a fis'> <a e'>8 <a d>-> | <a cis>8 <a cis>16 <a cis> <a cis>8 <a d>-> | <a e'>4 <a e'>-> |
e''2^"tremolo vibrato" ~ | e ~ | e ~ | e | b4.^"pizz." \f \> cis8 | d4 cis8 b | a4 e | <e, a> \p r |
\mark "6"
<fis d'> \pp ( <fis cis'> | <fis b> <fis a> ) | <a e'> ( <a d> | <a cis> <a a> ) | <a fis'> \< ( <a e'> | <a d> <a fis'> ) | <cis g'>8-. <cis fis>-. <cis e>-. <a d>-. | <a cis>4 <a cis e>-> \f |
r8 <e gis b>16 <e gis b> <e gis b>8 <e gis cis> | r8 <e gis b>16 <e gis b> <e gis b>8 <e gis cis> | r8 <e a a>16 <e a a> <e a a>8 <e a cis>8 |  r8 <e a d>16 \> <e a e'> <e a d>8 <e a cis> | r8 <e gis b>16 <e gis b> <e gis b>8 <e gis cis> \p | r8 <e gis b>16 \> <e gis b> <e gis b>8 <e gis cis> | r8 <e a a>16 <e a a> <e a a>8 <e a cis>8 | <e a>4 \pp r4 | 
\mark "7"
<fis d'> \p ( <fis cis'> | <fis b> \< <fis a> ) | <a e'> ( <a d> | <a cis> <a a> ) | <a fis'> \< ( <a e'> | <a d> <a fis'> ) | <cis g'>8-. <cis fis>-. <cis e>-. <a d>-. | <a cis>8-. \ff r8 <a cis e>-> r8 |
<e gis b>4.^"vibr." \sp cis'8 | <e, gis d'>4 cis'8 b | <e, a>4 \< <a cis> | <cis e> <cis e>8 \! <a cis> | r8 <e gis b>16 <e gis b> <e gis b>8 <e a cis> | r8 <e gis cis>16 \< <e gis d'> <e gis cis>8 <e gis b> | r8 <e a cis>16 <e a d> <e a e'> <e a fis'> <e a e'> <e a d> \f 
%<e a e'>16 r8 <e a e'>16 r8 <e a e'>16 <e a cis> |
| <e a e'>16-> <e a cis> <e a a> <e a e'>-> <e a cis> <e a a> <e a e'>-> <e a cis> |
\mark "8"
<fis a d>8-> <fis a d>-. <fis a d>-> <fis a d>-. <fis a d>8-> <fis a d>-. <fis a d>-> <fis a d>-.^"simile" | \repeat percent 2 {<fis a cis>8 <fis a cis> <fis a cis> <fis a cis>} | \repeat percent 2 {<fis a d>8 <fis a d> <fis a d> <fis a d>} | \repeat percent 2 {<fis a cis>8 <fis a cis> <fis a cis> <fis a cis>} | \repeat percent 2 {<e gis b>8 <e gis b> <e gis b> <e gis b>} | \repeat percent 2 {<e a cis>8 <e a cis> <e a cis> <e a cis>} | \repeat percent 2 {<e gis b>8 <e gis b> <e gis b> <e gis b>} | <e a cis>8 <e a cis> <e a cis> <e a cis> | <e a cis>8 r <e e a>-> r \ff |
\mark "9"
<fis a d>8 \sp <fis a d> <fis a d> <fis a d> <fis a d>8 <fis a d> <fis a d> <fis a d> | \repeat percent 2 {<fis a cis>8 <fis a cis> <fis a cis> <fis a cis>} | \repeat percent 2 {<fis a d>8 <fis a d> <fis a d> <fis a d>} | \repeat percent 2 {<fis a cis>8 <fis a cis> <fis a cis> <fis a cis>} | \repeat percent 2 {<e gis b>8 <e gis b> <e gis b> <e gis b>} | \repeat percent 2 {<e a cis>8 <e a cis> <e a cis> <e a cis>} | \repeat percent 2 {<e gis b>8 <e gis b> <e gis b> <e gis b>} | <e a cis>8 <e a cis> <e a cis> <e a cis> | <e a cis>8 \< <e a cis> <e a cis> <e a cis>-> \! |
\mark "10"
<fis a d>8 <fis a d> \ff r4 | r2 | <fis a d>8 <fis a d> r4 | r2 | <fis a d>8 <fis a d> r4 | r2 | <fis a d>8 <fis a d> r4 | r4. <e a cis>8-> | <e gis b>8 \sp <e gis b> <e gis b> <e gis b> | <e gis b>8 <e gis b> <e gis b> <e gis b> | \repeat percent 2 {<e a cis>8 <e a cis> <e a cis> <e a cis>} | \repeat percent 2 {<e gis b>8 <e gis b> <e gis b> <e gis b>} | <e a cis>8 \< <e a cis> <e a cis> <e a cis> | <e a cis>8 <e a cis> <e a cis> <e a cis>-> \ff |
\mark "11"
\repeat percent 2 {<fis a d>8 <fis a d> r4 | r2 | <e a cis>8^"solo" <e a cis> <e a>16 <e b'> <e cis'> <e d'> | <e e'> <e d'> <e cis'> <e b'> <e a> <e b'> <e cis'> <e a>} | <e gis b>8 \sp <e gis b> <e gis b> <e gis b> | <e gis b>8 <e gis b> <e gis b> <e gis b> | \repeat percent 2 {<e a cis>8 <e a cis> <e a cis> <e a cis>} | \repeat percent 2 {<e gis b>8 <e gis b> <e gis b> <e gis b>} | <e a cis>8 \< <e a cis> <e a cis> <e a cis> | <a cis> r8 <e a>4 \ff |
\mark "12"
<a d>4.:16 <a e'>8:16 |  <a fis'>4:16 <a e'>8:16 <a d>:16 | <a cis>4.:16 <a d>8:16 | <a e'>4 <a a> | <a d>4. <a e'>8 | <a fis'>4 <a e'>8 <a d> | <a cis> <a a> <a cis> <a d> | <a e'>4 <a e'> |
<gis b>4. <gis cis>8 | <gis d'>4 <gis cis>8 <gis b> | <a a>4 <a cis> | <a e'> <a d>8 <a cis> | <gis b>4. <gis cis>8 | <gis d'>4 <gis cis>8 <gis b> | <a a>4. <g a cis>8->^"эй!" |
\mark "13"
  fis'16 g fis e d cis d e | fis eis fis g a b a fis | e fis e d cis d cis b | a b cis d e fis g e | fis g fis e d cis d e | fis eis fis g a b a fis | e fis e d cis d cis b | <e, a>8 <e a e'> d'16 cis b a |
<gis b>4. <gis cis>8 | <gis d'>4 <gis cis>8 <gis b> | <a a>4 <a cis> | <a e'> <a d>8 <a cis> | <gis b>4. <gis cis>8 | <gis d'>4 <gis cis>8 <gis b> | <a a>8 r8 <g' a cis>4^"ха!" \fff  | 
}}
