\version "2.18.2"

\header {
  title = "排   钟"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  
  e,4-3 c d |
  s2. |
  c4 d e |
  c2. |\break
  
  e4 d c |
  s2. |
  s4 d e |
  c2. |\bar"||"
  
  c2.-1 |
  c2. |
  c2. |
  c2. |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  
  s2. |
  g'2._4 |
  s2. |
  s2. |\break
  
  s2. |
  g2. |
  g4 s2 |
  s2. |
  g2._4 |
  g2. |
  g2. |
  g2. |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
