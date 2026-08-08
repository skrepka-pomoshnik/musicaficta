\version "2.24.0"

% CSM 77 — Da que Déus mamou o leite do séu peito
% Two editions generated from one source:
%   csm77-original.pdf  — medieval Galician-Portuguese text
%   csm77-rus.pdf       — Russian phonetic transcription
%
% Editorial basis:
% - Text: Andrew Casson, Cantigas de Santa Maria for Singers, CSM 77,
%   standard spelling (first three stanzas).
% - The editorial "o" after "mamou" in the refrain is retained. It is absent
%   from manuscripts E and T, but restores the metre and lets the refrain
%   match the vuelta; Casson notes that the corresponding ligature should be
%   split so that "o" receives its own note.
% - Melody/rhythm entered from the monophonic vocal line in the widely used
%   modern 6/8 transcription of CSM 77; the stanza's vuelta is kept identical
%   to the refrain.
%
% Style follows the musicaficta/medieval LilyPond files, but removes unused
% voices, uses real page margins, enlarges the punctum noteheads slightly,
% and keeps the source data shared between both language editions.

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4")
  ragged-bottom = ##t
  top-margin = 2\cm
  bottom-margin = 2\cm
  left-margin = 2\cm
  right-margin = 2\cm
  system-system-spacing.basic-distance = #5
  score-system-spacing.basic-distance = #0
  score-markup-spacing.basic-distance = #0
  markup-system-spacing.basic-distance = #0
  ragged-bottom = ##t
  #(set-paper-size "a4")
  top-margin = 2\cm
  bottom-margin = 2\cm
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-last-bottom = ##f
  print-all-headers = ##t

  #(define fonts
     (set-global-fonts
       #:music "emmentaler"
       #:brace "emmentaler"
       #:roman "EB Garamond"
       #:sans "Nimbus Sans, Nimbus Sans L"
       #:typewriter "DejaVu Sans Mono"
       #:factor (/ staff-height pt 13)))
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
    \override StaffSymbol.color = #(x11-color 'red)
    \override NoteHead.style = #'vaticana.punctum
    \override NoteHead.font-size = #2
    \override KeySignature.glyph-name-alist = #alteration-mensural-glyph-name-alist
  }

  \context {
    \Lyrics
    \override LyricText.font-name = #"EB Garamond"
    \override LyricText.font-size = #4.0
    \override StanzaNumber.font-name = #"EB Garamond"
    \override StanzaNumber.font-size = #4.0
    \override StanzaNumber.font-shape = #'italic
  }
}

global = {
  \key d \dorian
  \time 6/8
  \clef "vaticana-do2"
  \override NoteHead.style = #'vaticana.punctum
  \override NoteHead.font-size = #2
  \override Staff.StaffSymbol.color = #(x11-color 'red)
}

% Refrain: 11' + 11'.
refrainMusic = \relative c' {
  \global
  f4 e8 f4 g8 \bar "'"
  a4. d,4. \bar "'"
  f4 g8 f e d \bar "'"
  c4. c4 d8 \bar "'" f4 e8 f4 g8 \bar "'"
  a4. d,4. \bar "'"
  f4 e8 d e c \bar "'"
  d4. d4. \bar "||"
}

% Stanza melody: bbAA.  The final eight bars are the vuelta and therefore
% repeat the refrain melody exactly.
stanzaMusic = \relative c' {
  \global
  % b — line 1
  f4 g8 a4 g8 \bar "'"
  a8 g f d4 d8 \bar "'"
  f4 e8 d4 c8 \bar "'"
  f4. f4. \bar "'" \break

  % b — line 2
  f4 g8 a4 g8 \bar "'"
  a8 g f d4 d8 \bar "'"
  f4 e8 d4 c8 \bar "'"
  d4. d4. \bar "'" \break

  % A — line 3 / vuelta
  f4 e8 f4 g8 \bar "'"
  a4. d,4. \bar "'"
  f4 g8 f e d \bar "'"
  c4. c4 d8 \bar "'" \break

  % A — line 4 / vuelta
  f4 e8 f4 g8 \bar "'"
  a4. d,4. \bar "'"
  f4 e8 d e c \bar "'"
  d4. d4. \bar "|."
}

% ---------------------------------------------------------------------------
% Original text — medieval Galician-Portuguese (standard spelling)
% ---------------------------------------------------------------------------

refrainOriginal = \lyricmode {
  Da que Déus ma -- mou o
  lei -- te do _ séu pei -- to _
  non é ma -- ra -- vi -- lla
  de sã -- ar con -- trei -- to _
}

stanzaOneOriginal = \lyricmode {
  \set stanza = "1."
  Des -- to fez San -- ta _ Ma -- rí -- a
  mi -- ra -- gre fre -- mo -- so

  e -- na sa i -- gre _ "j'en" Lu -- go,
  grand' e pï -- a -- do -- so,

  por ũ -- a mo -- llér que
  ha -- ví -- a _ to -- llei _ -- to

  o mais de séu córp' e
  de mal en _ co -- llei -- to.
}

stanzaTwoOriginal = \lyricmode {
  \set stanza = "2."
  Que am -- ba -- las sú -- _ as mã -- os
  as -- sí "s'en" -- co -- lle -- ran,

  que ben per ca -- bo _ dos om -- bros
  to -- das se me -- te -- ran,

  e os cal -- ca -- nna -- res
  ben en séu _ de -- rei _ -- to

  se me -- te -- ron to -- dos
  no cór -- po _ mal -- trei -- to.
}

stanzaThreeOriginal = \lyricmode {
  \set stanza = "3."
  Pois viu que lle non _ pres -- ta -- va
  nul -- la me -- e -- zin -- na,

  tor -- nou "s'a" San -- ta _ Ma -- rí -- a
  a nó -- bre Re -- í -- nna,

  ro -- gan -- do lle que non
  ca -- tas -- se _ des -- pei _ -- to

  se "ll'e" -- la fe -- zé -- ra
  mais a séu _ pro -- vei -- to.
}

stanzaFourOriginal = \lyricmode {
  \set stanza = "4."
  pa -- ras -- se men -- tes en gui -- sa
  que a gua -- res -- ces _ -- se,

  se non que fe -- zés as -- sí
  per que ce -- do mor -- res _ -- se;

  e ló -- go se fe -- zo le -- var _
  en un lei _ -- to,

  ant a sa i -- gre -- ja,
  pe -- quen e es -- trei _ -- to.
}

stanzaFiveOriginal = \lyricmode {
  \set stanza = "5."
  E e -- la a -- lí ja -- zen -- do
  fez mui bõ -- a vi _ -- da,

  trõ -- es que "ll'" ou -- ve mer -- cee
  a Sen -- nor com -- pri _ -- da,

  e -- no mes "d'" a -- gos -- to,
  no dí -- a "'scol" -- lei _ -- to,

  na sa fés -- ta gran -- de,
  co -- mo vos re -- trei _ -- to.
}

stanzaSixOriginal = \lyricmode {
  \set stanza = "6."
  se -- rá a -- go -- ra per min.
  Ca en a -- que -- le dí _ -- a,

  se fez me -- ter na i -- gre -- ja
  de San -- ta Ma -- rí _ -- a;

  mais a San -- ta Vir -- gen
  non a -- lon -- gou prei _ _ -- to,

  mas tor -- nou "ll'" o cór -- po
  to -- do es -- cor -- rei -- to.
}

stanzaSevenOriginal = \lyricmode {
  \set stanza = "7."
  Pe -- ro a -- vẽ -- o "ll'" a -- tal
  que a -- lí u sã -- a -- va,

  ca -- da un nem -- bro _ per si
  mui de rij es -- ta -- la -- va,

  ben co -- me ma -- dei -- ra _
  mui se -- ca de tei _ -- to,

  quan -- do "s'" es -- ten -- dí -- a
  o ner -- vio o -- dei -- to.
}

stanzaEightOriginal = \lyricmode {
  \set stanza = "8."
  O bis -- po e to -- da a gen -- te _
  de -- ant es -- tan -- do,

  ve -- end a -- quest e o -- índ _
  e de ri -- jo cho -- ran -- do,

  vi -- ron que mi -- ra -- gre _ foi
  e non tras -- jei _ -- to;

  po -- ren -- de lo -- a -- ron _
  a Vir -- gen a -- fei -- to.
}

% ---------------------------------------------------------------------------
% Russian phonetic transcription
% ң = [ŋ], ll = [ʎ] approximated by ль, nn = [ɲ] by нь/ня;
% z = [dz]; intervocalic s = [z]; g/j before e,i represented as дж.
% Unstressed vowels are intended to remain unreduced.
% ---------------------------------------------------------------------------

refrainRussian = \lyricmode {
  Да кэ Дэус ма -- моу о
  лэй -- тэ до _ сэу пэй -- то _
  ноң э́ ма -- ра -- ви -- ля
  дэ саң -- ар кон -- трэ́й -- то _
}

stanzaOneRussian = \lyricmode {
  \set stanza = "1."
  Дэ́с -- то фэдз Сан -- та _ Ма -- ри́ -- а
  ми -- ра -- грэ фрэ -- мо́ -- зо

  э́ -- на са и -- грэ _ джэң Лу́ -- го,
  гранд э пи -- а -- до́ -- зо,

  пор у́ -- ңа мо -- льэ́р кэ
  а -- ви́ -- а _ то -- лэй _ -- то

  о майс дэ сэу ко́рп э
  дэ мал эң _ ко -- лэй -- то.
}

stanzaTwoRussian = \lyricmode {
  \set stanza = "2."
  Кэ а́м -- ба -- лас су́ -- _ ас ма -- ңос
  а -- си́ сэн -- ко -- льэ -- ран,

  кэ бэм пэр ка́ -- бо _ дос о́м -- брос
  то́ -- дас сэ мэ -- тэ́ -- ран,

  э ос кал -- ка -- ня -- рэс
  бэң эң сэу _ дэ -- рэ́й _ -- то

  сэ мэ -- тэ́ -- рон то́ -- дос
  но ко́р -- по _ мал -- трэ́й -- то.
}

stanzaThreeRussian = \lyricmode {
  \set stanza = "3."
  Пойс виу кэ льэ ноң _ прэ -- ста́ -- ва
  ну́ -- ля мэ -- э -- дзи́ -- ня,

  тор -- но́у са Сан -- та _ Ма -- ри́ -- а
  а но́ -- брэ рэ -- и́ -- ня,

  ро -- га́н -- до льэ кэ ноң
  ка -- та́ -- сэ _ дэс -- пэ́й _ -- то

  сэ льэ -- ла фэ -- дзэ́ -- ра
  майс а сэу _ про -- вэ́й -- то.
}

stanzaFourRussian = \lyricmode {
  \set stanza = "4."
  Па -- ра́ -- сэ мэ́н -- тэс эŋ ги́ -- за
  кэ а гуа -- рэ -- це́ _ -- сэ,

  сэ ноŋ кэ фэд -- зэ́с а -- си́
  пэр кэ це́ -- до мор -- рэ́ _ -- сэ;

  э ло́ -- го сэ фэ́д -- зо лэ -- ва́р _
  эŋ уŋ лэ́й _ -- то,

  ант а са и -- грэ́ -- джа
  пэ -- кэ́ŋ э эс -- трэ́й _ -- то.
}

stanzaFiveRussian = \lyricmode {
  \set stanza = "5."
  Э э́ -- ла а -- ли́ джа -- дзэ́н -- до
  фэдз муй бо́ -- ңа ви́ _ -- да,

  тро́ -- ңэс кэ ль о́у -- вэ мэр -- цэ́ -- э
  а сэньо́р ком -- при́ _ -- да,

  э́ -- но мэс д а -- го́с -- то
  но ди́ -- а ско -- льэ́й _ -- то,

  на са фэ́с -- та гра́н -- дэ
  ко́ -- мо вос рэ -- трэ́й _ -- то.
}

stanzaSixRussian = \lyricmode {
  \set stanza = "6."
  Сэ -- ра́ а -- го́ -- ра пэр миң
  ка эŋ а -- кэ́ -- лэ ди́ _ -- а,

  сэ фэдз мэ -- тэ́р на и -- грэ́ -- джа
  дэ Са́н -- та Ма -- ри́ _ -- а;

  майс а Са́н -- та Ви́р -- джэŋ
  ноŋ а -- лоŋ -- го́у прэ́й _ _ -- то,

  мас тор -- но́у льо ко́р -- по
  то́ -- до эс -- кор -- рэ́й -- то.
}

stanzaSevenRussian = \lyricmode {
  \set stanza = "7."
  Пэ́ -- ро а -- вэ́ŋ -- о ль а -- та́л
  кэ а -- ли́ у саŋ -- а́ -- ва,

  ка́ -- да уŋ нэ́м -- бро _ пэр си
  муй дэ ри́дж эс -- та -- ла́ -- ва,

  бэŋ ко́ -- мэ ма -- дэ́й -- ра _
  муй сэ́ -- ка дэ тэ́й _ -- то,

  куа́н -- до с эс -- тэн -- ди́ -- а
  о нэ́р -- вио о -- дэ́й -- то.
}

stanzaEightRussian = \lyricmode {
  \set stanza = "8."
  О би́с -- по э то́ -- да а джэ́н -- тэ _
  дэ а́нт эс -- та́н -- до,

  вэ э́нд а -- кэ́ст э о -- и́нд _
  э дэ ри́ -- джо шо -- ра́н -- до,

  ви́ -- роŋ кэ ми -- ра́ -- грэ _ фой
  э ноŋ трас -- джэ́й _ -- то;

  по -- рэ́н -- дэ ло -- а́ -- роŋ _
  а Ви́р -- джэŋ а -- фэ́й -- то.
}

% ---------------------------------------------------------------------------
% ---------------------------------------------------------------------------
% Output editions
% ---------------------------------------------------------------------------

\layout {
  \context {
    \Lyrics
    \override LyricText.font-size = #4.0
  }
}

\book {
  \bookOutputName "csm77"
  \bookOutputSuffix "original-1-8"
  \paper {
    print-all-headers = ##f
  top-margin = 2\cm
  bottom-margin = 2\cm
  left-margin = 2\cm
  right-margin = 2\cm
    system-system-spacing.basic-distance = #5
    score-system-spacing.basic-distance = #0
    score-markup-spacing.basic-distance = #0
    markup-system-spacing.basic-distance = #0
  }
  \header {
    title = \markup { \override #'((font-name . "ygoth") (font-size . 7)) \concat { "Da que D" \combine "e" \translate #'(0.2 . 1.1) \fontsize #-2 "´" "us mamou o leite do s" \combine "e" \translate #'(0.2 . 1.1) \fontsize #-2 "´" "u peito" } }
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Cantigas de Santa Maria - CSM 77" }
    composer = \markup \concat {
      \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio"
      \hspace #0.7
      \override #'((font-name . "EB Garamond") (font-size . 1)) "· s. XIII"
    }
    tagline = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" }
  }
  \score { << \new MensuralStaff { \new MensuralVoice = "originalAllRef" { \transpose c c, \refrainMusic } } \new Lyrics \lyricsto "originalAllRef" { \refrainOriginal } >> }
  \score {
    <<
      \new MensuralStaff { \new MensuralVoice = "originalAllStanzas" { \transpose c c, \stanzaMusic } }
      \new Lyrics \lyricsto "originalAllStanzas" { \stanzaOneOriginal }
      \new Lyrics \lyricsto "originalAllStanzas" { \stanzaTwoOriginal }
      \new Lyrics \lyricsto "originalAllStanzas" { \stanzaThreeOriginal }
      \new Lyrics \lyricsto "originalAllStanzas" { \stanzaFourOriginal }
      \new Lyrics \lyricsto "originalAllStanzas" { \stanzaFiveOriginal }
      \new Lyrics \lyricsto "originalAllStanzas" { \stanzaSixOriginal }
      \new Lyrics \lyricsto "originalAllStanzas" { \stanzaSevenOriginal }
      \new Lyrics \lyricsto "originalAllStanzas" { \stanzaEightOriginal }
    >>
  }
}

\book {
  \bookOutputName "csm77"
  \bookOutputSuffix "original-1-5"
  \paper { print-all-headers = ##f top-margin = 2\cm bottom-margin = 2\cm left-margin = 2\cm right-margin = 2\cm system-system-spacing.basic-distance = #5 score-system-spacing.basic-distance = #0 score-markup-spacing.basic-distance = #0 markup-system-spacing.basic-distance = #0 }
  \header {
    title = \markup { \override #'((font-name . "ygoth") (font-size . 7)) \concat { "Da que D" \combine "e" \translate #'(0.2 . 1.1) \fontsize #-2 "´" "us mamou o leite do s" \combine "e" \translate #'(0.2 . 1.1) \fontsize #-2 "´" "u peito" } }
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Cantigas de Santa Maria - CSM 77" }
    composer = \markup \concat {
      \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio"
      \hspace #0.7
      \override #'((font-name . "EB Garamond") (font-size . 1)) "· s. XIII"
    }
    tagline = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" }
  }
  \score { << \new MensuralStaff { \new MensuralVoice = "originalFiveRef" { \transpose c c, \refrainMusic } } \new Lyrics \lyricsto "originalFiveRef" { \refrainOriginal } >> }
  \score {
    <<
      \new MensuralStaff { \new MensuralVoice = "originalFiveStanzas" { \transpose c c, \stanzaMusic } }
      \new Lyrics \lyricsto "originalFiveStanzas" { \stanzaOneOriginal }
      \new Lyrics \lyricsto "originalFiveStanzas" { \stanzaTwoOriginal }
      \new Lyrics \lyricsto "originalFiveStanzas" { \stanzaThreeOriginal }
      \new Lyrics \lyricsto "originalFiveStanzas" { \stanzaFourOriginal }
      \new Lyrics \lyricsto "originalFiveStanzas" { \stanzaFiveOriginal }
    >>
  }
}

\book {
  \bookOutputName "csm77"
  \bookOutputSuffix "rus-1-8"
  \paper { print-all-headers = ##f top-margin = 2\cm bottom-margin = 2\cm left-margin = 2\cm right-margin = 2\cm system-system-spacing.basic-distance = #5 score-system-spacing.basic-distance = #0 score-markup-spacing.basic-distance = #0 markup-system-spacing.basic-distance = #0 }
  \header {
    title = \markup { \override #'((font-name . "ygoth") (font-size . 7)) \concat { "Da que D" \combine "e" \translate #'(0.2 . 1.1) \fontsize #-2 "´" "us mamou o leite do s" \combine "e" \translate #'(0.2 . 1.1) \fontsize #-2 "´" "u peito" } }
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Cantigas de Santa Maria - CSM 77" }
    composer = \markup \concat {
      \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio"
      \hspace #0.7
      \override #'((font-name . "EB Garamond") (font-size . 1)) "· XIII век"
    }
    tagline = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" }
  }
  \score { << \new MensuralStaff { \new MensuralVoice = "rusAllRef" { \transpose c c, \refrainMusic } } \new Lyrics \lyricsto "rusAllRef" { \refrainRussian } >> }
  \score {
    <<
      \new MensuralStaff { \new MensuralVoice = "rusAllStanzas" { \transpose c c, \stanzaMusic } }
      \new Lyrics \lyricsto "rusAllStanzas" { \stanzaOneRussian }
      \new Lyrics \lyricsto "rusAllStanzas" { \stanzaTwoRussian }
      \new Lyrics \lyricsto "rusAllStanzas" { \stanzaThreeRussian }
      \new Lyrics \lyricsto "rusAllStanzas" { \stanzaFourRussian }
      \new Lyrics \lyricsto "rusAllStanzas" { \stanzaFiveRussian }
      \new Lyrics \lyricsto "rusAllStanzas" { \stanzaSixRussian }
      \new Lyrics \lyricsto "rusAllStanzas" { \stanzaSevenRussian }
      \new Lyrics \lyricsto "rusAllStanzas" { \stanzaEightRussian }
    >>
  }
}

\book {
  \bookOutputName "csm77"
  \bookOutputSuffix "rus-1-5"
  \paper { print-all-headers = ##f top-margin = 2\cm bottom-margin = 2\cm left-margin = 2\cm right-margin = 2\cm system-system-spacing.basic-distance = #5 score-system-spacing.basic-distance = #0 score-markup-spacing.basic-distance = #0 markup-system-spacing.basic-distance = #0 }
  \header {
    title = \markup { \override #'((font-name . "ygoth") (font-size . 7)) \concat { "Da que D" \combine "e" \translate #'(0.2 . 1.1) \fontsize #-2 "´" "us mamou o leite do s" \combine "e" \translate #'(0.2 . 1.1) \fontsize #-2 "´" "u peito" } }
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Cantigas de Santa Maria - CSM 77" }
    composer = \markup \concat {
      \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio"
      \hspace #0.7
      \override #'((font-name . "EB Garamond") (font-size . 1)) "· XIII век"
    }
    tagline = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" }
  }
  \score { << \new MensuralStaff { \new MensuralVoice = "rusFiveRef" { \transpose c c, \refrainMusic } } \new Lyrics \lyricsto "rusFiveRef" { \refrainRussian } >> }
  \score {
    <<
      \new MensuralStaff { \new MensuralVoice = "rusFiveStanzas" { \transpose c c, \stanzaMusic } }
      \new Lyrics \lyricsto "rusFiveStanzas" { \stanzaOneRussian }
      \new Lyrics \lyricsto "rusFiveStanzas" { \stanzaTwoRussian }
      \new Lyrics \lyricsto "rusFiveStanzas" { \stanzaThreeRussian }
      \new Lyrics \lyricsto "rusFiveStanzas" { \stanzaFourRussian }
      \new Lyrics \lyricsto "rusFiveStanzas" { \stanzaFiveRussian }
    >>
  }
}
