\version "2.24.0"

% CSM 100: "Santa María, Strela do día"
% Historically informed two-voice canon arrangement.
%
% IMPORTANT: the Cantiga itself is transmitted monophonically. This is an
% arrangement, not a reconstruction of manuscript polyphony.
%
% Design of the canon:
%   - Dux: the transmitted melody (the spurious 7/8 rest from the old file removed).
%   - Comes: exact diatonic answer a fourth above, entering after one whole note.
%   - The core answer is exact apart from three editorial ficta F-sharps, used
%     only where the literal answer would make a B-F tritone against the dux.
%   - All remaining discords are one-eighth passing overlaps; none is sustained.
%   - After the canon has finished, a short M3 -> unison clausula closes on D.
%
% This follows a 13th-century discant logic: structural concords dominate;
% discords are incidental rather than structural; the final is a perfect concord.

\paper {
  #(set-paper-size "a4landscape")
  print-all-headers = ##t
  page-breaking = #ly:minimal-breaking
  left-margin = 2.0\cm
  right-margin = 2.0\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "EB Garamond"
     #:sans "Nimbus Sans, Nimbus Sans L"
     #:typewriter "DejaVu Sans Mono"
     #:factor (/ staff-height pt 15)))
}

#(set-global-staff-size 16)

\header {
  title = \markup { \override #'((font-name . "ygoth") (font-size . 8)) "Santa María, Strela do día" }
  subtitle = \markup { \override #'((font-name . "EB Garamond") (font-size . 1)) "Cantiga de Santa Maria 100 · canon ad quartam · modern historical arrangement" }
  composer = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio" }
  arranger = "canon arrangement: SCP"
  tagline = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "SCP" }
}

global = {
  \key d \dorian
  \time 4/4
  \override NoteHead.style = #'vaticana.punctum
  \override Staff.StaffSymbol.color = #(x11-color 'red)
}

% Transmitted melody, without the artificial 7/8 gap in the uploaded version.
dux = \relative c'' {
  \clef "vaticana-do2"
  \global
  a4 g8 f e4 e8 f g4 a d, d \bar ","
  a'4 g8 f e4 d8 e f e d c d4 d \bar "," \break

  g8 a b4. a8 c b a b g4 g \bar ","
  g8 a b4. a8 c b a g a4 g \bar "," \break
  b8 c d4. b8 c d b a b4 b \bar ","
  b8 b b4. a8 c b a b g4 g \bar "," \break

  a4 g8 f e4 e8 f g4 a d, d \bar ","
  a'4 g8 f e4 d8 e f e d c d4 d

  % Hold while the comes completes the exact canon.
  d1
  % Added cadential clausula: M3 -> unison.
  \bar "||" c2 d2 \bar "|."
}

% Diatonic fourth-above answer:
% a->d, g->c, f->b, e->a, d->g, c->f, b->e.
% Three F-sharps are editorial musica ficta to remove vertical B-F tritones.
comes = \relative c'' {
  \clef "vaticana-do1"
  \global
  r1

  d4 c8 b a4 a8 b c4 d g, g \bar ","
  d'4 c8 b a4 g8 a b a g \once \set suggestAccidentals = ##t fis8 g4 g \bar "," \break

  c8 d e4. d8 f e d e c4 c \bar ","
  c8 d e4. d8 \once \set suggestAccidentals = ##t fis8 e d c d4 c \bar "," \break
  e8 f g4. e8 \once \set suggestAccidentals = ##t fis8 g e d e4 e \bar ","
  e8 e e4. d8 f e d e c4 c \bar "," \break

  d4 c8 b a4 a8 b c4 d g, g \bar ","
  d'4 c8 b a4 g8 a b a g f g4 g

  % The canon proper ends here. Add a free clausula over the dux c2-d2.
  \bar "||" e2 d2 \bar "|."
}

refrain = \lyricmode {
  San -- ta Ma -- rí -- a,
  Stre -- la do dí -- a,
  mós -- tra -- nos ví -- a
  pe -- ra Déus e nos guí -- a.
}

stanzaOne = \lyricmode {
  Ca ve -- er fa -- ze -- los er -- ra -- dos
  que per -- der fo -- ran per pe -- ca -- dos
  en -- ten -- der de que mui cul -- pa -- dos
  son; mais per ti son per -- dõ -- a -- dos
  da ou -- sa -- dí -- a
  que lles fa -- zí -- a
  fa -- zer fo -- lí -- a
  mais que non de -- ve -- rí -- a.
}

stanzaTwo = \lyricmode {
  A -- mos -- trar -- nos de -- ves ca -- rrei -- ra
  por gã -- ar en to -- da ma -- nei -- ra
  a sen par luz e ver -- da -- dei -- ra
  que tu dar -- nos pó -- des sen -- llei -- ra;
  ca Déus a ti a
  ou -- tor -- ga -- rí -- a
  e a que -- rrí -- a
  por ti dar e da -- rí -- a.
}

\score {
  <<
    \new MensuralStaff \with {
      instrumentName = \markup \smallCaps "Dux"
      shortInstrumentName = "D."
      midiInstrument = "recorder"
    } <<
      \new MensuralVoice = "duxVoice" { \dux }
    >>
    \new Lyrics \lyricsto "duxVoice" { \refrain \stanzaOne \refrain }

    \new MensuralStaff \with {
      instrumentName = \markup \smallCaps "Comes"
      shortInstrumentName = "C."
      midiInstrument = "recorder"
    } <<
      \new MensuralVoice = "comesVoice" { \comes }
    >>
    \new Lyrics \lyricsto "comesVoice" { \refrain \stanzaTwo \refrain }
  >>

  \layout {
    \context { \Score \omit BarNumber }
    \context {
      \MensuralStaff
      \override KeySignature.glyph-name-alist = #alteration-mensural-glyph-name-alist
      \override BarLine.transparent = ##f
    }
    \context {
      \Lyrics
      \override LyricText.font-size = #1
    }
  }

  \midi {
    \tempo 4 = 112
    midiMinimumVolume = #0.8
  }
}

\pointAndClickOff
