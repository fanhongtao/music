\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P38

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4
  \numericTimeSignature
  \tempo "M.M." 4 = 96
  
  R1 |
  R1 |
  c,4-1 c8 c c2 |
  <c f>4-1-4 q8 q q2\fermata |\bar "||"\break
  
  f4-4_.^严格的进行曲速度 c-1 d2-2 |
  f8-4[ g-5] f-4 [c-1] d2-2 |
  f4-4 e8-3 d-2 c4-1 f-4 |
  g8-5[ f-4] e-3[ d-2] r2 |\break
  
  f4-4_. c-1_. d2-2 |
  f8-4[ g-5] f-4[ c-1] d2-2 |
  f8-4[ e-3] d-2[ c-1] r2 |
  r4 c-1_. f2-4 |\bar "||"\break
  
  R1 |
  R1 |
  c4-1 c8 c c2 |
  <c f>4-1-4 q8 q q2\fermata |\bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 4/4
  \numericTimeSignature
  \dynamicUp
  
  f4_5\p^向女皇敬礼 f8_5 f_5 f2_5 |
  <f a>4_3_5\mf q8_3_5 q_3_5 q2_3_5 |
  q4_3_5\f q8 q q2 |
  q4_3_5\ff q8 q q2\fermata |\bar "||"\break
  
  \once \override DynamicText.X-offset = #-5.2
  <f a>4_3_5-.\mf^王室的进行 q-. <f bes>_2_5-. q-. |
  <f a>4_3_5-. q-. <f bes>_2_5-. q-. |
  <f a>4_3_5-. q-. q-. q-. |
  g4_4-. b_2-. c8_1[ bes_2] a_3[ g_4] |\break
  
  <f a>4_3_5 q <f bes>_2_5 q |
  <f a>4_3_5 q <f bes>_2_5 q |
  <f a>4_3_5 r bes8_2[ a_3] g_4[ f_5] |
  a4-3-. <g bes>_2_4-. <f a>2_3_5 |\bar "||"\break
  
  f4_5\p^女皇登上宝座 f8 f f2 |
  <f a>4_3_5\mf q8 q q2 |
  q4_3_5\f q8 q q2 |
  q4_3_5\ff q8 q q2\fermata |\bar"|."
}

\header {
  title = "仙   宫"
}
\markup { \vspace #1 }

\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
