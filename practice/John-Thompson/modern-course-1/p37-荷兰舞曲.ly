\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P37

keyTime = {
  \key g \major
  \time 3/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "Lively M.M. " \note-by-number #2 #0 #UP "= 66 - " \note-by-number #1 #1 #UP " = 56" }
  
  d4-5->(\mf b-3) b-3 |
  d4-5->( b-3) b-3 |
  g4-1( a-2) c-4 |
  b2-3 b4-3 |\break
  
  d4-5 d8-5[ c-4] b-3[ a-2] |
  b4-3( g-1) g-1 |
  a4-2( b-3) a-2 |
  d2.-5 |\break
  
  c4-4->( a-2) a-2 |
  b4-3->( g-1) g-1 |
  c8-4[ b-3] a-2[ b-3] c-4[ a-2] |
  b4-3( g-1) b-3 |\break
  
  d4-5->( b-3) b-3 |
  d4-5->( b-3) b-3 |
  d8-5([ c-4] b4-3-.) a-2_. |
  g2.-1^> |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  g'4_5( d'_1) d_1 |
  g,4_5( d'_1) d_1 |
  g,4_5( c_2) c_2 |
  g4_5( d'_1) d_1 |\break
  
  fis,4_5( d'_1) d_1 |
  g,4_5( d'_1) d_1 |
  a2_4 cis4_2 |
  d2._1 |\break
  
  fis,4_5( d'_1) d_1 |
  g,4_5( d'_1) d_1 |
  fis,4_5( d'_1) d_1 |
  g,4_5( d'_1) d_1 |\break
  
  g,4_5( d'_1) d_1 |
  g,4_5( d'_1) d_1 |
  fis,4_5( d'_1-.) c_2-. |
  <g b>2._3_5-> |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "荷 兰 舞 曲"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
