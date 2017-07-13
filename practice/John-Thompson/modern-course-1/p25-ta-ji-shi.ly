\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P25

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "M.M. " 4=60-120
  
  g4-1 gis-2 a2-3 |
  a4-3 aes-2 g2-1 |
  g4-1 a-2 b-3 c-4 |
  a1-2 |\break
  
  a4-2 b-3 c-4 d-5 |
  g,4-1 a-2 b-3 c-4 |
  b2-3 a-2 |
  d1-5 |\break
  
  g,4-1 gis-2 a2-3 |
  a4-3 aes-2 g2-1 |
  g4-1 a-2 b-3 c-4 |
  a1-2 |\break
  
  d4-5 c-4 b-3 a-2 |
  c4-4 b-3 a-2 g-1 |
  a2-2 b-3 |
  c1-4 |\bar"|."
}

lower = \relative c {
  \clef treble
  \keyTime
  
  <c' e>1_2_4 |
  q1_2_4 |
  q1_2_4 |
  f1_1 |\break
  
  f1_1 |
  e1_2 |
  d2_3 c_4 |
  <b f'>1_1_5 |\break
  
  <c e>1_2_4 |
  q1 |
  q1 |
  f1_1 |\break
  
  f1_1 |
  e1_2 |
  f2_1 d_3 |
  <c e>1_2_4 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "踏 级 石"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
