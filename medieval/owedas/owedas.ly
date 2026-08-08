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
  ragged-bottom = ##t
  print-page-number = ##f
  print-all-headers = ##f
  two-sided = ##t
  system-system-spacing.basic-distance = #7
  score-system-spacing.basic-distance = #6
  markup-system-spacing.basic-distance = #5
  top-system-spacing.basic-distance = #5
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "EB Garamond"
      #:sans "Nimbus Sans, Nimbus Sans L"
      #:typewriter "DejaVu Sans Mono"
      #:factor (/ staff-height pt 13)))
  oddFooterMarkup = \markup { \fill-line { \null \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" \null } }
  evenFooterMarkup = \markup { \fill-line { \null \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" \null } }
}

\header {
  title = \markup {
    \override #'((font-name . "ygoth") (font-size . 7))
    \concat {
      "Ow" \combine "e" \translate #'(0.1 . 1.1) \fontsize #-2 "ˆ"
      ", daz n" \combine "a" \translate #'(0.2 . 1.1) \fontsize #-2 "ˆ"
      "ch liebe g" \combine "a" \translate #'(0.2 . 1.1) \fontsize #-2 "ˆ" "t"
    }
  }
  subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Jenaer Liederhandschrift J - J WAlex 37-41" }
  composer = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "Der Wilde Alexander" }
  tagline = ##f
}

% Default layout for every phrase-score.
\layout {
  indent = 0\mm
  ragged-right = ##t
  \context {
    \Score
    \omit BarNumber
    \override SpacingSpanner.uniform-stretching = ##f
    \override SpacingSpanner.strict-note-spacing = ##f
  }
  \context {
    \MensuralStaff
    \override KeySignature.glyph-name-alist = #alteration-mensural-glyph-name-alist
    \override NoteHead.font-size = #2
  }
  \context {
    \Lyrics
    \override LyricText.font-name = #"EB Garamond"
    \override LyricText.font-size = #4
    \override LyricHyphen.minimum-distance = #0.45
    \override LyricSpace.minimum-distance = #0.65
    \override LyricExtender.minimum-length = #1.2
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

% Small helper pattern used manually below:
% << \new MensuralStaff { \new MensuralVoice = "..." { \global \clef "vaticana-do2" \phrase } }
%    \new Lyrics \lyricsto "..." { \line } >>

\markup { \vspace #0.3 \fill-line { \null \bold \fontsize #2 "I" \null } \vspace #0.2 }

\score { << \new MensuralStaff { \new MensuralVoice = "I1" { \global \clef "vaticana-do2" \pOneSeven } }   \new Lyrics \lyricsto "I1" { \Ione } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "I2" { \global \clef "vaticana-do2" \pTwoSix } }     \new Lyrics \lyricsto "I2" { \Itwo } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "I3" { \global \clef "vaticana-do2" \pThreeEight } } \new Lyrics \lyricsto "I3" { \Ithree } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "I4" { \global \clef "vaticana-do2" \pFourSix } }    \new Lyrics \lyricsto "I4" { \Ifour } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "I5" { \global \clef "vaticana-do2" \pFiveSeven } } \new Lyrics \lyricsto "I5" { \Ifive } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "I6" { \global \clef "vaticana-do2" \pSixEight } }  \new Lyrics \lyricsto "I6" { \Isix } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "I7" { \global \clef "vaticana-do2" \pSevenEight } } \new Lyrics \lyricsto "I7" { \Iseven } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "I8" { \global \clef "vaticana-do2" \pEightEight } } \new Lyrics \lyricsto "I8" { \Ieight } >> }

\pageBreak
\markup { \vspace #0.3 \fill-line { \null \bold \fontsize #2 "II" \null } \vspace #0.2 }

\score { << \new MensuralStaff { \new MensuralVoice = "II1" { \global \clef "vaticana-do2" \pOneSeven } }   \new Lyrics \lyricsto "II1" { \IIone } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "II2" { \global \clef "vaticana-do2" \pTwoSix } }     \new Lyrics \lyricsto "II2" { \IItwo } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "II3" { \global \clef "vaticana-do2" \pThreeEight } } \new Lyrics \lyricsto "II3" { \IIthree } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "II4" { \global \clef "vaticana-do2" \pFourSix } }    \new Lyrics \lyricsto "II4" { \IIfour } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "II5" { \global \clef "vaticana-do2" \pFiveEight } } \new Lyrics \lyricsto "II5" { \IIfive } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "II6" { \global \clef "vaticana-do2" \pSixNine } }   \new Lyrics \lyricsto "II6" { \IIsix } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "II7" { \global \clef "vaticana-do2" \pSevenEight } } \new Lyrics \lyricsto "II7" { \IIseven } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "II8" { \global \clef "vaticana-do2" \pEightTen } }  \new Lyrics \lyricsto "II8" { \IIeight } >> }

\pageBreak
\markup { \vspace #0.3 \fill-line { \null \bold \fontsize #2 "III" \null } \vspace #0.2 }

\score { << \new MensuralStaff { \new MensuralVoice = "III1" { \global \clef "vaticana-do2" \pOneNine } }     \new Lyrics \lyricsto "III1" { \IIIone } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "III2" { \global \clef "vaticana-do2" \pTwoSix } }      \new Lyrics \lyricsto "III2" { \IIItwo } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "III3" { \global \clef "vaticana-do2" \pThreeSeven } } \new Lyrics \lyricsto "III3" { \IIIthree } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "III4" { \global \clef "vaticana-do2" \pFourSix } }     \new Lyrics \lyricsto "III4" { \IIIfour } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "III5" { \global \clef "vaticana-do2" \pFiveEight } }  \new Lyrics \lyricsto "III5" { \IIIfive } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "III6" { \global \clef "vaticana-do2" \pSixEight } }   \new Lyrics \lyricsto "III6" { \IIIsix } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "III7" { \global \clef "vaticana-do2" \pSevenEleven } } \new Lyrics \lyricsto "III7" { \IIIseven } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "III8" { \global \clef "vaticana-do2" \pEightTen } }   \new Lyrics \lyricsto "III8" { \IIIeight } >> }

\pageBreak
\markup { \vspace #0.3 \fill-line { \null \bold \fontsize #2 "IV" \null } \vspace #0.2 }

\score { << \new MensuralStaff { \new MensuralVoice = "IV1" { \global \clef "vaticana-do2" \pOneNine } }     \new Lyrics \lyricsto "IV1" { \IVone } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "IV2" { \global \clef "vaticana-do2" \pTwoSix } }      \new Lyrics \lyricsto "IV2" { \IVtwo } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "IV3" { \global \clef "vaticana-do2" \pThreeEight } } \new Lyrics \lyricsto "IV3" { \IVthree } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "IV4" { \global \clef "vaticana-do2" \pFourSeven } }  \new Lyrics \lyricsto "IV4" { \IVfour } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "IV5" { \global \clef "vaticana-do2" \pFiveSeven } }  \new Lyrics \lyricsto "IV5" { \IVfive } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "IV6" { \global \clef "vaticana-do2" \pSixEight } }   \new Lyrics \lyricsto "IV6" { \IVsix } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "IV7" { \global \clef "vaticana-do2" \pSevenEight } } \new Lyrics \lyricsto "IV7" { \IVseven } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "IV8" { \global \clef "vaticana-do2" \pEightSeven } }  \new Lyrics \lyricsto "IV8" { \IVeight } >> }

\pageBreak
\markup { \vspace #0.3 \fill-line { \null \bold \fontsize #2 "V" \null } \vspace #0.2 }

\score { << \new MensuralStaff { \new MensuralVoice = "V1" { \global \clef "vaticana-do2" \pOneNine } }      \new Lyrics \lyricsto "V1" { \Vone } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "V2" { \global \clef "vaticana-do2" \pTwoSeven } }    \new Lyrics \lyricsto "V2" { \Vtwo } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "V3" { \global \clef "vaticana-do2" \pThreeTen } }   \new Lyrics \lyricsto "V3" { \Vthree } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "V4" { \global \clef "vaticana-do2" \pFourSix } }     \new Lyrics \lyricsto "V4" { \Vfour } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "V5" { \global \clef "vaticana-do2" \pFiveNine } }    \new Lyrics \lyricsto "V5" { \Vfive } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "V6" { \global \clef "vaticana-do2" \pSixEight } }    \new Lyrics \lyricsto "V6" { \Vsix } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "V7" { \global \clef "vaticana-do2" \pSevenEight } }  \new Lyrics \lyricsto "V7" { \Vseven } >> }
\score { << \new MensuralStaff { \new MensuralVoice = "V8" { \global \clef "vaticana-do2" \pEightSeven } }  \new Lyrics \lyricsto "V8" { \Veight } >> }
