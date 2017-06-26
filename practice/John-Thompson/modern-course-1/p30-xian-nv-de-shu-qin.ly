\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P30

\markup { 和弦前的\bold {曲线} 指和弦音要\bold {先后}弹出，不是一起弹。}

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \numericTimeSignature
  \tempo \markup { "Andante M.M. " \note-by-number #2 #0 #UP "= 60 - " \note-by-number #1 #1 #UP " = 50" }
  \override Hairpin.to-barline = ##f
  
  <g-1 b^3>2.\arpeggio |
  << g2.-1 ais2.-2\arpeggio >> |
  <g-1 b^3>2.~\arpeggio |
  q4 r r |
  <g'-1 b^3>2.\arpeggio |
  << g2.-1 ais2.-2\arpeggio >> |\break
  
  <g-1 b^3>2.~\arpeggio |
  q4 r r |\bar "||"
  R2. |
  g,4-1 b-3 d-5 |
  <g_5 b_3>2.~_\markup{左手} |
  q4 r r |\break
  
  R2. |
  g,4-1 b-3 d-5 |
  <g_5 b_3>2.~_\markup{左手} |
  q4 r r |
  a,4-2\mp b-3 a-2 |
  g4-1 b-3 d-5 |\break
  
  a4-2 b-3 a-2 |
  g4-1 b-3 d-5 |
  c4-4\> d-5 c-4 |
  b4-3 c-4 b-3\! |
  a2.-2~ |
  a4 r r |\break
  
  R2. |
  g4-1\< b-3 d-5\! |
  <g_5 b_3>2.~_\markup{左手} |
  q4 r r |
  R2. |
  g,4-1 b-3 d-5 |\break
  
  <g_5 b_3>2.~_\markup{左手} |
  q4 r r |
  a,4-2\< b-3 a-2\! |
  c4-4 b-3 a-2 |
  g4-1 a-2 g-1 |
  b4-3 a-2 g-1 |\break
  
  d'4-5 b-3 g-1 |
  R2. |
  a4-2\> b-3 a-2 |
  g2.-1\! |
  <g-1 b^3>2.\arpeggio |
  << g2.-1 ais2.-2\arpeggio >> |\break
  <g-1 b-3>2.~\arpeggio |
  q4 r r |
  <g'-1 b^3>2.\arpeggio |
  << g2.-1 ais2.-2\arpeggio >> |
  <g-1 b^3>2.~\arpeggio |
  q4 r r |\bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4
  \dynamicUp
  
  <g'_5 d'_1>2.\arpeggio\p |
  <g_5 cis_2>2.\arpeggio |
  <g_5 d'_1>2.~\arpeggio |
  q4 r r \clef treble |
  <g'_5 d'_1>2.\arpeggio\pp |
  <g_5 cis_2>2.\arpeggio |\break
  
  <g_5 d'_1>2.~\arpeggio |
  q4 r r \clef bass |
  g,4_5\mp b_3 d_1 |
  R2. |
  s2. |
  s2. |\break
  
  g,4_5\pp b_3 d_1 |
  R2. |
  s2. |
  s2. |
  c2._2 |
  b2._3 |\break
  
  c2._2 |
  b2._3 |
  a2._4 |
  g2._5 |
  d'2._1~ |
  d4 r r |\break
  
  g,4_5\mp b_3 d_1 |
  R2. |
  s2. |
  s2. |
  g,4_5\pp b_3 d_1 |
  R2. |\break
  
  s2. |
  s2. |
  c2._2 |
  a4_4 b_3 c_2 |
  b2._3 |
  g4_5 a_4 b_3 |\break
  
  R2. |
  d4_1 b_3 g_5 |
  c4_2 d_1 c_2 |
  b2._3 |
  <g_5 d'_1>2.\arpeggio\p |
  <g_5 cis_2>2.\arpeggio |\break
  
  <g_5 d'_1>2.~\arpeggio |
  q4 r r \clef treble |
  <g'_5 d'_1>2.\arpeggio\pp |
  <g_5 cis_2>2.\arpeggio |
  <g_5 d'_1>2.~\arpeggio |
  q4 r r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "仙女的竖琴"
  }
  \new GrandStaff <<
    \set GrandStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
