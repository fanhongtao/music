\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 6/8
  \tempo "Vivace 快而活泼"
  
  b8-5-.\f r r b-. r r |
  b8_.[ r a-4]( g-3)[ r e-2]( |
  d4.)~ d4. |
  g4.-3~ g4. |\break
  
  a8_. r r a-. r r |
  b8_.[ r a]( g)[ r b]( |
  a4.~) a4.~ |
  a8 r r r4 r8 |\break
  
  r8 r d,-1( g-4)[ r a]( |
  g4.) g8-4_.[ r fis]( |
  e8)[ r fis-3]( g)[ r e]( |
  d4.) b'8-5[ r a]( |\break
  
  g8-3)[ r fis]( g)[ r e-1]( |
  fis8-2[) r d]( fis)[ r a]( |
  g4.)~ g4.~ |
  g8 r r r4 r8 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 6/8
  
  <d'_1 b_3 g_5>8-. r r q-. r r |
  q8-. r r q-. r r |
  <b_3 g_5>8-. r r q-. r r |
  q8-. r r q-. r r |\break
  
  << d8_1-. c8_2 fis,8_5 >> r8 r <d' c fis,>8-. r r |
  <d_1 b_3 g_5>8-. r r q-. r r |
  <d c fis,>8-. r r q-. r r |
  q8-. r r d_1[ r c_2]( |\break
  
  <b_3 g_5>8-.) r r r4 r8 |
  q4. r4 r8 |
  <c_2 g_5>8-. r r r4 r8 |
  <b g>4. r4 r8 |\break
  
  <d b g>8-. r r q-. r r |
  <c g>8-. r r q-. r r |
  <b g>8-. r r q-. r r |
  q8-. r r r4 r8 |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "六 八 拍 子"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \header {
    title = "嚓，嚓，嚓"
    subtitle = ##t
    composer = "乔治•鲁特"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

