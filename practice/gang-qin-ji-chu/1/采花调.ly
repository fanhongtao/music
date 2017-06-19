\version "2.18.2"
% 《钢琴基础教材 修订版 第一册》 P10

\header {
  title = "采  花  调"
  composer = "四 川 民 歌"
  arranger = "黎 英 海 编曲"
}

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 2/4
  \tempo "中速"
  
  g8-2(\mf f4 g8 |
  a8.-3[ c16] a8[ d,-1]) |
  g8-2( f4 g8 |
  a8[ f16 g] a4) |
  a16-1( c d4\< f8\! |\break
  
  d4 c8 a |
  d8-5 a4-3 g8 |
  f4) f16-1( g a c |
  a4 g8 f |
  d8-2 f4-4 d16 f |\break
  
  d2~ |
  d4) r8 a'-3\p |
  a8-3_.[ a_. a_. a_.] |
  a8_.[ a_. a_. a_.] |
  a8_.[ a_. a_. a_.] |
  a8_.[ a_. a_. a_.] |\break
  
  a8_.[ a_.\< a_. a_.\!] |
  a8_.[ a_.\> a_. a_.\!] |
  d8-5( a4-3 g8 |
  f4) f16( g a c |
  a4 g8 f |\break
  
  d8 f4 d16 f |
  d2~ |
  d2) |
  d'2-5~ |
  d2~ |
  d2\fermata |\bar "|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 2/4
  
  r4 d4_5( |
  f4_3 g_2) |
  r8 a_1-.[ a-.] r |
  r8 d_1([ c a_4] |
  g4_1 f8 d) |\break
  
  r8 a'-.[ a-.] r |
  r8 d,_5([ f g ] |
  a8_1[ c_3 d f] |
  d8_2[ c_3 a_1 g] |
  f8) r g4_2(~ |\break
  
  g8[ d f g]) |
  r8 d_5-.[ d-.] r |
  g8_3\mf( f4_4 g8 |
  a8. c16 a8 d,) |
  g8_3( f4 g8 |
  a8 f16 g a4) |\break
  
  a16_5( c_3 d4_2 f8_1 |
  d4 c8 a)^\markup {
    " "
    \override #'(on . 0.6)
    \override #'(off . 0.4)
    \draw-dashed-line #'(4.5 . 2.8) 
  } |
  r8 d,_5([ f g] |
  a8_1[ c_3 d f]) |
  d8( c a_1 g_2 |\break
  f8) r g4--~( |
  g8[ d f g]) |
  r8 d_5-.[ d-.] r |
  \dynamicUp
  r8\mp\> a_5([ c d]) |
  r8 a_5_. a_. r\! |
  d,2_3\fermata |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup { 注：因为 glissando 较为复杂，所以第18小节末尾的连线没有使用 glissando 来绘制，而是用 markup 拼凑了一根线 }
