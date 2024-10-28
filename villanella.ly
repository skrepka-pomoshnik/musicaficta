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
  \key g \major
  \time 6/8
  \override NoteHead.style = #'petrucci
}


Chords = \chordmode {
  g2. g a:m g d c d g
  g f f2 c4 f2. f g d g
}

"|" = {\bar "|"}

%% todo: fix repeats, repeat styles, remove bar number, write superius, add annotations

cantus = \relative c' {
  \clef "petrucci-g"
  \global
  \sectionLabel "A"
  \bar ".|:"
  d'2 c4 |  b4 a b | a b c | b2 g4 | fis g fis | e fis g | fis g a | g2 g4
  \section
  \bar ":|:"
  \break
  \sectionLabel "B"
\version "2.24.2"
  b2 b4 | a2 a4 | a2 g4 | a2 a4 | a b c | b a g | a g a | b2 b4
  \section
  \bar ":|."
}

superius = \relative c'' {


  \clef "petrucci-g"
  \global
  % Music follows here.
  d'2 c4 |  b4 a b | a b c | b2 g4 | fis g fis | e fis g | fis g a | g2 g4 
  b2 b4 | a2 a4 | a2 g4 | a2 a4 | a b c | b a g | a g a | b2 b4
}

tenor = \relative c {
  \clef "petrucci-g"
  \global
  d'2 e4 | d2 d4 | c2 c4 | d2. | a2 a4 | c2 c4 | a2 a4 | d2. 
  d | c | c | c | c | g | a | d2 d4
}

altus = \relative c' {
  \clef "petrucci-g"
  \global
  g'2 c4 | g4. a8 g4 | e2 e4 | g2 g4 | fis4. g8 fis4 | e4. fis8 g4 | fis4. g8 a4 | g2 g4 
  g2 g4 | f2 f4 | f2 e4 | f2 f4 | f2 f4 | g2 g4 | fis2 fis4 | g2 g4
}



bassus = \relative c {
  \clef "petrucci-f"
  \global
  % Music follows here.
  b'2 a4 | g2 g4 | a2 a4 | g2. | d | c | d | g 
  g | f | f2 e4 | f2. | f | g | d | g
}

%sopranoVerse = \lyricmode {
%  % Lyrics follow here.
%}

\score {
   <<
    \new MensuralStaff \with {
      midiInstrument = "recorder"
      instrumentName = "Superius [5]"
    } { \superius }
  %  \addlyrics { \sopranoVerse }
    \new MensuralStaff \with {
      midiInstrument = "recorder"
      instrumentName = "Cantus [1]"
    } { \cantus}
    \new MensuralStaff \with {
      midiInstrument = "recorder"
      instrumentName = "Altus [4]"
    } { \altus}
  %  \addlyrics { \altoVerse }
    \new MensuralStaff \with {
      midiInstrument = "recorder"
      instrumentName = "Tenor [2]"
    } { \tenor }
     \new ChordNames \with {
  \override ChordName.font-family = #'roman
\override ChordName.font-size = #-1
} \Chords

 %  \addlyrics { \tenorVerse }
    \new MensuralStaff \with {
      midiInstrument = "recorder"
      instrumentName = "Bassus [3]"
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
    title = "Villanella"
    subtitle = "Baletto ex Il Ballarino, 1581"
    composer = "Fabritio Caroso, Arr. PS"
%    arranger = "PS"
  }
  \midi {
    \tempo 4 = 111
  }
}
\header {
    tagline = "SCP 2023"
  }
