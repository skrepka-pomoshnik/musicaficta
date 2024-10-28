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
  \key a \minor
  \time 3/2
  \override NoteHead.style = #'petrucci
}


"|" = {\bar "|"}

Chords = \chordmode {
  \set noChordSymbol = ""
  r4 | e2.:m e:m | g g | c f | g g  |
  c c | g g | c c | g g | e1.:m | a:m | c | f | e2.:m e:m | d g | a:m f | g1. | g
}


%% todo: fix repeats, repeat styles, remove bar number, write superius, add annotations

cantus = \relative c'' {
  \clef "petrucci-g"
  \global
  \sectionLabel "A"
  e8 fis | g2. e | d4. e8 d4  b4. c8 d4 | c4 d b a4. g8 a b | g2.~ g2 \bar ":|.|:" \section \break
  \sectionLabel "B"
  b4 | c4. d8 e4 e4. d8 c4| d4 b2 g2 b4 | 
  c4. d8 e4 e4. d8 c4 | d4 b2 g2 e'8 fis | g2.~g2 fis8 g | a2.~a2 e8 fis | g2.~g2 fis8 g | \break a2.~a2 g8 a |  b2.~b2 e,4 | fis4. e8 d4 b4. c8 d4 | c4. d8 b4 a2 g 4 | g1.~ g2 \bar ":|."
}
% убрать знаки переноса, расписать A
tenor = \relative c'' {
  \clef "petrucci-g"
  \global
  r4 | g2. g | g d'2 b4 | g2. c | b b2 r4 | %e2. a | d f | a f | g g2 |
  c2 c4 c2 c4 | b2 b4 g2 g4 | c2 c4 c2 c4 | g2 b4 g2 g4 | b2. b2 r4 | e,2. e2 r4 | g2. g2 r4 | a2. a2 r4 | g2 g4 b2 a4 | a2 a4 b2 b4 | c2. c2. | b1.~ b2 \bar ":|."

}


bassus = \relative c {
  \clef "petrucci-f"
  \global
  r4 | e2. c | g' g | e f | g g2 r4 | %e2. a | d f | a f | g g2 |
  e2 c4 c2 c4 | g'2 g4 b2 e,4 | e2 c 4 c2 c4 | g'2 e4 b'2 fis4 | e2. e2 r4 | a2. a2 r4 | c2. c2 r4 | f,2. f2 r4 | e2 e4 e2 a4 | d2. g, | a2 g4 f2 f4 | g1.~ g2 \bar ":|."
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
    title = "The new Bo-peep, or Pickadilly."
    subtitle = "Longways for as many as will."
    poet = "AABB AABB AABB"
    opus = "The English Dancing Master, 1651"
    composer = "John Playford, Arr. PS"
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
