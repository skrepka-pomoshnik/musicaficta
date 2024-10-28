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
     ;#:roman "Cardo"
     #:sans "Nimbus Sans, Nimbus Sans L"
     #:typewriter "DejaVu Sans Mono"
     #:factor (/ staff-height pt 13)
    ))
}

global = {
  \key a \minor
  \time 4/4
  \override NoteHead.style = #'vaticana.punctum
  \override Staff.StaffSymbol.color = #(x11-color 'red)
}

"|" = {\bar "'"}

%% todo: fix repeats, repeat styles, remove bar number, write superius, add annotations

superius = \relative c' {
  \clef "vaticana-do2"
  \global
  a4 g8 f e4 e8  f g4 a4 d,4 d \bar ","
  a'4 g8 f8 e4 d8  e f e d c d4 d \bar ","
\break
  g a b4. a8   c b a b g4 g \bar ","
  g a b4. a8  c b a g a4 g \bar ","
  \break
  b c d4. b8  c d b a b4 b \bar ","
  b b b4. a8  c b a b g4 g \bar ","
\break
  a4 g8 f e4 e8  f g4 a4 d,4 d \bar ","
  a'4 g8 f8 e4 d8  e f e d c d4 d \bar ","
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
  Са -- нта Ма -- ри -- я Стрэ -- ла до ди -- я
  Мо -- стра -- нос би -- я пэ -- ра деус э нос ги -- я
}


stanzaonerus = \lyricmode {
  Ка бе -- ер _ фа -- дзе -- лос э -- рра -- дос
  Ке пер -- дер _ фо -- ранн пэр пе -- ка -- дос
  Эн -- тен -- дер де ке муй _ куль -- па -- дос
  Сонн майс пер _ ти сонн пер -- до -- нна -- дос
  Да у -- за -- ди -- я
  ке лес фа -- дзи -- я
  фа -- дзер фо -- ли -- я
  майс ке нонн де -- бе -- ри -- я
}


stanzatworus = \lyricmode {
 А -- мос -- трар _ | нос де -- бес ка -- ррей -- ра
    пор га -- ннар _ | энн то -- да ма -- ней -- ра 
    а сен пар _ | лудз э бер -- да -- дей -- ра 
    ке ту дар _ | нос по -- дес сен -- ллей -- ра
    ка Деус а ти я 
    оу -- тор -- га -- рри -- я
    э а ке -- рри -- я
    пор ти дар е да -- ри -- я
}


stanzathreerus = \lyricmode {
    Ги -- ар бен _ | нос по -- до теу си -- зо 
    майс ка ренн _ | пе -- ра Па -- ра -- и -- зо
    у Деус тенн | сем -- пре гой э ри -- зо 
    по -- ра кенн _ | енн ел кре -- ер ки -- зо
    э пра -- дзе -- рми -- я 
    се те пра -- дзи -- а 
    ке фо -- осс а ми -- я
    ал -- менн тал ком -- пан -- нни -- я. 
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

\score {
   <<
    \new MensuralStaff  
    { \new MensuralVoice = "superius" {\superius} 
%    \pageBreak
%\new MensuralVoice = "superius2" {\superius}
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
      >>
    }

%\new Lyrics = "firstVerse" \lyricsto "superius2" {
%     \santa
%      <<
%        { \stanzaone	}
%	\new Lyrics = "secondVerse"
%        \with { alignBelowContext = "firstVerse" } {
%	  \set associatedVoice = "superius2"
%    \stanzatwo
%	}
%	\new Lyrics = "thirdVerse"
%        \with { alignBelowContext = "secondVerse" } {
%	  \set associatedVoice = "superius2"
%    \stanzathree
%	}
%      >>
%    }


%  \new MensuralStaff \with {
%    midiInstrument = "recorder"
%  } { \tenor }
%  \new MensuralStaff \with {
%    midiInstrument = "recorder"
%  } { \bassus }

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
    title = \markup { \override #'((font-name . "ygoth") (font-size . 8)) "Santa María, Strela do día"}
    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 5)) "Cantigas de Santa Maria"}
    composer = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "Alfonso el Sabio"}
%    arranger = "PS"
  }
  \midi {
    \tempo 4 = 111
  }
}
\header {
  tagline = \markup { \override #'((font-name . "ygoth") (font-size . 4)) "SCP"}
  }
