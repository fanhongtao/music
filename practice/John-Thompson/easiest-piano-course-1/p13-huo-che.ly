\version "2.18.2"

\header {
  title = "火  车"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  c,1_1 |
  d1_2 |
  c2 d |
  c2 d |\break
  
  c4 d c d |
  c4 d c d |
  c4 c c c |
  c4 c c c |\bar "|."
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
