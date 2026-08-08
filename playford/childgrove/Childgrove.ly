\version "2.24.3"
% automatically converted by musicxml2ly from Childgrove.mxl
\pointAndClickOff

\header {
    title = "Child Grove."
    subtitle = "Longways for as many as will."
    composer = "John Playford, Arr. Paul Fox"
    opus = "The English Dancing Master, 1651"
    poet = "AABB AABB AABB"
%    arranger = "PS"
    tagline = ##f
  }

#(set-global-staff-size 13)
\paper {
  #(set-paper-size "a4landscape")
  print-all-headers = ##f
  page-breaking = #ly:minimal-breaking
  left-margin = 2.2\cm
  right-margin = 2.2\cm
  top-margin = 0.8\cm
  bottom-margin = 0.8\cm
  system-system-spacing.basic-distance = #8
  oddFooterMarkup = \markup \fill-line { "SCP · 2026" }
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"            ; default
     #:brace "emmentaler"            ; default
     #:roman "EB Garamond"
     #:sans "Nimbus Sans, Nimbus Sans L"
     #:typewriter "DejaVu Sans Mono"
     #:factor (/ staff-height pt 15)
    ))
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        \omit BarNumber
        }
    \context { \Staff
        \override NoteHead.style = #'petrucci
        }
    }
PartPOneVoiceOne = \relative a' {
    \repeat volta 2 {
        \clef "treble" \time 2/2 \key f \major | % 1
        \stemUp a4 s2. | % 2
        \stemUp a4 \stemDown d4 \stemDown d4 \stemDown e4 | % 3
        \stemDown f2 \stemDown e4 \stemDown d4 | % 4
        \stemDown g4 \stemDown f4 \stemDown e4 \stemDown d4 | % 5
        \stemDown e4. \stemDown d8 \stemDown c8 [ \stemDown bes8 ]
        \stemUp a4 | % 6
        \stemUp a4 \stemDown d4 \stemDown d4 \stemDown e4 | % 7
        \stemDown f2 \stemDown e4 \stemDown a4 | % 8
        \stemDown g4. \stemDown f8 \stemDown e8 [ \stemDown f8 \stemDown
        e8 \stemDown d8 ] | % 9
        \stemDown d2. }
    s4 \break \repeat volta 2 {
        | \barNumberCheck #10
        \stemDown f8 [ \stemDown g8 ] s2. | % 11
        \stemDown a4 \stemDown f4 \stemDown f4 \stemDown a4 | % 12
        \stemDown g4 \stemDown e4 \stemDown e4 \stemDown g4 | % 13
        \stemDown f4 \stemDown d4 \stemDown d8 [ \stemDown e8 \stemDown
        f8 \stemDown d8 ] | % 14
        \stemDown e4 \stemUp a,2 \stemDown f'8 [ \stemDown g8 ] \break | % 15
        \stemDown a4 \stemDown f4 \stemDown f4 \stemDown a4 | % 16
        \stemDown g4. \stemDown f8 \stemDown e8 [ \stemDown f8 \stemDown
        g8 \stemDown e8 ] | % 17
        \stemDown f4 \stemDown e8 [ \stemDown d8 ] \stemDown e4
        \stemDown d8 [ \stemDown cis8 ] | % 18
        \stemDown d2. }
    }

PartPTwoVoiceOne =  \relative a' {
    \repeat volta 2 {
        \clef "treble" \time 2/2 \key f \major | % 1
        r4 s2. | % 2
        \stemUp a4 \stemUp a2 \stemUp a4 | % 3
        \stemDown d2. \stemDown bes4 | % 4
        \stemUp a2 \stemDown bes2 | % 5
        \stemUp a2. \stemUp a8 [ \stemUp g8 ] | % 6
        \stemUp a2. \stemUp a4 | % 7
        \stemDown d2 \stemDown e2 | % 8
        \stemDown c4. \stemDown bes8 \stemUp a2 | % 9
        \stemUp d,2. }
    s4 \break \repeat volta 2 {
        | \barNumberCheck #10
        r4 s2. | % 11
        \stemDown f'4 \stemDown a4 \stemDown c4 \stemDown a4 | % 12
        \stemDown e4 \stemDown g4 \stemDown c4 \stemDown e,4 | % 13
        \stemDown f4 \stemDown d4 \stemUp g,4 \stemDown d'4 | % 14
        \stemDown cis4 \stemUp a4 \stemUp a2 \break | % 15
        \stemDown f'4 \stemDown a4 \stemDown c4 \stemDown a4 | % 16
        \stemDown e4 \stemDown c4 \stemDown e4 \stemDown d8 [ \stemDown
        c8 ] | % 17
        \stemDown d4 \stemDown c4 \stemUp a2 | % 18
        \stemUp a2. }
    }

PartPThreeVoiceOne =  \relative d' {
    \repeat volta 2 {
        \clef "treble" \time 2/2 \key f \major | % 1
        r4 s2. | % 2
        \stemDown d2. \stemDown e4 | % 3
        \stemDown f2. \stemDown e4 | % 4
        \stemDown d2. \stemDown f4 | % 5
        \stemDown e2. \stemUp a,4 | % 6
        \stemDown d2. \stemDown e4 | % 7
        \stemDown f4 \stemDown g4 \stemDown a2 | % 8
        \stemDown g2 \stemDown e2 | % 9
        \stemDown d2. }
    s4 \break \repeat volta 2 {
        | \barNumberCheck #10
        r4 s2. | % 11
        \times 2/3  {
            \stemDown a'4 \stemDown bes4 \stemDown a4 }
        \stemDown f2 | % 12
        \times 2/3  {
            \stemDown g4 \stemDown a4 \stemDown g4 }
        \stemDown e2 | % 13
        \times 2/3  {
            \stemDown f4 \stemDown g4 \stemDown f4 }
        \stemDown d4 \stemDown f4 | % 14
        \stemDown e4 \stemUp a2. \break | % 15
        \times 2/3  {
            \stemDown a4 \stemDown bes4 \stemDown a4 }
        \stemDown f4 \stemDown a4 | % 16
        \stemDown g4 \stemDown c4 \stemDown g4 \stemDown e4 | % 17
        \stemDown c4 \stemDown d4 \stemDown e4 \stemDown e4 | % 18
        \stemDown f2. }
    }

PartPFourVoiceOne =  \relative a {
    \repeat volta 2 {
        \clef "bass" \time 2/2 \key f \major | % 1
        r4 s2. | % 2
        a1 ~ | % 3
        \stemUp a2 \stemUp bes4 \stemUp a4 | % 4
        g1 | % 5
        \stemUp a2 \stemUp g2 | % 6
        a1 ~ | % 7
        \stemUp a2 \stemUp a2 | % 8
        c1 | % 9
        \stemDown d,2. }
    s4 \break \repeat volta 2 {
        | \barNumberCheck #10
        r4 s2. | % 11
        \stemDown f2. \stemDown f4 | % 12
        \stemDown e2. \stemDown e4 | % 13
        \stemDown f2 \stemDown e4 \stemDown d4 | % 14
        \stemDown e2 \stemDown e4 \stemDown e4 \break | % 15
        f1 | % 16
        \stemUp g2 \stemUp e2 | % 17
        \stemUp f2 \stemUp e2 | % 18
        \stemDown d2. }
    }

% The score definition
\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Soprano"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Alto"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Tenor"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Baſſ"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPFourVoiceOne" {  \voiceOne \PartPFourVoiceOne }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }
