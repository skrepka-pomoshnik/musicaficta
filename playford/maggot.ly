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
     #:factor (/ staff-height pt 15)
    ))
}

global = {
  \key g \minor
  \time 3/2
  \override NoteHead.style = #'petrucci
}


"|" = {\bar "|"}

Chords = \chordmode {
  g2 d g:m | c:m d:7 g:m | g f:7 bes | c:m f:7 bes |
  bes1. | f | g:m | c2:m g:m d | d'1. | g2:m d:7 g:m | bes1 f2 | g:m d:7 g:m
}


%% todo: fix repeats, repeat styles, remove bar number, write superius, add annotations

cantus = \relative c'' {
  \clef "petrucci-g"
  \global
  g'2 fis4. e16 f g2 | d4 c8 bes a bes c4 bes4 g | g'2 a4. g16 a bes2 | f4 ees8 d c d ees4 d bes \bar ":|." \break
d4 f2 f4 f2 | c4 ees2 ees4 ees2 | bes4 d2 d4 d c8 bes | a bes c4 bes a8 g fis4 d |
d'4 a'2 a4 a a | bes a g fis g2 | d8 ees8 f4 bes,8 c8 d4 a8 bes8 c4 | bes4 g g4. fis8 g2 \bar "|." 
}

tenor = \relative c' {
  \clef "petrucci-g"
  \global
  c2 d bes' | g4 a fis a d2 | b, c4 d d2 | g2 a4 g f2 \bar ":|."
  bes4 bes2 a4 a2 | f4 f2 f4 f2 | g4 g2 f4 g2 | es2 g2 a | f1 d2 | es2 a es | g2 d2 c2 | e a g
}


bassus = \relative c {
  \clef "petrucci-f"
  \global
  g'2 d g | c d g, | g f bes | c f bes, \bar ":|."
  bes1. | f | g | c2 g d | a'1. | g2 d g | bes1 f2 | g d g,
}

%sopranoVerse = \lyricmode {
%  % Lyrics follow here.
%}

\score {
   <<
%   \new MensuralStaff \with {
%     midiInstrument = "recorder"
%     instrumentName = ""
%   } { \superius }
  %  \addlyrics { \sopranoVerse }
    \new MensuralStaff \with {
      midiInstrument = "recorder"
     instrumentName = "Soprano"
    } { \cantus}
%   \new MensuralStaff \with {
%     midiInstrument = "recorder"
%     instrumentName = "Altus [4]"
%   } { \altus}
  %  \addlyrics { \altoVerse }
    \new MensuralStaff \with {
      midiInstrument = "recorder"
     instrumentName = "Tenor"
    } { \tenor }
     \new ChordNames \with {
  \override ChordName.font-family = #'roman
\override ChordName.font-size = #-1
} \Chords

 %  \addlyrics { \tenorVerse }
    \new MensuralStaff \with {
      midiInstrument = "recorder"
     instrumentName = "Bass"
    } { \bassus }
  >>
 \layout {
    \context {
      \MensuralStaff
  \override KeySignature.glyph-name-alist = #alteration-mensural-glyph-name-alist
  \override BarLine.transparent = ##f % Notice two pound signs
    }
  }
  %  \addlyrics { \bassVerse }

  \header {
    title = "Mr. Beveridge's Maggot"
    subtitle = "Longways for as many as will"
    opus = "The English Dancing Master, 1651"
    composer = "John Playford, Arr. PS"
    poet = "AAB ..."
%    arranger = "PS"
  }
  \midi {
    \context {
      \Score
      midiMinimumVolume = #0.9
      midiMaximumVolume = #1.1
    }
    \tempo 4 = 200
  }
}
\header {
    tagline = "SCP 2023"
  }
