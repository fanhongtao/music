\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P44

\markup { \fill-line { "手  位 (左手扩展)" } }

upper_hand = \relative c'' {
  \clef treble
  \key g \major
  
  g4-1 a-2 b-3 c-4 \bar"" d-5 s \bar "||"
}

lower_hand = \relative c {
  \clef bass
  \key g \major
  
  g'_5 a_4 b_3 c_2 \bar"" d_1 
  <\parenthesize e>4-\parenthesize \tweak ParenthesesItem.font-size #-2 _1
  \bar "||"
}

\markup {\fill-line {
\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper_hand
    \new Staff = "lower" \lower_hand
  >>
  \layout { }
}
} }


upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \numericTimeSignature
  \tempo "M.M." 4 = 60-108
  \override Hairpin.to-barline = ##f
  
  \once \override DynamicText.X-offset = #-4.2
  b4.-3\mp g8-1 g8-1[ b-3] |
  b4.-3 g8-1 g8-1[ b-3] |
  a4-2 b-3 a-2 |
  g4.-1 b8-3 b8-3[ d-5] |\break
  
  d4.-5 b8-3 b8-3[ d-5] |
  d4.-5 b8-3 b8-3[ d-5] |
  c4-4 d-5 c-4 |
  b4.-3 b8-3 b8-3[ c-4] |\break
  
  a4.-2 a8-2 a8-2[ b-3] |
  g4.-1 b8-3 b-3[\pp c-4] |
  a4.-2 a8-2 a8-2[ b-3] |
  g4.-1 b8-3\< b8-3[ d-5]\! |\break
  
  d4.-5\mf b8-3 b8-3[ d-5] |
  d4.-5 b8-3 b8-3[ d-5] |
  c8-4[ d-5]^\markup { \italic rit. }\> b4 a-2 |
  g2.-1\! |\bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4
  \numericTimeSignature
  
  d'4_1( g,_5) r |
  d'4_1( g,_5) r |
  c4_2 d_1 c_2 |
  b4_3( g_5) r |\break
  
  b4_3( g_5) r |
  b4_3( g_5) r |
  a4_4 b_3 a_4 |
  g4_5( d'_1) r |\break
  
  c4_2( d_1) r |
  b4_3( d_1) r |
  c4_2( d_1) r |
  b4_3( d_1) r |\break
  
  b4_3( g_5) r |
  b4_3( g_5) r |
  e'4_1 d_2 c_3 |
  b2._4 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "小 圆 舞 曲"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup { \vspace #1 }
\markup { 这首根据勃拉姆斯最著名的一首圆舞曲改编的乐曲，其节奏几乎与原作完全一样。 }
