\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P19

keyTime = {
  \key g \major
  \time 3/4
}

left_hand = \relative c {
  \clef bass
  \keyTime
  
  <c' d>2._1_2 |\bar "||"
  <b_3 d_1>2.~  \bar "||"
}

\markup {\fill-line {
  \score {
    \new Staff = "lower" \left_hand
    \layout { }
  }
} }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "M.M. " \note-by-number #2 #0 #UP "= 80 - " \note-by-number #1 #1 #UP " = 50" }
  
  d2-5(\mf b4-3) |
  d2-5( b4-3) |
  c4-4( b-3 a-2 |
  g2.-1) |\break
  
  d'2-5(\pp b4-3) |
  d2-5( b4-3) |
  c4-4( b-3 a-2 |
  g2.-1) |\break
  
  a4-2\mp a-2 b-3 |
  c2-4 a4-2 |
  b4-3 b-3 c-4 |
  d2-5( b4) |\break
  
  d2-5(\ff b4-3) |
  d2-5( b4-3) |
  c4-4( b-3^\markup { \italic "rit." } a-2 |
  g2.-1) |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  r4 b'_3( g_5) |
  r4 b_3( g_5) |
  r4 d'_1( c_2 |
  b2._3) |\break
  
  r4 b_3( g_5) |
  r4 b_3( g_5) |
  r4 d'_1( c_2 |
  b2._3) |\break
  
  <c d>2.~_1_2 |
  q2. |
  <b d>2.~_1_3 |
  q2. |\break
  
  r4 b_3( g_5) |
  r4 b_3( g_5) |
  r4 d'_1( c_2 |
  <g b>2._3_5) |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "布 谷 鸟"
    composer = "德国民歌曲调"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
