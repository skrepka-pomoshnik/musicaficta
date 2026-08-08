\version "2.24.0"
\pointAndClickOff

% Der Wilde Alexander: "Owê, daz nâch liebe gât"
% Jenaer Liederhandschrift J, J WAlex 37-41, fol. 25rb-25vb.
% The manuscript does not determine a mensural rhythm. All stanzas preserve
% the same pitch contour; sustained tones are subdivided where their distinct
% syllable counts require it. Slurs mark several pitches on one syllable.

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4")
  print-all-headers = ##f
  print-page-number = ##f
  two-sided = ##t
  page-breaking = #ly:minimal-breaking
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  system-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #9
  markup-system-spacing.basic-distance = #7
  oddFooterMarkup = \markup { \fill-line { \null \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" \null } }
  evenFooterMarkup = \markup { \fill-line { \null \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" \null } }
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "EB Garamond"
      #:sans "Nimbus Sans, Nimbus Sans L"
      #:typewriter "DejaVu Sans Mono"
      #:factor (/ staff-height pt 13)))
}

global = {
  \cadenzaOn
  \autoBeamOff
  \override NoteHead.style = #'vaticana.punctum
  \override NoteHead.font-size = #2
  \override Staff.StaffSymbol.color = #(x11-color 'red)
  \omit Stem
  \omit Flag
  \omit Beam
  \omit TimeSignature
}

phraseBar = { \bar "'" }

% Phrase variants by sung-syllable count.
pOneSeven = \relative c' { c4 d e e f8( e) d2 e4 \phraseBar }
pOneEight = \relative c' { c4 d e e f8 e d2 e4 \phraseBar }
pOneNine = \relative c' { c4 d e e f8 e d4 d e4 \phraseBar }

pTwoSix = \relative c' { b4 c d a c4( b) a \phraseBar }
pTwoSeven = \relative c' { b4 c d a c b a \phraseBar }

pThreeSeven = \relative c' { c4 d e e f8( e) d2 e4 \phraseBar }
pThreeEight = \relative c' { c4 d e e f8 e d2 e4 \phraseBar }
pThreeTen = \relative c' { c4 d e e f8 e d4 d8 d e4 \phraseBar }

pFourSix = \relative c' { b4 c d a c4( b) a \phraseBar }
pFourSeven = \relative c' { b4 c d a c b a \phraseBar }

pFiveSeven = \relative c' { f4 e d c d c8( d e f) e2 \phraseBar }
pFiveEight = \relative c' { f4 e d c d c8( d e) f e2 \phraseBar }
pFiveNine = \relative c' { f4 e d c d c8( d) e f e2 \phraseBar }

pSixEight = \relative c' { e4 f g e f e d4( d8) c8 \phraseBar }
pSixNine = \relative c' { e4 f g e f e d4 d8 c \phraseBar }

pSevenEight = \relative c' { d2 c4 bes8( a) g2 a4 bes c4( g8) f8 \phraseBar }
pSevenEleven = \relative c' { d4 d c bes8 a g2 a4 bes c4 g8 f \phraseBar }

pEightSeven = \relative c' { a2 bes4 c g8( f) g2 a16( b a g) bes8( a) \bar "|." }
pEightEight = \relative c' { a2 bes4 c g8( f) g2 a16( b a g) bes8 a \bar "|." }
pEightTen = \relative c' { a2 bes4 c g8( f) g2 a16( b) a g bes8 a \bar "|." }

melodyOne = {
  \global
  \pOneSeven \pTwoSix \pThreeEight \pFourSix \break
  \pFiveSeven \pSixEight \break
  \pSevenEight \pEightEight
}

melodyTwo = {
  \global
  \pOneSeven \pTwoSix \pThreeEight \pFourSix \break
  \pFiveEight \pSixNine \break
  \pSevenEight \pEightTen
}

melodyThree = {
  \global
  \pOneEight \pTwoSix \pThreeSeven \pFourSix \break
  \pFiveEight \pSixEight \break
  \pSevenEleven \pEightTen
}

melodyFour = {
  \global
  \pOneNine \pTwoSix \pThreeEight \pFourSeven \break
  \pFiveSeven \pSixEight \break
  \pSevenEight \pEightSeven
}

melodyFive = {
  \global
  \pOneNine \pTwoSeven \pThreeTen \pFourSix \break
  \pFiveNine \pSixEight \break
  \pSevenEight \pEightSeven
}

stanzaOne = \lyricmode {
  O -- wê, daz nâch lie -- be gât,
  leit, sô man ez trî -- be!
  Nu wil Min -- ne un -- "de‿ist" ir rât,
  daz ich dâ von schrî -- be.
  Sie sprach sel -- be wi -- der mich:
  Schrîp daz leit ob al -- lem lei -- de,
  swâ sich liep von lie -- be schei -- de,
  trû -- rec un -- de un -- en -- de -- lîch.
}

stanzaTwo = \lyricmode {
  Mî -- ner vrou -- wen un -- de mir
  mac ich diz leit schrî -- ben.
  Sie le -- bet mir un -- "de‿ich" leb ir,
  un -- de müe -- zen trî -- ben
  doch mit jâ -- mer un -- ser ta -- ge.
  Min -- ne wil un -- de kan ge -- bie -- ten,
  daz wir uns durch sie ge -- nie -- ten
  kur -- zer vröu -- de un -- de lan -- ger kla -- ge.
}

stanzaThree = \lyricmode {
  Dô uns Min -- ne ir sti -- u -- re bôt,
  wæ -- re wir dô bei -- de,
  sam -- net in den vröu -- den tôt,
  als wir doch in lei -- de
  nu des tô -- des müe -- zen we -- sen!
  Schœ -- ne vrou -- we Min -- ne, schô -- ne,
  un -- de to -- be sô niht mit dî -- me lô -- ne!
  Lâ mich ster -- ben un -- de sie ge -- ne -- sen!
}

stanzaFour = \lyricmode {
  Tœ -- te mich un -- de lâ sie le -- ben!
  Nein, ich wil, sprach Min -- ne,
  mî -- me schilt -- ge -- ver -- ten ge -- ben
  vür -- lust un -- de ge -- win -- ne.
  Ouch stêt an dem brie -- ve mîn,
  daz ich Min -- ne niht ne hie -- ze,
  ob ich un -- vür -- sê -- ret lie -- ze,
  zwei, die von -- ein -- an -- der sîn.
}

stanzaFive = \lyricmode {
  Uns wæ -- re ein jâr al -- sô ein tac,
  swen -- ne wir sa -- ment wæ -- ren;
  un -- se -- me lei -- de wür -- de ets -- lich slac
  von schimpf -- lî -- chen mæ -- ren,
  bei -- de stil -- le un -- de of -- fen -- bâr.
  Nu müe -- ze wir di -- cke trû -- ren,
  bî vrœ -- lî -- chen nâch -- ge -- bû -- ren,
  des ist uns ein tac ein jâr.
}

\layout {
  indent = 0
  ragged-right = ##f
  \context {
    \Score
    \omit BarNumber
    \override SpacingSpanner.uniform-stretching = ##t
  }
  \context {
    \MensuralStaff
    \override KeySignature.glyph-name-alist = #alteration-mensural-glyph-name-alist
    \override BarLine.transparent = ##f
  }
  \context {
    \Lyrics
    \override LyricText.font-name = #"EB Garamond"
    \override LyricText.font-size = #4
    \override LyricHyphen.minimum-distance = #0.5
    \override LyricSpace.minimum-distance = #0.7
    \override StanzaNumber.font-name = #"EB Garamond"
    \override StanzaNumber.font-size = #4
    \override StanzaNumber.font-shape = #'italic
  }
}

\book {
  \bookOutputName "owedas"
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

  \score {
    <<
      \new MensuralStaff { \new MensuralVoice = "voiceOne" { \clef "vaticana-do2" \melodyOne } }
      \new Lyrics \lyricsto "voiceOne" { \set stanza = "I." \stanzaOne }
    >>
  }

  \score {
    <<
      \new MensuralStaff { \new MensuralVoice = "voiceTwo" { \clef "vaticana-do2" \melodyTwo } }
      \new Lyrics \lyricsto "voiceTwo" { \set stanza = "II." \stanzaTwo }
    >>
  }

  \score {
    <<
      \new MensuralStaff { \new MensuralVoice = "voiceThree" { \clef "vaticana-do2" \melodyThree } }
      \new Lyrics \lyricsto "voiceThree" { \set stanza = "III." \stanzaThree }
    >>
  }

  \pageBreak

  \score {
    <<
      \new MensuralStaff { \new MensuralVoice = "voiceFour" { \clef "vaticana-do2" \melodyFour } }
      \new Lyrics \lyricsto "voiceFour" { \set stanza = "IV." \stanzaFour }
    >>
  }

  \score {
    <<
      \new MensuralStaff { \new MensuralVoice = "voiceFive" { \clef "vaticana-do2" \melodyFive } }
      \new Lyrics \lyricsto "voiceFive" { \set stanza = "V." \stanzaFive }
    >>
  }
}
