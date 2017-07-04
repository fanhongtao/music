\version "2.18.2"

\header {
  title = "教 堂 管 风 琴"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  f,2-4 e |
  d2 c |
  d2 e |
  f1 |\break
  
  f2 e |
  d2 c |
  d2 e |
  f1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  R1 |
  R1 |
  R1 |
  R1 |\break
  
  R1 |
  R1 |
  R1 |
  R1 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
