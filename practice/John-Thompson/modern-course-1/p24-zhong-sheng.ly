\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P24

\include "../../../lib/brackets.ly"

bracket = \squareBracket #'(0.0 . -0.0)  #'-1.0
bracketDown = \squareBracketDown #'(0.0 . -9.0)  #'-1.0

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andante M.M. " 4=60-120
  
  r4\mf \stemUp \bracket c-5\startTextSpan b-4 a-3 |
  g4-2\stopTextSpan \stemDown \bracketDown f_2_\markup{ \lower #5.5 \halign #-2.5 { \rotate #-8 左手 } }\startTextSpan e_3 d_4 |
  c4_5\stopTextSpan \stemUp \bracket c'-5\startTextSpan b-4 a-3 |
  g4-2\stopTextSpan \stemDown \bracketDown f_2\startTextSpan e_3 d_4 |\break
  
  c4_5\stopTextSpan \stemUp c'-5 a-3 \stemDown f_2_左手 |
  d4_4 \stemUp b'-4 g-2 \stemDown e_3_左手 |
  c4_5 \stemUp c'-5 a-3 \stemDown f_2_左手 |
  d4_4 \stemUp b'-4 g-2 \stemDown e_3_左手 |\break
  
  c4_5 \stemUp \bracket c'-5\startTextSpan b-4 a-3 |
  g4-2\stopTextSpan \stemDown \bracketDown f_2_\markup{ \lower #5.5 \halign #-2.5 { \rotate #-8 左手 } }\startTextSpan e_3 d_4 |
  c4_5\stopTextSpan \stemNeutral s2. |
  s1 |\break
  
  R1 |
  \clef bass a1-3\pp |
  g1-2~ |
  g4 r r2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  c'4_5 r r2 |
  s1 |
  s1 |
  s1 |\break
  
  s1 |
  s1 |
  s1 |
  s1 |\break
  
  s1 |
  s1 |
  s4 \stemUp \bracket c-5^\markup{ \halign #-2.5 { \rotate #-8 右手 } }\startTextSpan b-4 a-3 |
  g4-2\stopTextSpan \stemDown \bracketDown f_2_\markup{ \lower #5.5 \halign #-2.5 { \rotate #-8 左手 } }\startTextSpan e_3 d_4\stopTextSpan \stemNeutral |\break
  
  c1_5 |
  f1_2 |
  <c e>1~_3_5 |
  q4 r r2 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "C 大调音阶 —— 下行"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "钟   声"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
    \override TextSpanner.style = #'solid-line
  }
  \midi { }
}
