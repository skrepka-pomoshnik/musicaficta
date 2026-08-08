\version "2.24.0"

\paper {
  #(set-paper-size "a4landscape")
  print-all-headers = ##t
  page-breaking = #ly:minimal-breaking
  outher-margin = 4.8 \cm
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"            ; default
     #:brace "emmentaler"            ; default
     #:roman "EB Garamond"
     #:sans "Nimbus Sans, Nimbus Sans L"
     #:typewriter "DejaVu Sans Mono"
     #:factor (/ staff-height pt 17)
    ))
}

global = {
  \key d \minor
  \time 4/4
  \partial 4
  \override NoteHead.style = #'petrucci
}


Chords = \transpose g d{\chordmode {
  \partial 4
  s4 | g1:m |  g1:m |  g1:m |  g1:m |  g1:m |  g1:m | g1:m | g2.:m 
  c4:m | f1 | f1 | g2:m g2:sus2 | g2.:m c4:m | f1 | f1 | g2:m g2:sus2  | g2.
}}

"|" = {\bar "'"}

superius = \transpose g d{\relative c'' {
  \clef "petrucci-g"
  \global
  d4 | d c d c | bes bes bes a | g f g a | 
  g g g d' | d c d c | bes bes bes a | g f g a |
  g g g \break c8 bes | a4 g a bes | a g a d8 c  | bes4 g g fis | 
  g g g c8 bes8 | a4 g a bes | a g a d8 c8 | bes4 g g fis | g2.

  \bar ":|."
}}

cantus = \transpose g d{ \relative c'' {
  \clef "petrucci-g"
  \global
  g4 | g2 g | g2. f8 e | d2 d | d d | g g | g2. f8 e | d2 d2 | d2. 
  g4 | f2 f2 | f2 f2 | d2 d2 | d2. g4 | f2 f2 | f2 f2 | d2 d2 | d2.
}}


tenor = \transpose g d{\relative c {
  \clef "petrucci-f5"
  \global
  bes4 | bes2. c4 | d2 d | bes bes | bes bes  | bes2. c4 | d2 d | bes bes | bes2.
  ees4 | c2 c | c2. bes8 a |  bes2 a |  bes2. ees4 | c2 c | c2. bes8 a | bes2 a | b2.
}
}

%altus = \relative c' {
%  \clef "petrucci-g"
%  \global
%}

bassus = \transpose g d{\relative c' {
  \clef "petrucci-f"
  \global
  g4 | g2 g |  g g | g g | g g | g g | g g | g g |
  g2. c,4 | f2 f | f f | g d | g2. c,4 | f2 f | f f | g d | g2.
}}

%sopranoVerse = \lyricmode {
%  % Lyrics follow here.
%}

\score {
   <<
    \new MensuralStaff \with {
      midiInstrument = "recorder"
%      instrumentName = "Superius [5]"
    } { \superius }
  %  \addlyrics { \sopranoVerse }
    \new MensuralStaff \with {
      midiInstrument = "recorder"
%      instrumentName = "Cantus [1]"
    } { \cantus}
%   \new MensuralStaff \with {
%     midiInstrument = "recorder"
%     instrumentName = "Altus [4]"
%   } { \altus}
  %  \addlyrics { \altoVerse }
    \new MensuralStaff \with {
      midiInstrument = "recorder"
%      instrumentName = "Tenor [2]"
    } { \tenor }
     \new ChordNames \with {
  \override ChordName.font-family = #'roman
\override ChordName.font-size = #0
} \Chords

 %  \addlyrics { \tenorVerse }
    \new MensuralStaff \with {
      midiInstrument = "recorder"
%      instrumentName = "Bassus [3]"
    } { \bassus }
  >>
 \layout {
  indent = 0.0
    \context {
      \MensuralStaff
  \override KeySignature.alteration-glyph-name-alist = #alteration-mensural-glyph-name-alist
  \override BarLine.transparent = ##f % Notice two pound signs
  
    }
  }
  %  \addlyrics { \bassVerse }

  \header {
    title = "Schiarazula marazula"
    subtitle = "Il primo libro de' balli, 1576"
    composer = "Giorgio Mainerio, Arr. Jacob Paix"
    arranger = "transposed from G to D"
  }
  \midi {
    \tempo 4 = 180
  }
}
\header {
    tagline = "SCP 2024"
  }
\pointAndClickOff
