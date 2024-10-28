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
  \time 2/2
  \override NoteHead.style = #'petrucci
}


"|" = {\bar "|"}

Chords = \chordmode {

  \set noChordSymbol = ""
  r4 | g1 | g | g2 g:7 | c1 | g2 g:7 | c1 | g2 d:7 | g2. |
  r4 | e1:m | a:m | e:m | c | g | a:m | d:7 | g
}


%% todo: fix repeats, repeat styles, remove bar number, write superius, add annotations

cantus = \relative c' {
  \clef "petrucci-g2"
  \global
  \sectionLabel "A"
  d4 | b' d g, a | g4. a8 g4 d | b' d g, d' | e g2 fis8 e | d4 b a g | e e'2 d8 c | d4 b a4. g8 | g2. \bar ":|.|:" 
 \break
 \sectionLabel "B"
 e'8 fis | g8 fis e d g4. b,8 | a4 g'2 a,4 | g4. a8 b4 fis | e e'2 fis4 | g8 fis e d g4. b,8 | a4 a c4. d8 | e4 b a4. g8 | g2. \bar ":|."
}
tenor = \relative c' {
  \transposition c
  \clef "petrucci-g"
  \global
  r4 | b'2 d | b d | b b | e1 | b2 d | g,4 g'2 d4 | e2 fis | e2. |
  r4 | g,2 e | e4 d2 e4 | b'2 g | g4 g2 d4 | b'2 c | c e | fis d | d,2. \bar ":|."
}


bassus = \relative c' {
  \clef "petrucci-f"
  \global
  r4 | g1 | g | g2 g | c1 | g2 g | c1 | g2 d | g2. |
  r4 | e1 | a | e | c | g' | a | d,2 f | g2. \bar ":|."
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
    } {  \tenor }
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
    title = "Newcaftle."
    subtitle = "Round for eight."
    composer = "John Playford, Arr. PS"
    opus = "The English Dancing Master, 1651"
    poet = "AABB AABB AABB"
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

