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
  \override NoteHead.style = #'vaticana.punctum
  \override NoteHead.font-size = #2
  \override Staff.StaffSymbol.color = #(x11-color 'red)
}

"|" = {\bar "'"}

% for some reason 2 and 4 are qual
refrainMusic = \relative c {
  \clef "vaticana-do2"
  \global
  f2 f f e d f1 g2 a1 a2 |
  a2 a c b c d1 c8 b a1 a2 \break
  a2 g f e d f1 g2 a1 a2
  a2 g f e d e d c d1 d2
}

stanzaMusic = \relative c {
  \clef "vaticana-do2"
  \global
  c'2 c c b g a1 b2 c1 c2 |
  c2 d c b g a1 b2 g1 g2 \break
  c2 c c b g a1 b2 c1 c2 |
  c2 d c b g a1 b2 g1 g2 \break
  a2 a f e d f1 g2 a1 a2 |
  a2 a c b c d c8 b a1 a2 \break
  a2 a f e d f1 g2 a1 a2 |
  a2 a f e d e1 d2 c d1 d2
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
  Ко́ -- мо по́ _ -- дэң пэр сас ку́л -- пас | ос о́ -- мэс _ сэ -- э́р конт _ -- рэ́й -- тос,
  а -- си́ по́ _ -- дэң пэ -- ла Ви́р -- джэң | дэ -- по́йс сэ _ -- э́р са́ _ -- ңос фэ́й -- тос.

}

stanzaonerus = \lyricmode {
  \set stanza = "1."
  Онд а -- вэ́ _ -- ңо а уң о́ -- мэ | пор пэ -- ка́ _ -- дос кэ фэ -- дзэ́ -- ра,
  кэ фой толь _ -- э́й -- то дос нэ́м -- брос | ду́ -- ңа до _ -- о́р кэ оу -- вэ́ -- ра,
  э ду -- ро́у а -- си́ циңк а́ _ -- нос | кэ мо -- вэ́р _ сэ ноң по _ -- дэ́ -- ра,
  а -- си́ а _ -- ви́ -- а ос нэ́м -- брос | то́ -- дос до _ ко́р -- по _ мал -- трэ́й -- тос.

}

stanzatworus = \lyricmode {
  \set stanza = "2."
  Коң э́ -- ста _ эң -- фэр -- ми -- да́ -- дэ | а -- та́ң граң _ -- дэ кэ а -- ви́ -- а,
  про -- мэ -- тэ́у кэ, сэ гу -- а -- ри́ -- сэ | а Са́ _ -- лас ло́ -- го и -- ри́ -- а,
  э у́ -- ңа _ ли́ -- вра дэ цэ́ -- ра | кад а́ -- но ль о -- фэ -- рэ _ -- ри́ -- а;
  э а -- та́ң _ то́ -- стэ фой са́ -- ңо | кэ ноң оув _ -- и о́у -- трос прэ́й _ -- тос.

}

stanzathreerus = \lyricmode {
  \set stanza = "3."
  Э фой -- сэ _ ло́ -- го а Са́ -- лас | кэ со́л ноң тар -- до́у ни -- э́н _ -- тэ,
  э лэ -- во́у _ си́ -- го а ли́ -- вра | да цэ́ -- ра _ дэ бо́ -- ңа мэ́н -- тэ;
  э и́ -- а _ муй лэ́ -- до ко́ -- мо | кэң сэ сэң _ ни -- у́ң мал _ сэ́н -- тэ,
  пэ́ -- ро таң _ граң тэмп оу -- вэ́ -- ра | ос пэс д ан -- да́р дэ _ -- за -- фэ́й -- тос.

}

stanzafourrus = \lyricmode {
  \set stanza = "4."
  Да -- кэ́ст -- а _ Са́н -- та Ма -- ри́ -- а | дэ́ -- роң гра́ _ -- цас э ло -- о́ -- рэс,
  по́р -- кэ ли́ _ -- вра ос до -- э́н -- тэс | дэ ма́ -- эс _ э дэ до -- о́ -- рэс,
  э дэ -- ма́йс _ э -- ста́ ро -- га́н -- до | сэ́м -- прэ пор _ нос пэ -- ка _ -- до́ -- рэс;
  э по -- рэ́ң _ дэ -- вэ́ -- мос то́ -- дос | сэ́м -- прэ сэ _ -- э́р сэ́ -- ус со -- джэ́й -- тос.

}


refrainOriginal = \lyricmode {
  Co -- mo pó _ -- den per sas cul -- pas | os hó -- mes _ se -- er con _ -- trei -- tos,
  as -- sí pó _ -- den pe -- la Vir -- gen | de -- pois se _ -- er sã _ -- os fei -- tos.

}
stanzaOneOriginal = \lyricmode {
  \set stanza = "1."
  Ond a -- vẽ _ -- o a un hó -- me | por pe -- ca _ -- dos que fe -- zé -- ra,
  que foi to _ -- llei -- to dos nem -- bros | dũ -- a do _ -- or que hou -- vé -- ra,
  e du -- rou as -- sí cinc a _ -- nos | que mo -- ver _ se non po _ -- dé -- ra,
  as -- sí ha _ -- ví -- a os nem -- bros | to -- dos do _ cór -- po _ mal -- trei -- tos.

}
stanzaTwoOriginal = \lyricmode {
  \set stanza = "2."
  Con es -- ta _ en -- fer -- mi -- da -- de | a -- tán gran _ -- de que ha -- ví -- a,
  pro -- me -- teu que, se gua -- ris _ -- se | a Sa _ -- las ló -- go i -- rí -- a,
  e ũ -- a _ li -- vra de ce -- ra | cad a -- no ll o -- fe -- re _ -- rí -- a;
  e a -- tán _ tós -- te foi _ são | que non houv _ i ou _ -- tros prei -- tos.

}
stanzaThreeOriginal = \lyricmode {
  \set stanza = "3."
  E foi -- se _ ló -- go a Sa -- las | que sól non tar -- dou nï -- en _ -- te,
  e le -- vou _ si -- go a li -- vra | da ce -- ra _ de bõ -- a men -- te;
  e í -- a _ mui lé -- do co -- mo | quen se sen _ nï -- ún mal _ sen -- te,
  pe -- ro tan _ gran temp hou -- vé -- ra | os pés d an -- dar de _ -- sa -- fei -- tos.

}
stanzaFourOriginal = \lyricmode {
  \set stanza = "4."
  Da -- quest a _ San -- ta Ma -- rí -- a | dé -- ron gra _ -- ças e lo -- o -- res,
  por -- que li _ -- vra os do -- en -- tes | de ma -- es _ e de do -- o -- res,
  e de -- mais _ es -- tá ro -- gan -- do | sem -- pre por _ nós pe -- ca _ -- do -- res;
  e po -- rên _ de -- ve -- mos to -- dos | sem -- pre se _ -- er sé -- us so -- gei -- tos.

}

\book {
  \bookOutputName "csm166"
  \bookOutputSuffix "original"
  \header {
    title = \markup {
      \override #'((font-name . "ygoth") (font-size . 7))
      \concat { "Como p" \combine "o" \translate #'(0.25 . 1.1) \fontsize #-2 "´" "den per sas culpas" }
    }
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Cantigas de Santa Maria - CSM 166" }
    composer = \markup \concat {
      \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio"
      \hspace #0.7
      \override #'((font-name . "EB Garamond") (font-size . 1)) "· s. XIII"
    }
    tagline = ##f
  }
  \score { << \new MensuralStaff { \new MensuralVoice = "c166oRef" { \refrainMusic } } \new Lyrics \lyricsto "c166oRef" { \refrainOriginal } >> }
  \score { <<
    \new MensuralStaff { \new MensuralVoice = "c166oSt" { \stanzaMusic } }
    \new Lyrics \lyricsto "c166oSt" { \stanzaOneOriginal }
    \new Lyrics \lyricsto "c166oSt" { \stanzaTwoOriginal }
    \new Lyrics \lyricsto "c166oSt" { \stanzaThreeOriginal }
    \new Lyrics \lyricsto "c166oSt" { \stanzaFourOriginal }
  >> }
}
\book {
  \bookOutputName "csm166"
  \bookOutputSuffix "rus"
  \header {
    title = \markup {
      \override #'((font-name . "ygoth") (font-size . 7))
      \concat { "Como p" \combine "o" \translate #'(0.25 . 1.1) \fontsize #-2 "´" "den per sas culpas" }
    }
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 3)) "Cantigas de Santa Maria - CSM 166" }
    composer = \markup \concat {
      \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso X el Sabio"
      \hspace #0.7
      \override #'((font-name . "EB Garamond") (font-size . 1)) "· XIII век"
    }
    tagline = ##f
  }
  \score { << \new MensuralStaff { \new MensuralVoice = "c166rRef" { \refrainMusic } } \new Lyrics \lyricsto "c166rRef" { \santarus } >> }
  \score { <<
    \new MensuralStaff { \new MensuralVoice = "c166rSt" { \stanzaMusic } }
    \new Lyrics \lyricsto "c166rSt" { \stanzaonerus }
    \new Lyrics \lyricsto "c166rSt" { \stanzatworus }
    \new Lyrics \lyricsto "c166rSt" { \stanzathreerus }
    \new Lyrics \lyricsto "c166rSt" { \stanzafourrus }
  >> }
}
