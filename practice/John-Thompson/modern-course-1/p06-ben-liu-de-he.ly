\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P06

keyTime = {
  \key c \major
  \time 3/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "M.M. " \note-by-number #2 #0 #UP "= 30 - " \note-by-number #1 #1 #UP " = 50" }
  
  e,4-3 d-2 c-1 |
  f4-4 e-3 d-2 |
  g2.-5 |
  f2.-4 |\break
  
  e2.-3 |
  d2.-2 |
  c2.-1 |
  d2.-2 |\break
  
  e4-3 d-2 c-1 |
  f4-4 e-3 d-2 |
  g4-5 f-4 e-3 |
  d4-2 e-3 f-4 |\break
  
  e2.-3 |
  d2.-2 |
  c2.-1~ |
  c2. |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  c2._5 |
  d2._4 |
  e2._3 |
  d2._4 |\break
  
  c4_5 d_4 e_3 |
  f4_2 g_1 f_2 |
  e2._3 |
  d2._4 |\break
  
  c2._5 |
  d2._4 |
  e2._3 |
  f2._2 |\break
  
  g2._1 |
  f4_2 g_1 f_2 |
  e4_3 g_1 e_3 |
  c2._5 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "奔 流 的 河"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
