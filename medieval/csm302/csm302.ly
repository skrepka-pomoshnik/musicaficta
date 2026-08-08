\version "2.24.0"

% CSM 302: "A Madre de Jesú-Cristo, que é Sennor de nobrezas"
% Four stanzas, with two performer editions in one source:
%   1) medieval Galician-Portuguese (standardized performance spelling)
%   2) Russian-Cyrillic pronunciation aid.
%
% Pronunciation conventions in the Cyrillic layer:
%   нг = ONE velar nasal [ŋ] (do not release a separate /g/)
%   нь = [ɲ], ль = [ʎ], ц = [ts], дз = [dz], дж = [dʒ]
%   ч = [tʃ]; v is rendered as в; intervocalic s is rendered as з.
% The Cyrillic layer is a pronunciation aid, NOT a translation.

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
  #(set-paper-size "a4")
  ragged-bottom = ##t
  oddFooterMarkup = \markup { \fill-line { \null \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" \null } }
  evenFooterMarkup = \markup { \fill-line { \null \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" \null } }
  print-all-headers = ##f
  page-breaking = #ly:minimal-breaking
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "EB Garamond"
     #:sans "Nimbus Sans, Nimbus Sans L"
     #:typewriter "DejaVu Sans Mono"
     #:factor (/ staff-height pt 13)))
}

#(set-global-staff-size 18)

\layout {
  indent = 0
  ragged-right = ##f
  \context {
    \Score
    \omit BarNumber
    \override SpacingSpanner.uniform-stretching = ##t
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
  \override NoteHead.style = #'vaticana.punctum
  \override NoteHead.font-size = #3
  \override Staff.StaffSymbol.color = #(x11-color 'red)
}

refrainMusic = \relative c {
  \clef "vaticana-do2"
  \global
  d1 c2 d f1 f g a2 g g1 g
  a1 a2 b a1 a2 g f1 g2 a f1 f1 \break
  f1 f2 g a1 a2 g f1 f2 e d1 c
  d1 c2 d f1 f2 e d2 e c1 d1 d1
}

stanzaMusic = \relative c {
  \clef "vaticana-do2"
  \global
  d1 c2 d f1 f1 f2 g f2 e d1 c
  d1 c2 d f1 f2 e d2 e c1 d1 d \break
  d1 c2 d f1 f1 f2 g f2 e d1 c
  d1 c2 d f1 f2 e d2 e c1 d1 d \break
  d1 c2 d f1 f g a2 g g1 g
  a1 a2 b a1 a2 g f1 g2 a f1 f1 \break
  f1 f2 g a1 a2 g f1 f2 e d1 c
  d1 c2 d f1 f2 e d2 e c1 d1 d1
}


% ----------------------------
% Original text
% ----------------------------

refrainGP = \lyricmode {
  A Ma _ -- dre de Je -- sú _ -- Cris -- to | que é _ Sen -- nor _ de no _ -- bre -- zas,
  non so _ -- fre que _ en sa _ ca -- sa | fa -- çan _ fur -- tos _ nen _ vi -- le -- zas.

}

stanzaGPone = \lyricmode {
  \set stanza = "1."
  E dest _ -- un mui gran _ mi _ -- ra -- gre | vos di _ -- rei que _ me _ ju -- ra -- ron,
  hó -- me _ -- es de bõ _ -- a _ vi -- da | e por _ ver -- da _ -- de _ mos -- tra -- ron,
  que fe _ -- zo San -- ta Ma _ -- rí -- a | de Mons _ -- sar -- rat _ e con _ -- ta -- ron,
  do que _ fez un _ á -- vol _ hó -- me | por mos _ -- trar sas _ a _ vo -- le -- zas.

}

stanzaGPtwo = \lyricmode {
  \set stanza = "2."
  Es -- te _ con ou -- tra _ gran _ gen -- te | vẽ -- o _ i en _ ro _ -- ma -- rí -- a,
  e a _ -- co -- lleu -- s a _ un _ hó -- me | con que _ fi -- llou _ com _ -- pa -- ní -- a;
  e quan -- do che -- gou a _ noi -- te | os din _ -- nei -- ros _ que tra _ -- gí -- a,
  lle fur _ -- tou da _ es -- mol _ nei -- ra | por cre _ -- cer en _ sas _ re -- que -- zas.

}

stanzaGPthree = \lyricmode {
  \set stanza = "3."
  Ou -- tro _ dí -- a de _ man _ -- nã -- a | des que _ as mis _ -- sas _ o -- í -- ron,
  os que _ a -- lí al _ -- ber _ -- ga -- ron | da ei _ -- gre -- ja _ se _ sa -- í -- ron;
  mas el _ en sa -- ír non _ po -- de | e es _ -- to mui _ -- tos o _ vi -- ron,
  ca non _ quis San _ -- ta Ma _ -- rí -- a | que é _ con Déus _ nas _ al -- te -- zas.

}

stanzaGPfour = \lyricmode {
  \set stanza = "4."
  A -- tá _ que ben re _ -- pen _ -- ti -- do | foss e _ ben mã _ -- e _ -- fes -- ta -- do,
  e to _ -- do quan -- to _ fur _ -- ta -- ra | hou -- vess _ a -- o _ ou _ -- tro da -- do,
  e que _ dis -- sess an _ -- te _ to -- dos | de com _ ha -- ví _ -- a _ er -- ra -- do,
  e sa _ -- íss en con _ ver _ -- gon -- na | por sas _ ma -- as _ as -- tru -- gue -- zas.

}
stanzaGPfive = \lyricmode {
  \set stanza = "5."
  Tod a _ -- quest as -- sí _ foi _ fei -- to | ca o _ quis a _ ver _ -- da -- dei -- ra,
  Ma -- dre _ de Déus pi _ -- a _ -- do -- sa | san -- ta _ e mui _ jus _ -- ti -- cei -- ra,
  que non _ quis que en _ sa _ ca -- sa | fos -- sen _ per nul _ -- la _ ma -- nei -- ra,
  fei -- tas _ cou -- sas des _ -- gui _ -- sa -- das | nen co _ bi -- í -- ças per po -- bre -- zas.

}


% ----------------------------
% Russian-Cyrillic pronunciation aid
% ----------------------------

refrainRU = \lyricmode {
  А Ма́ _ -- дрэ дэ Джэ -- зу́ _ -- Кри́ -- сто | кэ э́ _ Сэнь -- о́р _ дэ но _ -- брэ́ -- дзас,
  ноң со́ _ -- фрэ кэ _ эң са _ ка́ -- за | фа́ -- цаң _ фу́р -- тос _ нэң _ ви -- лэ́ -- дзас.

}

stanzaRUone = \lyricmode {
  \set stanza = "1."
  Э дэст _ -- уң муй граң _ ми _ -- ра́ -- грэ | вос ди _ -- рэ́й кэ _ мэ _ джу -- ра́ -- роң,
  о́ -- мэ _ -- эс дэ бо́ _ -- ңа _ ви́ -- да | э пор _ вэр -- да́ _ -- дэ _ мо -- стра́ -- роң,
  кэ фэ́ _ -- дзо Са́н -- та Ма́ _ -- ри́ -- а | дэ Моң _ -- сар -- ра́т _ э кон _ -- та́ -- роң,
  до кэ _ фэдз уң _ а́ -- вол _ о́ -- мэ | пор мо́с _ -- трар сас _ а _ во -- лэ́ -- дзас.

}

stanzaRUtwo = \lyricmode {
  \set stanza = "2."
  Э́с -- тэ _ коң о́у -- тра _ граң _ джэ́н -- тэ | вэ́ -- ңо _ и эң _ ро _ -- ма -- ри́ -- а,
  э а _ -- коль -- э́у -- с а _ уң _ о́ -- мэ | коң кэ _ филь -- о́у _ ком _ -- па -- ни́ -- а;
  э ку -- а́н -- до че -- го́у а _ но́й -- тэ | ос ди _ -- ньэ́й -- рос _ кэ тра _ -- джи́ -- а,
  льэ фу́р _ -- тоу да _ эс -- мол _ нэ́й -- ра | пор крэ _ -- цэ́р эң _ сас рэ -- кэ́ -- дзас.

}

stanzaRUthree = \lyricmode {
  \set stanza = "3."
  О́у -- тро _ ди́ -- а дэ _ ма _ -- нья́ң -- а | дэс кэ _ ас ми́ _ -- сас _ о -- и́ -- роң,
  ос кэ _ а -- ли́ ал _ -- бэр _ -- га́ -- роң | да эй _ -- грэ́ -- джа _ сэ _ са -- и́ -- роң;
  мас эл _ эң са -- и́р ноң _ по́ -- дэ | э э́с _ -- то муй _ -- тос о _ ви́ -- роң,
  ка ноң _ кис Са́н _ -- та Ма́ _ -- ри́ -- а | кэ э́ _ коң Дэ́ус _ нас _ ал -- тэ́ -- дзас.

}

stanzaRUfour = \lyricmode {
  \set stanza = "4."
  А -- та́ _ кэ бэң рэ _ -- пэн _ -- ти́ -- до | фос -- э _ бэң ма _ -- ңэ _ -- фэ -- ста́ -- до,
  э то́ _ -- до ку -- а́н _ -- то _ фур -- та́ -- ра | оу -- вэ́с _ а -- о _ о́у _ -- тро да́ -- до,
  э кэ _ ди -- сэ́с а́н _ -- тэ _ то́ -- дос дэ коң _ а -- ви́ _ -- а _ эр -- ра́ -- до,
  э са _ -- и́с эң коң _ вэр _ -- го́ -- нья пор сас _ ма́ -- ас а стру -- гэ́ -- дзас.

}

stanzaRUfive = \lyricmode {
  \set stanza = "5."
  То́д а _ -- кэ́ст а -- си́ _ фой _ фэ́й -- то | ка о _ кис а _ вэр _ -- да -- дэ́й -- ра,
  Ма́ -- дрэ _ дэ Дэ́ус пи _ -- а _ -- до́ -- за | са́н -- та _ э муй _ джус _ -- ти -- цэ́й -- ра,
  кэ ноң _ кис кэ эң _ са _ ка́ -- за | фо́ -- сэң _ пэр ну́ _ -- лья _ ма -- нэ́й -- ра,
  фэ́й -- тас _ ко́у -- зас дэс _ -- ги _ -- за́ -- дас | нэң ко _ би -- и́ -- цас пэр по -- брэ́ -- дзас.

}


\book {
  \bookOutputName "csm302"
  \bookOutputSuffix "original"
  \header {
    title = \markup {
      \override #'((font-name . "ygoth") (font-size . 7))
      \concat { "A Madre de Jes" \combine "u" \translate #'(0.25 . 1.1) \fontsize #-2 "´" "s-Cristo" }
    }
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Cantigas de Santa Maria - CSM 302" }
    composer = \markup \concat {
      \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio"
      \hspace #0.7
      \override #'((font-name . "EB Garamond") (font-size . 1)) "· s. XIII"
    }
    tagline = ##f
  }
  \score { << \new MensuralStaff { \new MensuralVoice = "c302oRef" { \refrainMusic } } \new Lyrics \lyricsto "c302oRef" { \refrainGP } >> }
  \score { <<
    \new MensuralStaff { \new MensuralVoice = "c302oSt" { \stanzaMusic } }
    \new Lyrics \lyricsto "c302oSt" { \stanzaGPone }
    \new Lyrics \lyricsto "c302oSt" { \stanzaGPtwo }
    \new Lyrics \lyricsto "c302oSt" { \stanzaGPthree }
    \new Lyrics \lyricsto "c302oSt" { \stanzaGPfour }
    \new Lyrics \lyricsto "c302oSt" { \stanzaGPfive }
  >> }
}
\book {
  \bookOutputName "csm302"
  \bookOutputSuffix "rus"
  \header {
    title = \markup {
      \override #'((font-name . "ygoth") (font-size . 7))
      \concat { "A Madre de Jes" \combine "u" \translate #'(0.25 . 1.1) \fontsize #-2 "´" "s-Cristo" }
    }
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Cantigas de Santa Maria - CSM 302" }
    composer = \markup \concat {
      \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio"
      \hspace #0.7
      \override #'((font-name . "EB Garamond") (font-size . 1)) "· XIII век"
    }
    tagline = ##f
  }
  \score { << \new MensuralStaff { \new MensuralVoice = "c302rRef" { \refrainMusic } } \new Lyrics \lyricsto "c302rRef" { \refrainRU } >> }
  \score { <<
    \new MensuralStaff { \new MensuralVoice = "c302rSt" { \stanzaMusic } }
    \new Lyrics \lyricsto "c302rSt" { \stanzaRUone }
    \new Lyrics \lyricsto "c302rSt" { \stanzaRUtwo }
    \new Lyrics \lyricsto "c302rSt" { \stanzaRUthree }
    \new Lyrics \lyricsto "c302rSt" { \stanzaRUfour }
    \new Lyrics \lyricsto "c302rSt" { \stanzaRUfive }
  >> }
}
