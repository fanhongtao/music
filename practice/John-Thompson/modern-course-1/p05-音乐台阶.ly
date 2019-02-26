\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P05

\include "../../../lib/slurs.ly"

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "M.M." 4=60-120
  
  \shapeSlur #'(0 0 0 3.5 0 3.5 0 0)
  c,4-1^(^\markup { \halign #-9.5 \abs-fontsize #12 第一乐句 } d-2 e-3 c-1 |
  d4-2 e-3 f-4 d-2 |
  e4-3 f-4 g-5 e-3 |
  d1-2) |\break
  
  \shapeSlur #'(0 0 0 3.5 0 3.5 0 0)
  c4-1^(^\markup { \halign #-9.5 \abs-fontsize #12 第二乐句 } d-2 e-3 c-1 |
  d4-2 e-3 f-4 d-2 |
  e4-3 f-4 g-5 e-3 |
  c1-1) |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  c1_5 |
  g'1_1 |
  c,2_5 e_3 |
  g4_1 f_2 e_3 d_4 |\break
  
  e2_3 c_5 |
  f2_2 d_4 |
  g2_1 g_1 |
  e4_3 g_1 c,2_5 |\bar "|."
}

\paper{
  print-all-headers=##t
}

\score {
  \header {
    title = "音 乐 台 阶"
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
