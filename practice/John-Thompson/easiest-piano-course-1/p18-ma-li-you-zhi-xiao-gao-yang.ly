\version "2.18.2"

\header {
  title = "玛 丽 有 只 小 羔 羊"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  e,4_3 d c d |
  e4 e e2 |
  d4 d d2 |
  e4 e e2 |\break
  
  e4 d c d |
  e4 e e c |
  d4 d e d |
  c1 |\bar "|."
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
  
  s1 |
  s1 |
  s1 |
  s1 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
