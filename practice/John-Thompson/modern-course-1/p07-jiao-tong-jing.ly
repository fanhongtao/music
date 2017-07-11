\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P07

keyTime = {
  \key c \major
  \time 2/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "M.M. " 4=60-120
  
  e,4-3 e-3 |
  c2-1 |
  e4-3 e-3 |
  c2-1 |\break
  
  d4-2 d-2 |
  e4-3 d-2 |
  c4-1 e-3 |
  g2-5 |\break
  
  e4-3 e-3 |
  c2-1 |
  e4-3 e-3 |
  c2-1 |\break
  
  d4-2 d-2 |
  e4-3 d-2 |
  c4-1 e-3 |
  c2-1 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  c2_5 |
  e4_3 e |
  c2_5 |
  e4_3 e |\break
  
  f2_2 |
  g4_1 f_2 |
  e4_3 c_5 |
  e2_3 |\break
  
  c2_5 |
  e4_3 e |
  c2_5 |
  e4_3 e |\break
  
  f2_2 |
  g4_1 f_2 |
  e4_3 g_1 |
  e2_3 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "交 通 警"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
