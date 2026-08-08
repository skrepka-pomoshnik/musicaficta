\version "2.24.0"
\pointAndClickOff

% Der Wilde Alexander: "Owê, daz nâch liebe gât"
% Jenaer Liederhandschrift J, J WAlex 37-41, fol. 25rb-25vb.
%
% Layout principle in this edition:
% - each poetic line is engraved as an independent melodic phrase;
% - the eight phrases of stanza I are followed by the eight phrases of stanza II, etc.;
% - there is no continuous stanza-sized Lyrics stream;
% - every extra note belonging to a melisma is visibly attached by a slur and,
%   where appropriate, a lyric extender (__), so no note appears as orphan melody;
% - durations are editorial spacing / grouping values, not a mensural claim.

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  page-breaking = #ly:minimal-breaking
  ragged-bottom = ##t
  print-page-number = ##f
  print-all-headers = ##f
  two-sided = ##t
  system-system-spacing = #'((basic-distance . 1)
                             (minimum-distance . 1)
                             (padding . 0.4)
                             (stretchability . 0))
  score-system-spacing = #'((basic-distance . 1)
                            (minimum-distance . 1)
                            (padding . 0.4)
                            (stretchability . 0))
  markup-system-spacing.basic-distance = #1
  top-system-spacing.basic-distance = #2
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "EB Garamond"
      #:sans "Nimbus Sans, Nimbus Sans L"
      #:typewriter "DejaVu Sans Mono"
      #:factor (/ staff-height pt 13)))
  oddFooterMarkup = \markup { \fill-line { \null \override #'((font-name . "ygoth") (font-size . 3)) "SCP - 2026" \null } }
  evenFooterMarkup = \oddFooterMarkup
}

\header {
  title = \markup {
    \override #'((font-name . "ygoth") (font-size . 5))
    \concat {
      "Ow" \combine "e" \translate #'(0.1 . 1.1) \fontsize #-2 "ˆ"
      ", daz n" \combine "a" \translate #'(0.2 . 1.1) \fontsize #-2 "ˆ"
      "ch liebe g" \combine "a" \translate #'(0.2 . 1.1) \fontsize #-2 "ˆ" "t"
    }
  }
  subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 2)) "Jenaer Liederhandschrift J - J WAlex 37-41" }
  composer = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Der Wilde Alexander" }
  tagline = ##f
}

% Default layout for every phrase-score.
\layout {
  line-width = 170\mm
  indent = 0\mm
  ragged-right = ##f
  \context {
    \Score
    \omit BarNumber
    \override SpacingSpanner.uniform-stretching = ##f
    \override SpacingSpanner.strict-note-spacing = ##f
  }
  \context {
    \MensuralStaff
    \override KeySignature.alteration-glyph-name-alist = #alteration-mensural-glyph-name-alist
    \override NoteHead.font-size = #1
  }
  \context {
    \Lyrics
    \override LyricText.font-name = #"EB Garamond"
    \override LyricText.font-size = #3
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . 0.35)
         (stretchability . 0))
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . 0.2)
         (stretchability . 0))
    \override LyricHyphen.minimum-distance = #0.3
    \override LyricSpace.minimum-distance = #0.4
    \override LyricExtender.minimum-length = #0.8
  }
}

global = {
  \cadenzaOn
  \autoBeamOff
  \override NoteHead.style = #'vaticana.punctum
  \override Staff.StaffSymbol.color = #(x11-color 'red)
  \omit Stem
  \omit Flag
  \omit Beam
  \omit TimeSignature
  \omit BarLine
}

% -----------------------------------------------------------------------------
% The eight melodic phrases, with variants only where a stanza needs a
% different syllable/neume allocation.  Repeated pitches subdivide a sustained
% pitch; they do not introduce new melodic material.
% -----------------------------------------------------------------------------

pOneSeven = \relative c' { c4 d e e f8( e) d2 e4 \bar "|." }
pOneEight = \relative c' { c4 d e e f8 e d2 e4 \bar "|." }
pOneNine  = \relative c' { c4 d e e f8 e d4 d e4 \bar "|." }

pTwoSix   = \relative c' { b4 c d a c4( b) a \bar "|." }
pTwoSeven = \relative c' { b4 c d a c b a \bar "|." }

pThreeSeven = \relative c' { c4 d e e f8( e) d2 e4 \bar "|." }
pThreeEight = \relative c' { c4 d e e f8 e d2 e4 \bar "|." }
pThreeTen   = \relative c' { c4 d e e f8 e d4 d8 d e4 \bar "|." }

pFourSix   = \relative c' { b4 c d a c4( b) a \bar "|." }
pFourSeven = \relative c' { b4 c d a c b a \bar "|." }

pFiveSeven = \relative c' { f4 e d c d c8( d e f) e2 \bar "|." }
pFiveEight = \relative c' { f4 e d c d c8( d e) f e2 \bar "|." }
pFiveNine  = \relative c' { f4 e d c d c8( d) e f e2 \bar "|." }
pFiveTen   = \relative c' { f4 e d c d c8 d e f e2 \bar "|." }

pSixEight = \relative c' { e4 f g e f e d4( d8) c8 \bar "|." }
pSixNine  = \relative c' { e4 f g e f e d4 d8 c \bar "|." }

pSevenEight  = \relative c' { d2 c4 bes8( a) g2 a4 bes c4( g8) f8 \bar "|." }
pSevenEleven = \relative c' { d4 d c bes8 a g2 a4 bes c4 g8 f \bar "|." }

pEightSeven = \relative c' {
  a2 bes4 c g8( f) g2 a16( b a g) bes8( a) \bar "|."
}
pEightEight = \relative c' {
  a2 bes4 c g8( f) g2 a16( b a g) bes8 a \bar "|."
}
pEightTen = \relative c' {
  a2 bes4 c g8( f) g2 a16( b) a g bes8 a \bar "|."
}

% -----------------------------------------------------------------------------
% One lyric variable per poetic line.  Extenders are written explicitly on
% word-final syllables that carry a melisma; intra-word melismas are shown by
% the ordinary syllabic hyphen plus the slur in the music.
% -----------------------------------------------------------------------------

Ione   = \lyricmode { O -- wê, daz nâch lie -- be gât }
Itwo   = \lyricmode { leit, sô man ez trî -- be! }
Ithree = \lyricmode { Nu wil Min -- ne un -- "de‿ist" ir rât }
Ifour  = \lyricmode { daz ich dâ von schrî -- be. }
Ifive  = \lyricmode { Sie sprach sel -- be wi -- der __ mich: }
Isix   = \lyricmode { Schrîp daz leit ob al -- lem lei -- de, }
Iseven = \lyricmode { swâ sich liep __ von lie -- be schei -- de, }
Ieight = \lyricmode { trû -- rec un -- de __ un -- en -- de -- lîch. }

IIone   = \lyricmode { Mî -- ner vrou -- wen un -- de mir }
IItwo   = \lyricmode { mac ich diz leit schrî -- ben. }
IIthree = \lyricmode { Sie le -- bet mir un -- "de‿ich" leb ir, }
IIfour  = \lyricmode { un -- de müe -- zen trî -- ben }
IIfive  = \lyricmode { doch mit jâ -- mer un -- ser __ ta -- ge. }
IIsix   = \lyricmode { Min -- ne wil un -- de kan ge -- bie -- ten, }
IIseven = \lyricmode { daz wir uns __ durch sie ge -- nie -- ten }
IIeight = \lyricmode { kur -- zer vröu -- de __ un -- de __ lan -- ger kla -- ge. }

IIIone   = \lyricmode { Dô uns Min -- ne ir sti -- u -- re bôt, }
IIItwo   = \lyricmode { wæ -- re wir dô bei -- de, }
IIIthree = \lyricmode { sam -- net in den vröu -- den tôt, }
IIIfour  = \lyricmode { als wir doch in lei -- de }
IIIfive  = \lyricmode { nu des tô -- des müe -- zen __ we -- sen! }
IIIsix   = \lyricmode { Schœ -- ne vrou -- we Min -- ne, schô -- ne, }
IIIseven = \lyricmode { un -- de to -- be sô niht mit dî -- me lô -- ne! }
IIIeight = \lyricmode { Lâ mich ster -- ben __ un -- de __ sie ge -- ne -- sen! }

IVone   = \lyricmode { Tœ -- te mich un -- de lâ sie le -- ben! }
IVtwo   = \lyricmode { Nein, ich wil, sprach Min -- ne, }
IVthree = \lyricmode { mî -- me schilt -- ge -- ver -- ten ge -- ben }
IVfour  = \lyricmode { vür -- lust un -- de ge -- win -- ne. }
IVfive  = \lyricmode { Ouch stêt an dem brie -- ve __ mîn, }
IVsix   = \lyricmode { daz ich Min -- ne niht ne hie -- ze, }
IVseven = \lyricmode { ob ich un -- vür -- sê -- ret lie -- ze, }
IVeight = \lyricmode { zwei, die von -- ein -- an -- der __ sîn. __ }

Vone   = \lyricmode { Uns wæ -- re ein jâr al -- sô ein tac, }
Vtwo   = \lyricmode { swen -- ne wir sa -- ment wæ -- ren; }
Vthree = \lyricmode { un -- se -- me lei -- de wür -- de ets -- lich slac }
Vfour  = \lyricmode { von schimpf -- lî -- chen mæ -- ren, }
Vfive  = \lyricmode { bei -- de stil -- le un -- de __ of -- fen -- bâr. }
Vsix   = \lyricmode { Nu müe -- ze wir di -- cke trû -- ren, }
Vseven = \lyricmode { bî vrœ -- lî -- chen nâch -- ge -- bû -- ren, }
Veight = \lyricmode { des ist uns ein __ tac ein __ jâr. __ }

% One visible melody per poetic line, with all five stanzas beneath it.
% The stanza-specific variants are invisible alignment voices: they retain
% each line's exact syllable/neume allocation without duplicating the staff.
phrase =
#(define-music-function
  (visible iMusic iiMusic iiiMusic ivMusic vMusic
   iWords iiWords iiiWords ivWords vWords)
  (ly:music? ly:music? ly:music? ly:music? ly:music? ly:music?
   ly:music? ly:music? ly:music? ly:music? ly:music?)
  #{
    <<
      \new MensuralStaff <<
        \new MensuralVoice = "visiblePhrase" {
          \global
          \clef "vaticana-do2"
          $visible
        }
        \new NullVoice = "alignI" { $iMusic }
        \new NullVoice = "alignII" { $iiMusic }
        \new NullVoice = "alignIII" { $iiiMusic }
        \new NullVoice = "alignIV" { $ivMusic }
        \new NullVoice = "alignV" { $vMusic }
      >>
      \new Lyrics \lyricsto "alignI" { $iWords }
      \new Lyrics \lyricsto "alignII" { $iiWords }
      \new Lyrics \lyricsto "alignIII" { $iiiWords }
      \new Lyrics \lyricsto "alignIV" { $ivWords }
      \new Lyrics \lyricsto "alignV" { $vWords }
    >>
  #})

IoneNumbered = \lyricmode { \set stanza = #"I." \Ione }
IIoneNumbered = \lyricmode { \set stanza = #"II." \IIone }
IIIoneNumbered = \lyricmode { \set stanza = #"III." \IIIone }
IVoneNumbered = \lyricmode { \set stanza = #"IV." \IVone }
VoneNumbered = \lyricmode { \set stanza = #"V." \Vone }

\score {
  \phrase
    \pOneSeven
    \pOneSeven \pOneSeven \pOneNine \pOneNine \pOneNine
    \IoneNumbered \IIoneNumbered \IIIoneNumbered \IVoneNumbered \VoneNumbered
}
\noPageBreak
\score {
  \phrase
    \pTwoSix
    \pTwoSix \pTwoSix \pTwoSix \pTwoSix \pTwoSeven
    \Itwo \IItwo \IIItwo \IVtwo \Vtwo
}
\noPageBreak
\score {
  \phrase
    \pThreeSeven
    \pThreeEight \pThreeEight \pThreeSeven \pThreeEight \pThreeTen
    \Ithree \IIthree \IIIthree \IVthree \Vthree
}
\noPageBreak
\score {
  \phrase
    \pFourSix
    \pFourSix \pFourSix \pFourSix \pFourSeven \pFourSix
    \Ifour \IIfour \IIIfour \IVfour \Vfour
}
\noPageBreak
\score {
  \phrase
    \pFiveSeven
    \pFiveSeven \pFiveEight \pFiveEight \pFiveSeven \pFiveNine
    \Ifive \IIfive \IIIfive \IVfive \Vfive
}
\noPageBreak
\score {
  \phrase
    \pSixEight
    \pSixEight \pSixNine \pSixEight \pSixEight \pSixEight
    \Isix \IIsix \IIIsix \IVsix \Vsix
}
\noPageBreak
\score {
  \phrase
    \pSevenEight
    \pSevenEight \pSevenEight \pSevenEleven \pSevenEight \pSevenEight
    \Iseven \IIseven \IIIseven \IVseven \Vseven
}
\noPageBreak
\score {
  \phrase
    \pEightSeven
    \pEightEight \pEightTen \pEightTen \pEightSeven \pEightSeven
    \Ieight \IIeight \IIIeight \IVeight \Veight
}
