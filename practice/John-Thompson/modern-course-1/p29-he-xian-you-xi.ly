\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P29

keyTime = {
  \key f \major
  \time 3/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "M.M. " \note-by-number #2 #0 #UP "= 60 - " \note-by-number #1 #1 #UP " = 50" }
  
  f,2-1 a4-3 |
  c2.-5 |
  f,2-1 a4-3 |
  c2.-5 |\break
  
  a4-3 g-2 f-1 |
  a4-3 g-2 f-1 |
  g2.-2 |
  c2.-5 |\break
  
  r4 <f, a c>-1-3-5 q |
  r4 q-1-3-5 q |
  r4 q-1-3-5 q |
  r4 q-1-3-5 q |\break
  
  a4-3 g-2 f-1 |
  g4-2 a-3 g-2 |
  f2.-1~ |
  f2. |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  r4 <f a c>_1_3_5 q |
  r4 q_1_3_5 q |
  r4 q_1_3_5 q |
  r4 q_1_3_5 q |\break
  
  R2. |
  c'4_1 bes_2 a_3 |
  r4 c_1 bes_2 |
  a4_3 bes_2 g_4 |\break
  
  f2_5 a4_3 |
  c2._1 |
  f,2_5 a4_3 |
  c2._1 |\break
  
  r4 bes_2 a_3 |
  bes_2 c_1 bes_2 |
  r4 <f a c>4_1_3_5 q |
  q2. |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "和 弦 游 戏"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
