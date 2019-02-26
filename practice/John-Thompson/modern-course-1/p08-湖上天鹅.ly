\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P08

keyTime = {
  \key c \major
  \time 3/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "Moderato M.M. " \note-by-number #2 #0 #UP "= 60 - " \note-by-number #1 #1 #UP " = 50" }
  
  e,4-3\mf g-5 f-4 |
  e4-3 g-5 f-4 |
  e4-3 g-5 f-4 |
  e4-3 d-2 c-1 |\break
  
  d2.-2 |
  c4-1 e-3 g-5 |
  d2.-2 |
  c2.-1 |\break
  
  e4-3\p g-5 f-4 |
  e4-3 g-5 f-4 |
  e4-3 g-5 f-4 |
  e4-3 d-2 c-1 |\break
  
  d2.-2 |
  c4-1 e-3 g-5 |
  d2.-2 |
  c2.-1 |\break
  
  d4-2\f e-3 f-4 |
  d4-2 e-3 f-4 |
  e4-3 d-2 c-1 |
  e4-3 d-2 c-1 |\break
  
  d4-2\pp e-3 f-4 |
  d4-2 e-3 f-4 |
  e4-3 d-2 c-1 |
  d2.-2 |\break
  
  e4-3\mp g-5 f-4 |
  e4-3 g-5 f-4 |
  e4-3 g-5 f-4 |
  e4-3 d-2 c-1 |\break
  
  d2.-2 |
  c4-1\pp e-3 g-5 |
  d4-2 e-3^\markup { \italic "rit." } d-2 |
  c2.-1 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  c2._5^\markup { \italic legato } |
  g'2._1 |
  c,2._5 |
  g'2._1 |\break
  
  f4_2 g_1 f_2 |
  e2._3 |
  f4_2 g_1 f_2 |
  e2._3 |\break
  
  c2._5 |
  g'2._1 |
  c,2._5 |
  g'2._1 |\break
  
  f4_2 g_1 f_2 |
  e2._3 |
  f4_2 g_1 f_2 |
  e2._3 |\break
  
  g2._1 |
  g2._1 |
  c,2._5 |
  e2._3 |\break
  
  g2._1 |
  g2._1 |
  c,2_5 e4_3 |
  g2._1 |\break
  
  c,2._5 |
  g'2._1 |
  c,2._5 |
  g'2._1 |\break
  
  f4_2 g_1 f_2 |
  e2._3 |
  f4_2 g_1 f_2 |
  e2._3 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "湖 上 天 鹅"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
