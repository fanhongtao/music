\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P04

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "M.M." 4=60-120
  
  e,2-3^(^\markup { \halign #-9.5 \abs-fontsize #12 第一乐句 } f-4 |
  g2-5 c,-1 |
  d2-2 f-4 |
  e1-3) |\break
  
  e2-3^(^\markup { \halign #-9.5 \abs-fontsize #12 第二乐句 } f-4 |
  g2-5 c,-1 |
  d2-2 e-3 |
  c1-1) |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  c1_5 |
  e1_3 |
  g1_1 |
  c,1_5 |\break
  
  c1_5 |
  e1_3 |
  f2_2 g_1 |
  e1_3 |\bar "|."
}

\paper{
  print-all-headers=##t
}

\score {
  \header {
    title = "音   苑"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
    ragged-last = ##f
  }
  \midi { } 
}
