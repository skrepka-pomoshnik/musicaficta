\version "2.24.0"

#(ly:set-option 'point-and-click #f)

\header {
tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  print-all-headers = ##t
  page-breaking = #ly:minimal-breaking
  outer-margin = 2\cm
  left-margin = 2\cm
  right-margin = 2\cm
  %ragged-last = ##t
  
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Gothic Rus"
     #:sans "Gothic Rus"
     #:typewriter "DejaVu Sans Mono"
     #:factor (/ staff-height pt 12)
    ))

  oddHeaderMarkup = \markup {
    \with-dimensions-from \null
    \with-color #(rgb-color 0.97 0.93 0.80) 
    \filled-box #'(-200 . 400) #'(-400 . 400) #0
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

global = {
  \override NoteHead.style = #'vaticana.punctum
  \override Staff.StaffSymbol.color = #(x11-color 'red)
}

\layout {
  \context {
    \Score
    \omit BarNumber
\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 8) % сжимаем
    \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 8)
  }
  \context {
    \MensuralStaff
    \override KeySignature.glyph-name-alist = #alteration-mensural-glyph-name-alist
    \override BarLine.transparent = ##f 
    \remove "Time_signature_engraver"
  }
  \context {
    \Lyrics
\override LyricText.font-name = #"GothicRus"
    \override LyricSpace.minimum-distance = #0.5
\override LyricText.font-size = #3
  }
\context {
    \MensuralVoice
    \consists "Slur_engraver"          % Возвращаем обработку обычных лиг ( )
    \consists "Phrasing_slur_engraver" % Возвращаем обработку фразировочных лиг \( \)
\override PhrasingSlur.color = #(rgb-color 0.6 0.6 0.6)
    
    % Делаем их тоньше (по умолчанию они довольно жирные)
    \override PhrasingSlur.thickness = #1.0
  }
}

% --- СЕКЦИЯ: ECCE SUNT (Набор по рукописи image_7.png) ---

\markup { \vspace #1 }
\markup {
  \column {
    \line { \bold \with-color #darkred "Tunc Princeps dicant:" }
    \line { \italic \with-color #darkblue "Затем Принцы говорят:" \hspace #6 \bold \with-color #darkred "ECCE SUNT" }
  }
}
\score {
  <<
    \new MensuralStaff {
      \new MensuralVoice = "melEcce" {
        % Применяем глобальные настройки манускрипта (красный стан, головки Vatican)
        \global
%\clef "mensural-g"
        \omit TimeSignature % Убираем тактовый размер
        \cadenzaOn % Режим свободного ритма
        \relative c'' {
\phrasingSlurDashed
          g f8 (g) g4 g a8 (b) \( a8 ( g a e \) \( f g \) g \( a b a \) \(g a e\)) f16 (e d) \( d8 (a' \) \( a g \) \( g f \) \( g a g f \)) e4\fermata e\fermata
                  }
        \cadenzaOff
      }
    }
    % Латинские тексты (Syallable grouping follows hand-drawn notes groups)
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melEcce" {
      % Group 1 (d4 c4 c8 c8): Ec-ce sunt
      Ec -- ce sunt
      % Group 2 (d4 e4): an-te
      an -- te
      % Group 3 (d4d4 c4 b8c8d4): fa-ci-em ( 'em' covers small melisma )
      fa -- ci -- em
      % Group 4 (tu- d4 + melisma extends over e,f,g,g,f,e,d + am. d4d4)
      % We use __ extender for continues melisma and period at end of "am.".
      tu -- am. __
      % Text on final d4d4 is 'am.' Align periods to end of am.
      am.
    }
    % Русские тексты (Syllable splits follow hand-drawn notes groups)
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melEcce" {
      \set ignoreMelismata = ##t
      Царь, те _ -- бе
      \set ignoreMelismata = ##f
      мы со -- су -- ды
      \set ignoreMelismata = ##f
      при -- но -- сим.
    }
  >>
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
  }
\midi {
    \tempo 4 = 120 % задай нужный темп
  }
}
