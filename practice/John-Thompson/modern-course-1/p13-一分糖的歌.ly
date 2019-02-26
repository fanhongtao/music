\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P13

upper_hand = \relative c'' {
  \clef treble
  \key g \major
  
  g4-1 a-2 b-3 c-4 \bar "" d-5 \bar "||"
}

lower_hand = \relative c {
  \clef bass
  \key g \major
  
  d'4_1 c_2 b_3 a_4 \bar "" g_5
}

\markup {\fill-line {
\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper_hand
    \new Staff = "lower" \lower_hand
  >>
  \layout {
    \override Staff.TimeSignature #'stencil = ##f
  }
}
} }

keyTime = {
  \key g \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "M.M. " 4=60-120
  
  b1-3 |
  a4-2 b-3 c-4 a-2 |
  b1-3 |
  a4-2 b-3 c-4 a-2 |\break
  
  g4-1 b-2 c-3 g-1 |
  a4-2 b-3 c-4 a-2 |
  b4-3 c-4 b-3 a-2 |
  g1-1 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  g'4_5 a_4 b_3 g_5 |
  d'1_1 |
  g,4_5 a_4 b_3 g_5 |
  d'1_1 |\break
  
  b1_3 |
  c1_2 |
  d2_1 d4_1 c_2 |
  b4_3 d_1 g,2_5 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "一 分 糖 的 歌"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
