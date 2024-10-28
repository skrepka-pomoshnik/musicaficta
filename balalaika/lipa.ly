\header {
title = "Липа вековая"
composer = "П. Куликов"
tagline = "Серенада" 
}

trio = { fis8 \p fis4 fis8 fis fis ~ \tuplet 3/2 {fis < fis gis> <fis gis> } | <fis a> <fis a>4 <fis a>8 <a cis> <a cis> ~ \tuplet 3/2 {<a cis> <a cis> <a cis>} | <fis b> <fis b>4 <fis b>8}
nontrio = { <fis a>8 <fis a>4 <fis a> <fis a> <fis a>8 | <fis a> <fis a>4 <fis a>8 <fis a> <fis a>4 <fis a>8 | <fis cis'>8 <fis cis'>4 <fis cis'>8 <fis cis'> <fis cis'>4 <fis cis'>8 }
\score {
  \relative c'
{
 \tempo  "Andante"
\set Staff.midiInstrument = #"tremolo strings" 
 \key fis \minor
 < fis fis>4 \pp  ( < fis b>2 <fis a>8 <fis b> | <fis cis'>2 <fis a> | <fis b> <gis b>   | <a cis> \> <gis cis> \! | <fis a>4 <fis a> <gis gis> <fis fis> ) |
 < d' fis>4. ( <cis eis>16 <d fis> <e gis>4 <d fis> | <a cis>2 <eis b'> | <fis a>1 )
\mark "1" 
 \trio  
 <fis b>8 <fis b>4 <fis b>8 | <b d> <b d>4. <b d>2 | <a cis>8 <a cis>4 <a cis>8 \> <eis b'>2 \! | 
\mark "2"
\nontrio
| <eis b'>8 <eis b'>4. <eis b'>8 \< <eis b'>4.\! | <fis a>1 \> ~ | <fis a>2 \! <cis' fis> ~ | <cis fis>1 \bar "||"
\mark "3"
<d fis>2 \ppp ( <d e> | <cis e>1 | <a d>1 ) | <a cis>2 <eis b'>-. | 
\mark "4"
r8 fis-. a-. fis-. r fis-. a-. fis-. |
r8 fis-. b-. fis-. r gis-. b-. gis-. |
r8 a-. cis-. a-. r gis-. cis-. gis-. |
r8 fis-. b-. fis-. r gis-. \> b-. gis-. \! |
\mark "4A"
<fis b>4 \< <b d>2 \! <fis b>8 <gis cis> | <cis e>1 ( | <d fis>4. ) <a cis>8 <cis e> <b d> <fis a> <gis b> | <a cis>2 \f <gis b> ( | <gis b>1 ~ \> |  <gis b> \pp )
\mark "5 "
fis4^" vibr."  b2 a8 b | <a cis>2 <cis a'> | <e gis>4. <d fis>8 <cis e> <d fis>4 <b d>8 | <a cis>1_"rit" | <a cis>4^"a.t." <a cis> <gis b> <fis a> | <d' fis>4. <cis eis>16 <d fis> <e gis>4 <d fis>4 | <a cis>2 r2 | r1 |
\mark "6"
\trio <b d>8 \< <b d>4. \! | <d f>2 <gis, b> | <a cis>8 <a cis>4 <a cis>8 \> <eis b'>2 \!
\mark "7"
\nontrio | <eis b'>8 <eis b'>4 <eis b'>8 eis eis4 eis8 | fis fis4 fis8 fis fis4. | r1 |
\mark "8"
fis \< ~ |  fis \! \> 
r4^"vibr." \! cis'2 fis,4 ~ | fis r4 r2 | <ais cis>2 ~ <ais cis>8 r8 r4
}
 \layout {}
 \midi {}
 \header { 
  piece="Балалайка"
}}
\version "2.18.2"
