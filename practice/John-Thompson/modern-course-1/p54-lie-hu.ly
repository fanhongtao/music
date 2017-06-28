\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P54

keyTime = {
  \key g \major
  \time 6/8
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  % \tempo "M.M."  4=50-108 
  \tempo \markup{
    \column {
      \box{ "  弹得高兴、热烈、有闯劲。  " }
      " "
      \line { " M.M. "\small \note-by-number #2 #0 #UP " = 50 - 108" }
      " "
    }
  }
  
  \partial 8 r8 |
  g4-1-. g8-1-. g4-1-. g8-1-. |
  g4.-1~ g4 r8 |
  <g-1 b^3>4-. <g-1 b^3>8-. <g-1 b^3>4-. <g-1 b^3>8-. |
  <g-1 b^3>4.~ q4 r8 |\break
  
  <g-1 d'^5>4-. <g-1 d'^5>8-. <g-1 d'^5>4-. <g-1 d'^5>8-. |
  <g-1 d'^5>4. <g-1 c^4>4. |
  b4-3-. b8-3-. a4-2-. a8-2-. |
  g4.-1~ g4 r8 |\break
  
  g4-1-. g8-1-. g4-1-. g8-1-. |
  g4.-1~ g4 r8 |
  <g-1 b^3>4-. q8-. q4-. q8-. |
  q4.~ q4 r8 |\break
  
  <g-1 d'^5>4-. q8-. q4-. q8-. |
  <g-1 d'^5>4. <g-1 c^4>4. |
  b4-3-. b8-3-. a4-2-. a8-2-. |
  g4.-1~ g4 r8 |\break
  
  g8-1 b-3 r g-1 b-3 r |
  g8-1 b-3 r r4 c8-4( |
  b4-3-.) b8-3-. a4-2-. a8-2-. |
  g4.-1~ g4 r8 |\break
  
  g8-1 b-3 r g-1 b-3 r |
  g8-1 b-3 r r4 c8-4( |
  b4-3-.) b8-3-. a4-2-. a8-2-. |
  g4.-1~ g4 \bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \dynamicUp
  
  \partial 8 d'8_2\f |
  R2. |
  r4 r8 r4 d8_2 |
  R2. |
  r4 r8 r4 d8_2 |\break
  
  b4_4-. b8_4-. b4_4-. b8_4-. |
  b4._4 e4._1-. |
  d4_2-. d8_2-. c4_3-. c8_3-. |
  b4._4~ b4 d8_2 |\break
  
  R2. |
  r4 r8 r4 d8_2 |
  R2. |
  r4 r8 r4 d8_2 |\break
  
  b4_4-. b8-. b4-. b8-. |
  b4._4 e4._1-. |
  d4_2-. d8-. c4_3-. c8-. |
  b4._4~ b4 d8_2 |\break
  
  r4 d8_2 r4 d8_2 |
  r4 r8 r4 e8_1( |
  d4_2-.) d8_2-. c4_3-. c8_3-. |
  b4._4~ b4 d8_2\pp |\break
  
  r4 d8_2 r4 d8_2 |
  r4 r8 r4 e8_1( |
  d4_2-.) d8_2-. c4_3-. c8_3-. |
  b4._4~ b4 \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "猎     狐"
    subtitle = "（打 猎 歌）"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
