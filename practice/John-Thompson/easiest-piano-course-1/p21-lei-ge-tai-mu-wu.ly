\version "2.18.2"

\header {
  title = "雷 格 泰 姆 舞"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  c,4-1 d2 e4 |
  d2 c2 |
  d1 |
  d1 |\break
  
  s1 |
  s1 |
  s1 |
  s1 |
  c4 d2 e4 |
  d2 c2 |\break
  
  c4 d2 e4 |
  d2 c2 |
  e4 d2 c4 |
  d2 e2 |
  c1 |
  s1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  s1 |
  s1 |
  s1 |
  s1 |\break
  
  c'4_1 b2 a4 |
  b2 c2 |
  b1 |
  b1 |
  s1 |
  s1 |\break
  
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  c1 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
