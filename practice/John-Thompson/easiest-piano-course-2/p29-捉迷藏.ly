 \version "2.18.2"


upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \numericTimeSignature
  
  e,4-3 f e |
  g2 g4 |
  d2-2 d4 |
  f2 r4 |\break
  
  e'4 f e |
  g2 g4 |
  d2.~ |
  d2 r4 |
  e,4-3 f e |
  g2 g4 |\break
  
  d2 d4 |
  f2. |
  e'4-3 g f |
  e4 f d |
  c2.~ |
  c2 r4 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  \numericTimeSignature

  c'2._2 |
  c2. |
  b2._3 |
  b2 r4 |\break
  
  c2._2 |
  c2. |
  b2.~ |
  b2 r4 |
  c2._2 |
  c2. |\break
  
  b2. |
  b2. |
  c2_2 d4_1 |
  c4 d b_3 |
  c2._2~ |
  c2 r4 |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "复   习"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "捉 迷 藏"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


