\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4
  \numericTimeSignature
  
  R2.|
  d,2.-2 |
  c2-1 c4 |
  f2.-4 |
  f4-4 e d |
  c2 r4 |
  d2.-2 |\break
  
  c2.-1 |
  R2. |
  d2.-2 |
  c2 r4 |
  d2.-2 |
  g4-5 e-3 f |
  d2-2 e4 |\break
  
  d2.-2 |
  c2. |
  c4-1 e-3 d-2 |
  c4 d c |
  c4-1 f-4 d-2 |
  c2. |
  c4-1 e-3 d |\break
  
  c4 d c |
  c4 f d |
  c2. |
  f4-5^注意指法 f f |
  f2-5 e4-4 |
  d2.-3 |
  des2.-2 |\break
  
  c2 c4 |
  c2. |
  c2 c4 |
  c2. |
  f2.-4 |
  f2. |
  f2.~ |
  f4 r r |\bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 3/4
  \numericTimeSignature
  
  a'2_3 a4 |
  gis2._4 |
  a2._3 |
  bes2._2 |
  a2. |
  r4 r b_2 |
  R2. |\break
  
  R2. |
  a2_3 a4 |
  gis2._4 |
  a2_3 a4 |
  b2._2 |
  c2._1 |
  b2._2 |\break
  
  b2._2 |
  R2. |
  bes2._2 |
  b2. |
  a2_3 gis4_4 |
  a2. |
  bes2._2 |\break
  
  bes2. |
  a2 gis4 |
  a2. |
  a2._3 |
  a2. |
  bes2._2 |
  R2. |\break
  
  a2._3 |
  bes2._2 |
  a2. |
  bes2. |
  a2._3 |
  bes2._2 |
  a2.~ |
  a4 r r |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "四 手 联 弹"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \header {
    title = "优美而低回"
    subtitle = ##t
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
