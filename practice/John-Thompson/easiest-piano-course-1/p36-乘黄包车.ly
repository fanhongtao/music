\version "2.18.2"

\header {
  title = "乘 黄 包 车"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  f,4-4 f d-2 d |
  c4 c r2 |
  r2 c4 f |
  d4 d d2 |\break
  
  f4 f d d |
  c4 c r2 |
  r2 c4 d |
  R1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  R1 |
  r2 a'4_3 a |
  f4_5 a r2 |
  R1 |\break
  
  R1 |
  r2 a4 a |
  f4 a r2 |
  a4_3 f_5 f2 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
