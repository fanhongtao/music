\version "2.18.2"

\header {
  title = "越 过 山 坡"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4
  \numericTimeSignature
  
  s2 |
  s2 |
  s2 |
  s2 |\break
  
  c,4-1 d |
  e2 |
  e4 d |
  c2 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 2/4
  \numericTimeSignature
  
  a'4_3 b |
  c2 |
  c4 b |
  a2 |\break
  
  s2 |
  s2 |
  s2 |
  s2 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
