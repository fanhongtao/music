\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P40

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \numericTimeSignature
  \tempo "Moderato"
  
  \once \override DynamicText.X-offset = #-5.2
  b8-3-.[\mp_\markup { \italic staccato } b-.] b-.[ b-.] b4-. |
  b8-3-.[ b-.] b-.[ b-.] b4-. |
  a8-2_.[ a_.] a4_. d-5-. |
  b2-3( g4-1) |\break
  
  b8-3-.[ b-.] b-.[ b-.] b4-. |
  b8-3-.[ b-.] b-.[ b-.] b4-. |
  a8-2_.[ a_.] a4_. d-5-. |
  g,2.-1 |\break
  
  a8-2_.[ a_.] a_.[ a_.] a4_. |
  b8-3-.[ b-.] b-.[ b-.] b4-. |
  c8-4_.[ c-.] c-.[ c-.] c4-. |
  b8-3-.[ b-.] b-.[ b-.] b4-. |\break
  
  a8-2_.[ a_.] a_.[ a_.] a4_. |
  b8-3-.[ b-.] b-.[ b-.] b4-. |
  cis4-4 b-3 a-2 |
  d2-5 c!4-4 |\break
  
  b8-3-.[ b-.] b-.[ b-.] b4-. |
  b8-3-.[ b-.] b-.[ b-.] b4-. |
  a8-2_.[ a_.] a4_.d-5-. |
  b2-3( g4-1) |\break
  
  b8-3-.[ b-.] b-.[ b-.] b4-. |
  b8-3-.[ b-.] b-.[ b-.] b4-. |
  a8-2_.[ a_.] a4_.d-5-. |
  g,2.-1 |\break
  
  g8-1_.\<[ g_.] g_.[ g_.] g4_.\! |
  b8-3-.[ b-.] b-.[ b-.] b4-. |
  d8-5]\f( c-4 b4-3-.) a-2_. |
  g2.-1 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4
  \numericTimeSignature
  \dynamicUp
  
  g'4_5-. <b d>_1_3-. q-. |
  g4-. q-. q-. |
  fis4_5-. <c' d>_1_2-. q-. |
  g4_5-. <b d>_1_3-. q-. |\break
  
  g4_5-. <b d>_1_3-. q-. |
  g4-. q-. q-. |
  fis4_5-. <c' d>_1_2-. q-. |
  <g b>2._3_5 |\break
  
  fis4_5 c'_2 d_1 |
  g,4_5 b_3 d_1 |
  a4_4 c_2 d_1 |
  g,4_5 b_3 d_1 |\break
  
  fis,4_5 c'_2 d_1 |
  g,4_5 b_3 d_1 |
  a4_4 b_3 cis_2 |
  d2._1 |\break
  
  g,4_5-. <b d>_1_3-. q-. |
  g4-. q-. q-. |
  fis4_5-. <c' d>_1_2-. q-. |
  g4_5-. <b d>_1_3-. q-. |\break
  
  g4_5-. <b d>_1_3-. q-. |
  g4-. q-. q-. |
  fis4_5-. <c' d>_1_2-. q-. |
  <g b>2._3_5 |\break
  
  g8_5-.[ g-.] g-.[ g-.] g4-. |
  b8_3-.[ b-.] b-.[ b-.] b4-. |
  d8_1( c_2 b4_3-.) a_4-. |
  <g b d>2._1_3_5 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "啄 木 鸟"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
