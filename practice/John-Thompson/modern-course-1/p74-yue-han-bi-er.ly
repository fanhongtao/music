\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P74

keyTime = {
  \key c \major
  \time 2/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegro"
  \override DynamicText.X-offset = #-4.2
  
  \partial 8  e,16-1(\mf f-2 |
  g8-3) g-3( e-1) e16-1( f-2 |
  g8-3) g( e) d16-1( e-2 |
  f8-3) f( d) d16-1( e-2 |
  f8-3) f( d) e16-3( d-2 |\break
  
  c8-1) s c'8-5\fermata c16-3([ b-2] |
  a8-1) a-4( <e g>-1-3) f16-2( e-1 |
  a8-4) r r b,-2_. |
  <b d>4-2-4( c8-3) e'16-1([ f-2] |\break
  
  g8-3) g( e) e16-1( f-2 |
  g8-3) g( e) d16-1( e-2 |
  f8-3) f( d) d16-1( e-2 |
  f8-3) f( d) e16-3( d-2 |\break
  
  c8-1) c( c')\fermata c16-3( b-2 |
  a8-1) a-4( <e g>-1-3) f16-2( e-1 |
  a8-4) r r b,-3-. |
  <f d'>4-1-5( <e c'>8-1-5) \bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \partial 8 r8 |
  r8 g'_4([ c_1]) r |
  r8 g_4([ c_1]) r |
  r8 g_4([ b_2]) r |
  r8 g_4([ b_2]) r |\break
  
  s8 c_1~ c\fermata r |
  f,16_5( g_4 a_3 b_2 c8_1) r |
  r8 \clef treble f16( d c8) r |
  \clef bass <f, g>4_1_2( e8_3) r |\break
  
  \clef treble <c' g'>2_1_5 |
  q2 |
  q2 |
  q2 |\break
  
  q2 |
  f16_5( g_4 a_3 b_2 c8_1) r |
  r8 f16_1( d_2 c8_3) r |
  \clef bass b,8_2( g_4 c_1) \bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "十 六 分 音 符"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "约 翰 · 彼 尔"
    composer = "苏格兰民歌"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
