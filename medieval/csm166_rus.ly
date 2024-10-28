\version "2.24.0"

\paper {
 % #(set-paper-size "a4landscape")
  print-all-headers = ##t
  page-breaking = #ly:minimal-breaking
  outer-margin = 4.8 \cm
  left-margin = 3\cm
  right-margin = 3\cm
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

global = {
  \override NoteHead.style = #'vaticana.punctum
  \override Staff.StaffSymbol.color = #(x11-color 'red)
}

"|" = {\bar "'"}

% for some reason 2 and 4 are qual
superius = \relative c {
  \clef "vaticana-do2"
  \global
  f2 f f e d f1 g2 a1 a2 |
  a2 a c b c d1 c8 b a1 a2  \break
  a g f e d f1 g2 a1 a2 \break
  a g f e d e d c d1 d2  \break

  c' c c b g a1 b2 c1 c2 |
  c d  c b g a1 b2 g1 g2  \break
  c c c b g a1 b2 c1 c2 |
  c d  c b g a1 b2 g1 g2  \break
  a a f e d f1 g2 a1 a2 |
  a a c b c d c8 b a1 a2  \break
  a a f e d f1 g2 a1 a2 |
  a a f e d e1 d2 c d1 d2
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
Ко -- мо пó _ -- ден пэр сас куль -- пас | ос хó -- мес _ сэ -- эр конт _ -- рей -- тос, 
Ас -- си пó _ -- денн пэ -- ла Вир -- джен | де -- пойс сэ _ -- эр са _ -- нос фей -- тос.
}


stanzaonerus = \lyricmode {
онд а -- вe _ -- о а ун ó -- ме, | пор пе -- кá _ -- дос ке фе -- дзé -- ра,
ке фой тол _ -- лей -- то дос нэ́м -- брос | ду -- нна до _ -- ор ке оу -- вé -- ра,
э ду -- ро -- у ас -- си тсинк' а -- нос | ке мо -- вэ́р _ сэ нон по _ -- дé -- ра,
ас -- си а _ -- ви -- a ос нэ́м -- брос | то -- дос до _ ко -- рпо _ мал -- трэ́й -- тос.
}


stanzatworus = \lyricmode {
кон эс -- та _ энн -- фер -- ми -- да -- де | а -- тан гран _ -- де ке а -- ви -- a
про -- ме -- те -- у ке, се гуа -- рис -- сэ, | а Са _ -- лас лó -- го ир -- и -- а
э у -- на _ ли́ -- вра дэ тсэ -- ра | ка -- да -- но _ лло  -- фе -- ре _ -- ри -- а
э а -- тан _ тó -- стэ фой са -- но, | ке нон у _ -- ви у _ -- трос прей -- тос.
}


stanzathreerus = \lyricmode {
э фой -- сэ _ лó -- го а Са -- лас, | ке сол нонн тар -- дó -- у ни -- э́н -- тэ,
э ле -- вóу _ си -- го а ли́ -- вра | да тсэ -- ра _ дэ бо -- нна мэ -- нтэ;
э и -- á _ муй лé -- до, ко -- мо | кенн сэ сэн _ ни -- унн мал _ сэн -- тэ,
пэ -- ро та -- анн гранн тэ -- эмп  оу -- вé -- ра | ос пэ́с дан _ -- дар де  _ -- за -- фей -- тос.
}

stanzafourrus = \lyricmode {
да -- кес -- та _ Сан -- та Ма -- ри́ -- а | дé -- ронн гра́ _ -- тсас э ло́ -- о -- орес,
по -- рке ли́  _ -- вра ос до -- э́н -- тэс | дэ ма -- йс _ э дэ до -- о́ -- рес
э дэ -- майс _ эс -- тá ро -- га́н -- до | сэм -- прэ пор _ нóс пе -- ка _ -- до -- рес;
э по -- рэнн _ дэ -- вэ -- мос то -- дос |  сэм -- прэ сэ́ _ -- ер сэ _ -- ус со -- джей -- тос.
}


\score {
   <<
    \new MensuralStaff  
    { \new MensuralVoice = "superius" {\superius} 
  }

 \new Lyrics = "firstVerse" \lyricsto "superius" {
   \santarus
    <<
      { \stanzaonerus	}
\new Lyrics = "secondVerse"
      \with { alignBelowContext = "firstVerse" } {
  \set associatedVoice = "superius"
  \stanzatworus
}
\new Lyrics = "thirdVerse"
      \with { alignBelowContext = "secondVerse" } {
  \set associatedVoice = "superius"
  \stanzathreerus
}
\new Lyrics = "fourthVerse"
      \with { alignBelowContext = "thirdVerse" } {
  \set associatedVoice = "superius"
  \stanzafourrus
}

      >>
    }
    >>

 \layout {
    \context {
        \Score
        \omit BarNumber
    }
    \context {
      \MensuralStaff
  \override KeySignature.glyph-name-alist = #alteration-mensural-glyph-name-alist
  \override BarLine.transparent = ##f % Notice two pound signs
    }
  }


  \header {
    title = \markup { \override #'((font-name . "ygoth") (font-size . 6)) "Como poden per sas culpas os homes seer contreitos"}
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 5)) "Cantigas de Santa Maria"}
    composer = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso el Sabio"}
  }
  \midi {
    \tempo 4 = 200
  }
}
\header {
  tagline = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "SCP"}
  }
