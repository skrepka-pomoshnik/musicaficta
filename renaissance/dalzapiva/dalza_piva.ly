\version "2.24.4"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4landscape")

  page-breaking = #ly:optimal-breaking
  page-count = 1
  system-count = 4

  left-margin = 7\mm
  right-margin = 7\mm
  top-margin = 6\mm
  bottom-margin = 5\mm

  indent = 13\mm
  short-indent = 0\mm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-last = ##f

  markup-system-spacing =
    #'((basic-distance . 4)
       (minimum-distance . 3)
       (padding . 0.6)
       (stretchability . 2))

  system-system-spacing =
    #'((basic-distance . 9)
       (minimum-distance . 7)
       (padding . 1.0)
       (stretchability . 4))

  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "EB Garamond"
      #:sans "EB Garamond"
      #:typewriter "DejaVu Sans Mono"
      #:factor (/ staff-height pt 20)))
}

\header {
  title = \markup { \fontsize #4 \smallCaps "Piva" }
  subtitle = \markup {
    \small \italic "de la Pavana alla ferrarese · trasposta in Sol · per flauti"
  }
  subsubtitle = \markup {
    \tiny "Joanambrosio Dalza · Intabolatura de lauto, Venezia 1508 · fol. 23v-24r"
  }
  arranger = \markup {
    \tiny \italic "ridotta a tre voci · Tenor ricostruito · riprese editoriali semplici"
  }
  tagline = ##f
}

global = {
  \key c \major
  \time 3/8
}

%% Editorial policy:
%% only completely identical written-out passages are replaced by simple
%% repeat signs. Any passage with a different continuation/cadence is written
%% out in full. Therefore there are no numbered volta endings.


superius = {
  %% Only exact written-out repetitions are compressed.
  %% No first/second endings are used.
  %% original mm. 1-7
  r4 a'8 |
  g'4 f'8 |
  e'4 d'8 |
  c'4 g8 |
  c'4 a'8 |
  g'4 f'8 |
  e'4 d'8 |
  %% original mm. 8-15
  \repeat volta 2 {
    c'4 g'8 |
    f'4 e'8 |
    d'4 f'8 |
    e'4 d'8 |
  }
  %% original mm. 16-32
  c'4 d'8 |
  e'8 f'4 |
  d'4 f'8 |
  e'4 d'8 |
  c'4 d'8 |
  e'8 f'4 |
  d'4 f'8 |
  e'8 d'4 |
  c'4 g'8 |
  g'8 g'4 |
  g'4 g'8 |
  g'4 g'8 |
  g'4 g'8 |
  g'4 g'8 |
  g'4 f'8 |
  e'4 d'8 |
  c'4 g'8 |
  %% original mm. 33-36
  \repeat volta 2 {
    g'4 g'8 |
    g'4 g'8 |
  }
  %% original mm. 37-39
  g'4 g'8 |
  g'4 f'8 |
  e'4 d'8 |
  %% original mm. 40-55
  \repeat volta 2 {
    c'4 d'8 |
    r4 d'8 |
    d'4 d'8 |
    r4 d'8 |
    d'4 d'8 |
    r4 d'8 |
    d'4 f'8 |
    e'4 d'8 |
  }
  %% original mm. 56-72
  c'4 c''8 |
  r4 c''8 |
  b'4 c''8 |
  a'4 b'8 |
  c''4 c''8 |
  r4 c''8 |
  b'4 c''8 |
  a'4 b'8 |
  c''4 b'8 |
  c''4 a'8 |
  b'4 c''8 |
  a'4 b'8 |
  c''4 b'8 |
  c''4 a'8 |
  b'4 c''8 |
  a'4 b'8 |
  c''4 g'8 |
  %% original mm. 73-76
  \repeat volta 2 {
    r4 g'8 |
    g'4 g'8 |
  }
  %% original mm. 77-83
  r4 g'8 |
  g'4 f'8 |
  e'4 d'8 |
  c'4 d'8 |
  r4 d'8 |
  d'4 f'8 |
  e'4 d'8 |
  %% original mm. 84-91
  \repeat volta 2 {
    c'4 g8 |
    d'4 b8 |
    e'4 c'8 |
    d'4 b8 |
  }
  %% original mm. 92-99
  \repeat volta 2 {
    c'4 a'8 |
    f'4 g'8 |
    e'4 f'8 |
    d'4 b8 |
  }
  %% original mm. 100-120
  c'4 g8 |
  c'4 c''8 |
  b'4 a'8 |
  g'4 f'8 |
  e'4 c'8 |
  e'4 c''8 |
  b'4 a'8 |
  g'4 f'8 |
  e'8 f'8 g'8 |
  a'8 g'8 f'8 |
  e'8 d'8 c'8 |
  d'8 c'8 b8 |
  c'8 c''8 b'8 |
  a'8 g'8 f'8 |
  e'8 d'8 c'8 |
  d'8 c'8 b8 |
  r16 d'16 e'16 f'16 g'8 |
  a'8 g'8 f'8 |
  e'8 d'8 c'8 |
  d'8 c'16 b16 a16 b16 |
  \set Timing.measureLength = #(ly:make-moment 1/4)
  g'4\fermata \once \override Staff.BarLine.bar-extent = #'(-2 . 2) \bar "|."
}

tenor = {
  %% Only exact written-out repetitions are compressed.
  %% No first/second endings are used.
  %% original mm. 1-7
  r4. |
  g8 e8 a8 |
  g4. |
  a4 e8 |
  e4 c8 |
  e4 a8 |
  g4. |
  %% original mm. 8-15
  \repeat volta 2 {
    a8 e4 |
    a4 g8 |
    g4 d8 |
    e8 g4 |
  }
  %% original mm. 16-32
  a4 g8 |
  g8 a4 |
  g4 d8 |
  e8 g4 |
  a4 g8 |
  g8 a4 |
  g4 d8 |
  e8 g4 |
  a4 e8 |
  e4 g8 |
  e4. |
  e4 g8 |
  e4. |
  e8 g8 e8 |
  e4 a8 |
  g4. |
  a4 e8 |
  %% original mm. 33-36
  \repeat volta 2 {
    e4 g8 |
    e4. |
  }
  %% original mm. 37-39
  e8 g8 e8 |
  e4 a8 |
  g4. |
  %% original mm. 40-55
  \repeat volta 2 {
    a4 g8 |
    e4 b8 |
    b4. |
    e4 b8 |
    b4. |
    g8 b4 |
    g4 d8 |
    e8 g4 |
  }
  %% original mm. 56-72
  a4. |
  g8 a8 e8 |
  e8 d8 e8 |
  d4. |
  e4 a8 |
  g8 a8 e8 |
  e8 d8 e8 |
  d4. |
  e8 a8 g8 |
  e4 c8 |
  d4 e8 |
  d4. |
  e4 g8 |
  a4. |
  g4 e8 |
  d4. |
  e4 b8 |
  %% original mm. 73-76
  \repeat volta 2 {
    a8 g8 e8 |
    e4. |
  }
  %% original mm. 77-83
  a8 g8 e8 |
  e4 a8 |
  g4. |
  a4 g8 |
  b4. |
  g4 d8 |
  e8 g4 |
  %% original mm. 84-91
  \repeat volta 2 {
    a8 e4 |
    b4. |
    a8 g8 a8 |
    b4 g8 |
  }
  %% original mm. 92-99
  \repeat volta 2 {
    a4 c'8 |
    a4 g8 |
    a8 g8 a8 |
    b4 g8 |
  }
  %% original mm. 100-120
  a8 e4 |
  a4 e8 |
  e8 d4 |
  e4 d8 |
  a8 g8 a8 |
  g4 e8 |
  e8 d4 |
  e4 d8 |
  a4 c'8 |
  c'4 a8 |
  g4 a8 |
  b8 e4 |
  a4 g8 |
  a8 c'8 a8 |
  g4 a8 |
  b8 e4 |
  g4 c'8 |
  c'4 a8 |
  g4 a8 |
  g8 e8 d8 |
  \set Timing.measureLength = #(ly:make-moment 1/4)
  c4\fermata \once \override Staff.BarLine.bar-extent = #'(-2 . 2) \bar "|."
}

bassus = {
  %% Only exact written-out repetitions are compressed.
  %% No first/second endings are used.
  %% original mm. 1-7
  r4. |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  %% original mm. 8-15
  \repeat volta 2 {
    c4. |
    c4. |
    g,4. |
    c4. |
  }
  %% original mm. 16-32
  c4. |
  c4. |
  g,4. |
  c4. |
  c4. |
  c4. |
  g,4. |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  %% original mm. 33-36
  \repeat volta 2 {
    c4. |
    c4. |
  }
  %% original mm. 37-39
  c4. |
  c4. |
  c4. |
  %% original mm. 40-55
  \repeat volta 2 {
    c4. |
    g,4. |
    g,4. |
    g,4. |
    g,4. |
    g,4. |
    g,4. |
    c4. |
  }
  %% original mm. 56-72
  c4. |
  c4. |
  g,4. |
  g,4. |
  c4. |
  c4. |
  g,4. |
  g,4. |
  c4. |
  c4. |
  g,4. |
  g,4. |
  c4. |
  c4. |
  c4. |
  g,4. |
  g,4. |
  %% original mm. 73-76
  \repeat volta 2 {
    c4. |
    c4. |
  }
  %% original mm. 77-83
  c4. |
  c4. |
  c4. |
  c4. |
  g,4. |
  g,4. |
  c4. |
  %% original mm. 84-91
  \repeat volta 2 {
    c4. |
    g,4. |
    c4. |
    g,4. |
  }
  %% original mm. 92-99
  \repeat volta 2 {
    c4. |
    c4. |
    c4. |
    g,4. |
  }
  %% original mm. 100-120
  c4. |
  c4. |
  g,4. |
  g,4. |
  c4. |
  c4. |
  g,4. |
  g,4. |
  c4. |
  f,4. |
  c4. |
  g,4. |
  c4. |
  f,4. |
  c4. |
  g,4. |
  c4. |
  f,4. |
  c4. |
  g,4. |
  \set Timing.measureLength = #(ly:make-moment 1/4)
  c4\fermata \once \override Staff.BarLine.bar-extent = #'(-2 . 2) \bar "|."
}

harmony = \chordmode {
  %% Only exact written-out repetitions are compressed.
  %% No first/second endings are used.
  %% original mm. 1-7
  s4. |
  c4. |
  c4. |
  a4.:m/c |
  a4.:m/c |
  c4. |
  c4. |
  %% original mm. 8-15
  \repeat volta 2 {
    a4.:m/c |
    f4./c |
    g4. |
    c4. |
  }
  %% original mm. 16-32
  f4./c |
  c4. |
  g4. |
  c4. |
  f4./c |
  c4. |
  g4. |
  c4. |
  a4.:m/c |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  c4. |
  a4.:m/c |
  %% original mm. 33-36
  \repeat volta 2 {
    c4. |
    c4. |
  }
  %% original mm. 37-39
  c4. |
  c4. |
  c4. |
  %% original mm. 40-55
  \repeat volta 2 {
    f4./c |
    e4.:m/g |
    g4. |
    e4.:m/g |
    g4. |
    g4. |
    g4. |
    c4. |
  }
  %% original mm. 56-72
  f4./c |
  c4. |
  e4.:m/g |
  g4. |
  a4.:m/c |
  c4. |
  e4.:m/g |
  g4. |
  c4. |
  a4.:m/c |
  g4. |
  g4. |
  c4. |
  f4./c |
  c4. |
  g4. |
  c4./g |
  %% original mm. 73-76
  \repeat volta 2 {
    c4. |
    c4. |
  }
  %% original mm. 77-83
  c4. |
  c4. |
  c4. |
  f4./c |
  g4. |
  g4. |
  c4. |
  %% original mm. 84-91
  \repeat volta 2 {
    a4.:m/c |
    g4. |
    a4.:m/c |
    g4. |
  }
  %% original mm. 92-99
  \repeat volta 2 {
    f4./c |
    f4./c |
    a4.:m/c |
    g4. |
  }
  %% original mm. 100-120
  a4.:m/c |
  a4.:m/c |
  g4. |
  c4./g |
  a4.:m/c |
  c4. |
  g4. |
  c4./g |
  a4.:m/c |
  f4. |
  c4. |
  g4. |
  f4./c |
  f4. |
  c4. |
  g4. |
  c4. |
  f4. |
  c4. |
  g4. |
  \set Timing.measureLength = #(ly:make-moment 1/4)
  c4 \once \override Staff.BarLine.bar-extent = #'(-2 . 2) \bar "|."
}

scoreMusic = <<
  \new MensuralStaff \with {
    instrumentName = \markup { \smallCaps "Svperivs" }
    shortInstrumentName = ""
    midiInstrument = "recorder"
  } {
    \clef "petrucci-g"
    \transpose c g { \global \superius }
  }

  \new MensuralStaff \with {
    instrumentName = \markup { \smallCaps "Tenor" }
    shortInstrumentName = ""
    midiInstrument = "recorder"
  } {
    \clef "petrucci-g"
    \transpose c g' { \global \tenor }
  }

  \new MensuralStaff \with {
    instrumentName = \markup { \smallCaps "Bassvs" }
    shortInstrumentName = ""
    midiInstrument = "recorder"
  } {
    \clef "petrucci-f4"
    \transpose c g { \global \bassus }
  }

  \new ChordNames \with {
    instrumentName = \markup { \small \italic "Accordi" }
    \override ChordName.font-family = #'roman
    \override ChordName.font-size = #0
    \override VerticalAxisGroup.staff-affinity = #UP
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
      #'((basic-distance . 5.0)
         (minimum-distance . 4.0)
         (padding . 1.25)
         (stretchability . 1))
  } {
    \set chordChanges = ##t
    \transpose c g { \global \harmony }
  }
>>

\score {
  \scoreMusic

  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
      \override SpacingSpanner.base-shortest-duration =
        #(ly:make-moment 1/8)
      \override SpacingSpanner.shortest-duration-space = #1.42
      \override BarLine.hair-thickness = #1.15
      \override BarLine.thick-thickness = #2.8
    }

    \context {
      \MensuralStaff
      \override NoteHead.style = #'petrucci
      \override NoteHead.font-size = #4
      \override Dots.font-size = #2
      \override Rest.font-size = #1.5
      \override Flag.font-size = #1.5

      \override TimeSignature.style = #'single-digit

      %% Small tactus marks for ordinary measures.
      measureBarType = ","
      \override BarLine.transparent = ##f
      \override BarLine.bar-extent = #'(-1.35 . 1.35)
      \override BarLine.hair-thickness = #1.25

      %% Plain repeat signs only; no volta brackets/endings.
      startRepeatBarType = ".|:"
      endRepeatBarType = ":|."
      doubleRepeatBarType = ":|.|:"

      %% Keep large heads and ledger lines comfortably separated.
      \override VerticalAxisGroup.default-staff-staff-spacing =
        #'((basic-distance . 9.0)
           (minimum-distance . 7.5)
           (padding . 1.25)
           (stretchability . 4))

      \override Rest.style = #'mensural
      \override Flag.style = #'mensural
      \override Accidental.alteration-glyph-name-alist =
        #alteration-mensural-glyph-name-alist
      \override KeySignature.alteration-glyph-name-alist =
        #alteration-mensural-glyph-name-alist
    }
  }
}

\score {
  <<
    \new Staff \with { midiInstrument = "recorder" } {
      \unfoldRepeats \transpose c g { \global \superius }
    }
    \new Staff \with { midiInstrument = "recorder" } {
      \unfoldRepeats \transpose c g' { \global \tenor }
    }
    \new Staff \with { midiInstrument = "recorder" } {
      \unfoldRepeats \transpose c g { \global \bassus }
    }
  >>
  \midi {
    \tempo 4. = 100
  }
}
