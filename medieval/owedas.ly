\version "2.24.0"

\paper {
 % #(set-paper-size "a4landscape")
  print-all-headers = ##t
  page-breaking = #ly:minimal-breaking
  outer-margin = 4.8 \cm
  left-margin = 3\cm
  right-margin = 3\cm
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"            ; default
     #:brace "emmentaler"            ; default
     #:roman "EB Garamond"
     #:sans "Nimbus Sans, Nimbus Sans L"
     #:typewriter "DejaVu Sans Mono"
     #:factor (/ staff-height pt 13)
    ))
}

global = {
  \override NoteHead.style = #'vaticana.punctum
  \override Staff.StaffSymbol.color = #(x11-color 'red)
}

"|" = {\bar "'"}

% for some reason 2 and 4 are qual
superius = \relative c {
  \clef "vaticana-do2"
  \global
 c d e e f8 e d2 e
 b c d a c b a
 c d e e f8 e d2 e
 b c d a c b a \break
 f' e d c d c8 d e f e2
 e f g e f e d d8 c \break
 d2 c bes8 a g2 a bes c g8 f 
 a2 bes c g8 f g2 a16 b a g bes8 a }

cantus = \relative c' {
  \clef "medicaea-do1"
  \global
  a
}

tenor = \relative c' {
  \clef "medicaea-do1"
  \global
  d
}

bassus = \relative c {
  \clef "medicaea-fa2"
  \global
  a
}

strophe_ein = \lyricmode {
O -- we daz nach  lie - be gat |
leit so man ez tri - be  |
nu wil myn -- ne und ist ir rat |
daz ich da  von scri - be |
Sie sprach  sel -- le wi - der mi - ich   |
scrib daz leyt ob al -- lem ley - de |
swa sich li -- eb von li -- be schei - de | 
tru -- rich und u - un en - de - li -- ch |
}


strophe_zwei =  \lyricmode{
  Mi -- ner fro -- wen un - de mir
  wil ich dis leit schrei - ben
  si le -- bet mir so leb ich ir
  und -- e kun -- nen ver -- tri -- ben
  ouch mit ia -- mer un -- se -- r kla - ge
  min -- ne wil und -- e kan ge -- bi -- ten
  daz wir u -- ns dur si ge -- nie - ten
  kur -- zer froi - de und -- e lan - ger ta -- ge
}

\score {
   <<
    \new MensuralStaff  
    { \new MensuralVoice = "superius" {\superius} 
  }

 \new Lyrics = "firstVerse" \lyricsto "superius" {
   % \strophe_ein
    <<
      { \strophe_ein}
\new Lyrics = "secondVerse"
      \with { alignBelowContext = "firstVerse" } {
  \set associatedVoice = "superius"
  \strophe_zwei
}

      >>
    }
    >>

 \layout {
    \context {
        \Score
        \omit BarNumber
    }
    \context {
      \MensuralStaff
  \override KeySignature.glyph-name-alist = #alteration-mensural-glyph-name-alist
  \override BarLine.transparent = ##f % Notice two pound signs
    }
  }


  \header {
    title = \markup { \override #'((font-name . "ygoth") (font-size . 6)) "Owe daz nach liebe gat"}
%subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 5)) "Meister Alexander"}
    composer = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "Meister Alexander"}
%    arranger = "PS"
  }
  \midi {
    \tempo 4 = 200
  }
}
\header {
  tagline = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "SCP"}
  }
