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
    \override KeySignature.alteration-glyph-name-alist = #alteration-mensural-glyph-name-alist
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
  }
}

%% --- SECTION 1 ---
%\score {
%  <<
%    \new MensuralStaff {
%      \new MensuralVoice = "melA" {
%        \global
%        \clef "vaticana-do2"
%        \cadenzaOn
%        \key c \major
%        f4 g a g c'8( a) a4 g f8( g) \bar "|"
%        a4 g a \parenthesize c'4 c'8( bes) a4 g \bar "|"
%        f4 g a g c'8( bes) a8( g) a4 \bar "||"
%        \cadenzaOff
%      }
%    }
%    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melA" {
%      \set stanza = #"8(2.)" ut man -- de -- tur re -- qui -- rit ra -- ti -- o
%      Er -- go man -- da ne sit di -- la -- ti -- o
%      nam do -- ce -- bit quod ce -- lat vi -- si -- o.
%    }
%    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melA" {
%      \set stanza = #"(2.)" Чем у -- знать е -- го тол -- ко -- ва -- ни -- е.
%      Пусть по тво -- е -- му при -- ка -- за -- ни -- ю
%      раз -- га -- да -- ет про -- рок ви -- де -- ни -- е.
%    }
%  >>
%  \header {
%    title = \markup { \override #'((font-name . "ygoth") (font-size . 6)) "Ludus Danielis"}
%    subtitle = \markup { \override #'((font-name . "ygoth") (font-size . 5)) "Sectio Prima"}
%  }
%  \layout { }
%\midi {
%    \tempo 4 = 120 % задай нужный темп
%  }
%
%}
%
%% --- SECTION 2: VOS DANIELEM ---
%\markup { \vspace #1 }
%\markup {
%  \column {
%    \line { \bold \with-color #darkred "Tunc dicat Rex Principibus suis:" }
%    \line { \italic \with-color #darkblue "Затем Царь говорит Принцам:" \hspace #6 \bold \with-color #darkred "VOS DANIELEM" }
%  }
%}
%\score {
%  <<
%    \new MensuralStaff {
%      \new MensuralVoice = "melB" {
%        \global
%        \clef "vaticana-do2"
%        \cadenzaOn
%        f4 g a g c'8( a) a4 g f8( g) \bar "|"
%        a4 g a c'8( bes) a8( g) f8( g) \bar "|"
%        f4( g a g c'8 bes a8 g) a4 \bar "||"
%        \cadenzaOff
%      }
%    }
%    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melB" {
%      Vos Da -- ni -- e -- lem quae -- ri -- te
%      et in -- ven -- tum ad -- du -- ci -- te.
%    }
%    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melB" {
%      Цар -- ским при -- ка -- зом ве -- ле -- но,
%      что -- бы при -- был не -- мед -- лен -- но!
%    }
%  >>
%  \layout { }
%\midi {
%    \tempo 4 = 120 % задай нужный темп
%  }
%}

% --- SECTION 3: VIR PROPHETA ---
\markup { \vspace #1 }
\markup {
  \column {
    \line { \bold \with-color #darkred "Tunc Principes invento Daniele dicant ei:" }
    \line { \italic \with-color #darkblue "Принцы, найдя Даниила, говорят ему:" \hspace #6 \bold \with-color #darkred "VIR PROPHETA" }
  }
}
\score {
  <<
    \new MensuralStaff {
      \new MensuralVoice = "melC" {
        \global
        \clef "vaticana-do2"
        \transpose c f {
          \cadenzaOn
          c d8( e) f4 \tuplet 3/2{e8( d c4)} c16( d e f e c) d8( c) \bar "|"\break
          c4 e g2\fermata f16( e d c) c( d e c) d8( c)  \bar "||" \break
          g4 f16( e d c) d (c bes,) a,4 bes,8( a,) g,( a,)\fermata \bar "|"
          f,( a,) c4 c16 (d e c) d8( c)\fermata \bar "||"
          \cadenzaOff
        }
      }
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melC" {
      \set stanza = #"1." Vir pro -- phe -- ta De -- i
      Da -- ni -- el vien al Roi 
      \set stanza = #"(1.)" Ve -- ni de -- si -- de -- rat
      par -- ler a toi.  
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melC" {
      \set stanza = #"1." Бо -- жий муж, те -- бя о,
      Да -- ни -- ил, царь зо -- вет. 
      \set stanza = #"(1.)" го -- во -- рить же -- ла -- ет,
      от -- ве -- та ждет.  
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melC" {
      \set stanza = #"2." Pa -- vet et tur -- ba -- tur
      Da -- ni -- el vien al Roi 
      \set stanza = #"(2.)" vel -- let quod nos la -- tet
      sa -- voir par toi.  
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melC" {
      \set stanza = #"2." В_стра -- хе и смя -- тень -- и
      Да -- ни -- ил, царь зо -- вет. 
      \set stanza = #"(2.)" рас -- тол -- куй, что скры -- то,
      что днесь гря -- дет. 
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melC" {
      \set stanza = #"3." Te di -- ta -- bit do -- nis
       Da -- ni -- el vien al Roi 
      \set stanza = #"(3.)" Si scrip -- ta po -- te -- rit
      sa -- voir par toi.  
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melC" {
      \set stanza = #"3." Царь те -- бя о -- да -- рит,
      Да -- ни -- ил, царь зо -- вет. 
      \set stanza = #"(3.)" Ес -- ли раз -- га -- да -- ешь,
      что днесь гря -- дет. 
    }
  >>
  \layout { }
\midi {
    \tempo 4 = 70 % задай нужный темп
  }
}

% --- SECTION 4: MULTUM MIROR ---
\markup { \vspace #1 }
\markup {
  \column {
    \line { \bold \with-color #darkred "Et Daniel eis:" \hspace #24 \bold \with-color #darkred "MULTUM MIROR" }
    \line { \italic \with-color #darkblue "И Даниил отвечает им:" }
  }
}
\score {
  <<
    \new MensuralStaff {
      \new MensuralVoice = "melD" {
        \global
        \clef "vaticana-do2"
        \transpose c f {
          \cadenzaOn
          \override Stem.transparent = ##t
          c4 d8( e) f e d c d (c ) bes, (a, g, a,) bes, g, \bar "|" \break
          g, (a,) c c (d) e f e d c 
          % --- ВОЛЬТА 1 ---
          \set Score.repeatCommands = #'((volta "1."))
          d c \bar ":|."
          
          % --- ВОЛЬТА 2 ---
          \set Score.repeatCommands = #'((volta #f) (volta "2."))
          bes, (a, g,) a, (g,)\fermata \bar "||"
          \set Score.repeatCommands = #'((volta #f))
          % ----------------
          \revert Stem.transparent
          \cadenzaOff
        }
      }
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melD" {
      \set stanza = #"1." Mul -- tum mi -- ror cu -- jus con -- si -- li -- o
      \set stanza = #"(1.)" me re -- qui -- rat re -- ga -- lis jus -- si -- o
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melD" {
      \set stanza = #"1." Бо -- же, по чье -- му на -- у -- ще -- ни -- ю
      \set stanza = #"(1.)" Царь при -- звал ме -- ня по -- ве -- ле -- ни -- ем?
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melD" {
      \set stanza = #"2." I -- bo ta -- men et e -- rit cog -- ni -- tum
      \set stanza = #"(2.)" per me gra -- tis quod est abs -- con -- _ _ di -- tum.
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melD" {
      \set stanza = #"2." Да свер -- шит -- ся! По -- йду за Ва -- ми я.
      \set stanza = #"(2.)" Не ос -- та -- вит Бог, вра -- зу -- мит _ _ ме -- ня.
    }
  >>
  \layout { }
\midi {
    \tempo 4 = 120 % задай нужный темп
  }
}
\pageBreak
% --- SECTION 5: HIC VERUS DEI FAMULIS ---
\markup { \vspace #1 }
\markup {
  \column {
    \line { \bold \with-color #darkred "Conductus Danielis venientis ad Regem:" }
    \line { \italic \with-color #darkblue "Кондукт Даниила, идущего к царю:" \hspace #8 \bold \with-color #darkred "HIC VERUS DEI FAMULIS" }
  }
}
\score {
  <<
    \new MensuralStaff {
      \new MensuralVoice = "melE" {
        \global
        \clef "vaticana-do2"
        \time 4/4
        \transpose c f{
        g4 g8( e) f4 d8( c) f4 f8( e) f4 g | \break
        g g8( e) f4 d8( c) d4 bes,8( a,) bes,4 g, | \break
        g,(a,8) c( c) c (d) e4 c g f8 (e) g \fermata \bar "|."
        } 
      }
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melE" {
      \set stanza = #"1." Hic ve -- rus De -- i fa -- mu -- lis
      est no -- ta Re -- gis cu -- ri -- ae,
      ces -- tui man -- da li Rois par nos.
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melE" {
      \set stanza = #"1." Вот муж от Бо -- га ис -- тин -- ный,
      до -- стиг и слу -- ха цар -- ско -- го.
      И -- \set ignoreMelismata = ##t ме -- нем \unset ignoreMelismata цар -- ским с_на -- ми про -- рок.
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melE" {
      quem lau -- dat om -- nis po -- pu -- lus
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melE" {
      на -- ро -- дам про -- слав -- ля -- е -- мый!
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melE" {
      cu -- jus fa -- ma pru -- den -- ti -- ae
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melE" {
      Дух е -- го про -- ри -- ца -- тель -- ства
    }
  >>
  \layout { }
\midi {
    \tempo 4 = 120 % задай нужный темп
  }
}

% --- SECTION 6: DANIEL (PAUPER ET EXULANS) ---
\markup { \vspace #1 }
\markup {
  \column {
    \line { \bold \with-color #darkred "Daniel:" }
    \line { \italic \with-color #darkblue "Даниил:" }
  }
}
\score {
  <<
    \new MensuralStaff {
      \new MensuralVoice = "melF" {
        \global
        \clef "vaticana-do2"
        \cadenzaOn
        \transpose c f {
        g4 g8 (e) f (e) d (c) d (bes, c a,) g,4 \bar "|"
        g,8 (a,) c4 c8 d e4 f8( e d c) d\fermata (c\fermata) \bar "||"
        }
        \cadenzaOff
      }
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melF" {
      Pau -- per et e -- xu -- lans en -- vois al Roi -- par vos.
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melF" {
      Ми -- щим изг -- нан -- ни -- ком и -- ду в Царс -- кий чер -- тог.
    }
  >>
  \layout {
ragged-right = ##f
    ragged-last = ##f
  }
\midi {
    \tempo 4 = 120 % задай нужный темп
  }
}

% --- SECTION 7: PRINCIPES (IN INVENTUTIS) ---
% (из image_0.png mid)
\markup { \vspace #1 }
\markup {
  \column {
    \line { \bold \with-color #darkred "Principes:" }
    \line { \italic \with-color #darkblue "Принцы:" \hspace #6 \bold \with-color #darkred "IN INVENTUTIS" }
  }
}
\score {
  <<
    \new MensuralStaff {
      \new MensuralVoice = "melG" {
        \global
        \clef "vaticana-do2"
        \transpose c f {
          \cadenzaOn
        g g8( e) f4 d8( c) f4 f8( e) f4 g | \break
          g g8( e) f( e) d ( c) d4 bes,8( a,8) \tuplet 3/2 {c (bes, a,)} g, | \break
        g,(a,8) c( c) c (d) e4 f8 (e d c) f4 f g \fermata \bar "|."
          \cadenzaOff
        }
      }
    }
    % Verse 1
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melG" {
      \set stanza = #"1." In in -- ven -- tu -- tis glo -- ri -- a
      vir -- tu -- te vi -- ta mo -- ri -- bus.
      ces -- tui man -- da li Rois par nos.
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melG" {
      \set stanza = #"1." Сла -- во -- ю чис -- той ю -- нос -- ти
      пре -- вы -- ше всех из -- вес -- тен он.
      И -- \set ignoreMelismata = ##t ме -- нем \unset ignoreMelismata цар -- ским с_на -- ми про -- рок.
    }

    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melG" {
      \set stanza = #"2."
      ple -- nus ce -- les -- ti gra -- ti -- a
    }

\new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melG" {
      \set stanza = #"2."
      тай -- ной не -- бес -- ной ра -- дос -- ти
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melG" {
      \set stanza = #"3."
      sa -- tis ex -- cel -- lit om -- ni -- bus
    }
\new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melG" {
      \set stanza = #"3."
      кро -- тос -- тью, бла -- го -- чес -- ти -- ем
    }

  >>
  \layout { }
\midi {
    \tempo 4 = 120 % задай нужный темп
  }
}

\markup { \vspace #1 }
\markup {
  \column {
    \line { \bold \with-color #darkred "Daniel:" }
    \line { \italic \with-color #darkblue "Даниил:" }
  }
}
\score {
  <<
    \new MensuralStaff {
      \new MensuralVoice = "melF" {
        \global
        \clef "vaticana-do2"
        \cadenzaOn
        \transpose c f {
        g4 g8 (e) f (e) d (c) d (bes, c a,) g,4 \bar "|"
        g,8 (a,) c4 c8 d e4 f8( e d c) d\fermata (c\fermata) \bar "||"
        }
        \cadenzaOff
      }
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melF" {
      Pau -- per et e -- xu -- lans en -- vois al Roi -- par vos.
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melF" {
      Ми -- щим изг -- нан -- ни -- ком и -- ду в Царс -- кий чер -- тог.
    }
  >>
  \layout {
ragged-right = ##f
    ragged-last = ##f
  }
\midi {
    \tempo 4 = 120 % задай нужный темп
  }
}





% --- СЕКЦИЯ: PRINCIPES (MIE EST CUJUS) ---
\markup { \vspace #1 }
\markup {
  \column {
    \line { \bold \with-color #darkred "Principes:" }
    \line { \italic \with-color #darkblue "Принцы:" \hspace #6 \bold \with-color #darkred "MIE EST CUJUS" }
  }
}
\score {
  <<
    \new MensuralStaff {
      \new MensuralVoice = "melPrincipes" {
        \global
        \clef "vaticana-do2"
        \cadenzaOn
        \transpose c f {
        g g8( e) f4 d8( c) f4 f8( e) f4 g | \break
          g g8( e) f e d ( c) d4 bes,8( a,8) \tuplet 3/2 {c (bes, a,)} g, | \break
        g,(a,8) c( c) c (d) e4 f8 (e d c) f4 f g \fermata \bar "|."
        \cadenzaOff
        }
      }
    }
    % Куплет 1
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melPrincipes" {
      \set stanza = #"3." Mie est cu -- jus au -- xi -- li -- o
      mo -- ta sunt Re -- gis vis -- ce -- ra _
      Ces -- tui man -- da li Rois par nos
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melPrincipes" {
      \set stanza = #"3." Бо -- жьим бла -- го -- сло -- ве -- ни -- ем
      сму -- ту в сердц -- цах по -- се -- я -- ло
      И -- \set ignoreMelismata = ##t ме -- нем \unset ignoreMelismata цар -- ским с_на -- ми про -- рок.
    }
    % Куплет 2
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melPrincipes" {
      ab -- sol -- ve -- tur il -- la vi -- si -- o
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melPrincipes" {
      впро -- зрит, что скры -- то ви -- де -- ньем
    }
    % Куплет 3
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melPrincipes" {
      et qua scri -- ben -- te dex -- te -- ra
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melPrincipes" {
      с_что страш -- ным ма -- но -- ве -- ни -- ем
    }
  >>
  \layout { }
  \midi { \tempo 4 = 120 }
}


\markup { \vspace #1 }
\markup {
  \column {
    \line { \bold \with-color #darkred "Daniel:" }
    \line { \italic \with-color #darkblue "Даниил:" }
  }
}
\score {
  <<
    \new MensuralStaff {
      \new MensuralVoice = "melF" {
        \global
        \clef "vaticana-do2"
        \cadenzaOn
        \transpose c f {
        g4 g8 (e) f (e) d (c) d (bes, c a,) g,4 \bar "|"
        g,8 (a,) c4 c8 d e4 f8( e d c) d\fermata (c\fermata) \bar "||"
        }
        \cadenzaOff
      }
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melF" {
      Pau -- per et e -- xu -- lans en -- vois al Roi -- par vos.
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melF" {
      Ми -- щим изг -- нан -- ни -- ком и -- ду в Царс -- кий чер -- тог.
    }
  >>
  \layout {
ragged-right = ##f
    ragged-last = ##f
  }
\midi {
    \tempo 4 = 120 % задай нужный темп
  }
}

% --- SECTION 11: DANIEL TO THE KING (REX IN AETERNUM) ---
% Simple fragment.
\markup { \vspace #1 }
\markup {
  \column {
    \line { \bold \with-color #darkred "Veniens Daniel ante Regem dicat ei:" }
    \line { \italic \with-color #darkblue "Представ перед Царем, Даниил говорит ему:" \hspace #6 \bold \with-color #darkred "REX IN AETERNUM" }
  }
}
\score {
  <<
    \new MensuralStaff {
      \new MensuralVoice = "melK" {
        \global
        \clef "vaticana-do2"
        \cadenzaOn
        \key c \major
        a\fermata g g8 (a) g4 f8 (g) g4\fermata g\fermata \bar "||"
        \cadenzaOff
        
      }
    }
    \new Lyrics \with { \override LyricText.color = #darkred } \lyricsto "melK" {
      Rex in ae -- ter -- nam vi -- ve!
    }
    \new Lyrics \with { \override LyricText.color = #darkblue } \lyricsto "melK" {
      Царь, да жи -- вешь ты ве -- чно!
    }
  >>
  \layout { }
}

%\markup { \vspace #1 }
%\markup {
%  \column {
%    \line { \bold \with-color #darkred "Et Rex Danieli:" }
%    \line { \italic \with-color #darkblue "И Царь отвечает Даниилу:" }
%  }
%}
