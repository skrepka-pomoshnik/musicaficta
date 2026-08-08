\version "2.24.0"



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
  oddFooterMarkup = \markup { \fill-line { \null \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" \null } }
  evenFooterMarkup = \markup { \fill-line { \null \override #'((font-name . "ygoth") (font-size . 4)) "SCP - 2026" \null } }
 % #(set-paper-size "a4landscape")
  print-all-headers = ##f
  page-breaking = #ly:minimal-breaking
  outer-margin = 2\cm
  left-margin = 2\cm
  right-margin = 2\cm
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"            ; default
     #:brace "emmentaler"            ; default
     #:roman "EB Garamond"
     ;#:roman "Cardo"
     #:sans "Nimbus Sans, Nimbus Sans L"
     #:typewriter "DejaVu Sans Mono"
     #:factor (/ staff-height pt 13)
    ))
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
    \Lyrics
    \override LyricText.font-name = #"EB Garamond"
    \override LyricText.font-size = #4.0
    \override StanzaNumber.font-name = #"EB Garamond"
    \override StanzaNumber.font-size = #4.0
    \override StanzaNumber.font-shape = #'italic
  }
}

global = {
  \key a \minor
  \time 4/4
  \override NoteHead.style = #'vaticana.punctum
  \override Staff.StaffSymbol.color = #(x11-color 'red)
}

"|" = {\bar "'"}

%% todo: fix repeats, repeat styles, remove bar number, write superius, add annotations

refrainMusic = \relative c' {
  \clef "vaticana-do2"
  \global
  a4 g8 f e4 e8 f g4 a d, d \bar "," \break
  a'4 g8 f e4 d8 e f e d c d4 d \bar ","
}

stanzaMusic = \relative c' {
  \clef "vaticana-do2"
  \global
  g4 a b4. a8 c b a b g4 g \bar "," \break
  g4 a b4. a8 c b a g a4 g \bar "," \break
  b4 c d4. b8 c d b a b4 b \bar "," \break
  b4 b b4. a8 c b a b g4 g \bar "," \break
  a4 g8 f e4 e8 f g4 a d, d \bar "," \break
  a'4 g8 f e4 d8 e f e d c d4 d \bar ","
}


cantus = \relative c' {
  \clef "medicaea-do1"
  \global
  a
}

tenor = \relative c' {
  \clef "medicaea-do1"
  \global
  d
}

bassus = \relative c {
  \clef "medicaea-fa2"
  \global
  a
}

santarus = \lyricmode {
  Са́н -- та Ма -- ри́ -- а, |
  Стрэ́ -- ла до ди́ -- а,
  мо́ -- стра -- нос ви́ -- а, |
  пэ́ -- ра Дэ́ус э нос ги́ -- а.

}

stanzaonerus = \lyricmode {
  \set stanza = "1."
  Ка вэ -- э́р _ фа -- дзэ́ -- лос эр -- ра́ -- дос |
  кэ пэр -- дэ́р _ фо́ -- раң пэр пэ -- ка́ -- дос |
  эн -- тэн -- дэ́р дэ кэ муй _ кул -- па́ -- дос |
  соң майс пэр _ ти соң пэр -- до -- ңа́ -- дос |
  да оу -- за -- ди́ -- а |
  кэ льэс фа -- дзи́ -- а |
  фа -- дзе́р фо -- ли́ -- а |
  майс кэ ноң дэ -- вэ -- ри́ -- а.

}

stanzatworus = \lyricmode {
  \set stanza = "2."
  А -- мо -- стра́р _ | нос дэ́ -- вэз кар -- рэ́й -- ра
  пор га -- ңа́р _ | эң то́ -- да ма -- нэ́й -- ра
  а сэң пар _ | лудз э вэр -- да -- дэ́й -- ра
  кэ ту дар _ | нос по́ -- дэс сэң -- льэ́й -- ра;
  ка Дэ́ус а ти а
  оу -- тор -- га -- ри́ -- а,
  э а кэр -- ри́ -- а,
  пор ти дар э да -- ри́ -- а.

}

stanzathreerus = \lyricmode {
  \set stanza = "3."
  Ги -- а́р бэң _ | нос по́д -- о тэ́у си́ -- зо,
  майс ка рэң _ | пэ́ -- ра Па -- ра -- и́ -- зо,
  у Дэ́ус тэң | сэ́м -- прэ гой -- э ри́ -- зо,
  по́ -- ра кэң _ | эң эл крэ -- э́р ки́ -- зо;
  э пра -- дзе́р -- м -- и́ -- а,
  сэ тэ пра -- дзи́ -- а,
  кэ фос -- а ми́ -- а,
  алм -- эң тал ком -- па -- ньи́ -- а.

}


santa = \lyricmode {
Sa -- nta Ma -- rí -- a, | 
Stre -- la do dí -- a,
mós -- tra -- nos ví -- a  |	 	
pe -- ra Déus e nos guí -- a.
}

stanzaone = \lyricmode {
Ca ve -- er _ fa -- ze -- los e -- rra -- dos |
que per -- der _ fo -- ran per pe -- ca -- dos  |	
en -- ten -- der  de que mui _ cul -- pa -- dos |
son mais per _ ti son per -- dõ -- a -- dos  |	
da ou -- sa -- dí -- a |	
que lles fa -- zí -- a 	|
fa -- zer fo -- lí -- a |	
mais que non de -- ve -- rí -- a.
}
stanzatwo = \lyricmode {
A -- mos -- trar _ | nos de -- ves ca -- rrei -- ra 
    por gã -- ar _ | en to -- da ma -- nei -- ra 
    a sen par _ | luz e ver -- da -- dei -- ra 
    que tu dar _ | nos pó -- des sen -- llei -- ra 
    ca Déus a ti a 
    ou -- tor -- ga -- rí -- a 
    e a que -- rrí -- a 
    por ti dar e da -- rí -- a.
  }

stanzathree = \lyricmode {
  Guï -- ar ben _ | nos pó -- d' o téu si -- so 
  mais ca ren | per -- a Pa -- ra -- í -- so 
  u Déus ten | sem -- pre goi' e ri -- so   
  po -- ra quen _ | en el cre -- er qui -- so; 
  e pra -- zer-m-í -- a 
  se te pra -- zí -- a 
  que fo -- ss' a mí -- a 
  al -- m' en tal com -- pa -- nní -- a. 
}


% Complete original-language and Russian performer editions.
\book {
  \bookOutputName "csm100"
  \bookOutputSuffix "original"
  \header {
    title = \markup { \override #'((font-name . "ygoth") (font-size . 7)) \concat { "Santa Mar" \combine "i" \translate #'(0 . 1.1) \fontsize #-2 "´" "a, Strela do d" \combine "i" \translate #'(0 . 1.1) \fontsize #-2 "´" "a" } }
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Cantigas de Santa Maria - CSM 100" }
    composer = \markup \concat {
      \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio"
      \hspace #0.7
      \override #'((font-name . "EB Garamond") (font-size . 1)) "· s. XIII"
    }
    tagline = ##f
  }
  \score { << \new MensuralStaff { \new MensuralVoice = "c100oRef" { \refrainMusic } } \new Lyrics \lyricsto "c100oRef" { \santa } >> }
  \score { <<
    \new MensuralStaff { \new MensuralVoice = "c100oSt" { \stanzaMusic } }
    \new Lyrics \lyricsto "c100oSt" { \stanzaone }
    \new Lyrics \lyricsto "c100oSt" { \stanzatwo }
    \new Lyrics \lyricsto "c100oSt" { \stanzathree }
  >> }
}
\book {
  \bookOutputName "csm100"
  \bookOutputSuffix "rus"
  \header {
    title = \markup { \override #'((font-name . "ygoth") (font-size . 7)) \concat { "Santa Mar" \combine "i" \translate #'(0 . 1.1) \fontsize #-2 "´" "a, Strela do d" \combine "i" \translate #'(0 . 1.1) \fontsize #-2 "´" "a" } }
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Cantigas de Santa Maria - CSM 100" }
    composer = \markup \concat {
      \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio"
      \hspace #0.7
      \override #'((font-name . "EB Garamond") (font-size . 1)) "· XIII век"
    }
    tagline = ##f
  }
  \score { << \new MensuralStaff { \new MensuralVoice = "c100rRef" { \refrainMusic } } \new Lyrics \lyricsto "c100rRef" { \santarus } >> }
  \score { <<
    \new MensuralStaff { \new MensuralVoice = "c100rSt" { \stanzaMusic } }
    \new Lyrics \lyricsto "c100rSt" { \stanzaonerus }
    \new Lyrics \lyricsto "c100rSt" { \stanzatworus }
    \new Lyrics \lyricsto "c100rSt" { \stanzathreerus }
  >> }
}
