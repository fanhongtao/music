\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P68

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  \tempo "M.M. " 4=120
  
  g2-1^右手\mf \once \stemDown g_1_左手 |
  g2-1^右手 \once \stemDown g_1_左手 |
  g4-1^右手 \once \stemDown g_1_左手 g-1 \once \stemDown g_1_左手 |
  g4-1 \once \stemDown g4_左手 g-1 \once \stemDown g4_左手 |\break
  
  g8-1[\p a-2 g-1 a-2] g-1[ a-2 g-1 a-2] |
  g8-1[ a-2 g a] g[ a g a] |
  g8-1[ a-2 b-3 c-4] d4-5 d |
  c2-4\> g4-1\! r |\break
  
  g8-1[\p a-2 g-1 a-2] g[ a g a] |
  g8[ a g a] g[ a g a] |
  g8-1[\< a-2 b-3 c-4\!] d4-5 d |
  c2-4 r |\break
  
  \override DynamicText.X-offset = #-2.5
  <c-4 a^2>2\f_\markup { " 鸣汽笛" } q4. q8 |
  q4 r r2 |
  <c-4 a^2>2\f_\markup { " 再鸣汽笛" }  q4. q8 |
  q4 r r2 |\break
  
  g8-1[\< a-2 b-3 c-4\!] d4-5 d |
  c2-4\> g4-1\! r |
  g8-1[\< a-2 b-3 c-4\!] d4-5 d |
  c4-4 r r2 |\break
  
  g8-1[\p a-2 g-1 a-2] g-1[ a-2 g a] |
  g8[ a g a] g[ a g a] |
  g4-1 \once \stemDown g_1_左手 g-1  \once \stemDown g_1 |
  g4 \once \stemDown g4_左手 g \once \stemDown g |\break
  
  g2-1\pp \once \stemDown g_1_左手 |
  g2 \once \stemDown g2_左手 |
  c,4_.^\markup {右手}_\markup {到达} r r2 |
  R1 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  \dynamicUp
  
  s1^火车启动 |
  s1 |
  s1^加速 |
  s1 |\break
  
  r2 <c' e>2_3_5 |
  r2 q |
  r2 <c f>_2_5 |
  r2 <c e>_3_5 |\break
  
  r2 <c e>_3_5 |
  r2 q |
  r2 <c f>_2_5 |
  e2_3 r |\break
  
  <e f>2_2_3 q4. q8 |
  q4 r r2 |
  q_2_3 q4. q8 |
  q4 r r2 |\break
  
  r2 <c f>_2_5 |
  r2 <c e>_3_5 |
  r2 <c f>_2_5 |
  e4_3 r r2 |\break
  
  r2 <c e>_3_5 |
  r2 q_3_5 |
  s1^火车开始减速 |
  s1 |\break
  
  s1 |
  s1 |
  R1 |
  \once \override DynamicText.X-offset = #-1.2
  c,4_.\ppp r r2 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "流 线 型 火 车"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
