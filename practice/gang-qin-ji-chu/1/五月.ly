\version "2.18.2"
% 《钢琴基础教材 修订版 第一册》 P10

\header {
  title = "五月"
  composer = "贝　　尔 曲"
  arranger = "李晓平改编"
}

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \tempo "Moderato"
  
  d4-5\mf( b-3 g-1 |
  a2.-2) |
  d4( b g |
  a2.) |
  g4-1( a-2 b-3 |
  c4-4 b-3 a-2 |\break
  
  b4-3 a-2 g-1 |
  a2.-2) |
  d4( b g |
  a2.) |
  d4( b g |
  a2.) |\break
  
  g4-1( a-2 b-3 |
  c4-4 d-5 c-4 |
  b2-3 a4-2 |
  g2.-1) |
  a4-2(\mp a a |
  a4-2 b-3 c-4 |
  b4-3 d-5 b-3 |\break
  
  g2.-1) |
  a4( a a |
  a4 b c |
  b4 d b |
  g2.) |
  d'4(\mf b g |\break
  
  a2.) |
  d4( b g |
  a2.) |
  g4-1( a-2 b-3 |
  c-4 d-5 c-4 |
  b2-3 a4-2 |
  g2.-1) |\bar "|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4
  
  g'2._5 |
  r4 d'_1 c_2 |
  b2._3 |
  r4 d c |
  b2. |
  a2._4 |\break
  
  g2._5 |
  d'4_1 c_2 a_4 |
  g2._5 |
  r4 d' c |
  b2. |
  r4 d c |\break
  
  b2._3 |
  a2._4 |
  d2._ 1 |
  b2._3 |
  c2._2( |
  c2.) |
  g2._5 |\break
  
  r4 d'_1 b_3 |
  c2._2( |
  c2.) |
  g2. |
  r4 d'_1 b_3 |
  g2._5 |\break
  
  r4 d' c |
  b2. |
  r4 d_1 c_2 |
  b2._3 |
  a2._4 |
  d2._1 |
  <b_3 g_5>2. |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
