\version "2.18.2"

\header {
  title = "伞   兵"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \numericTimeSignature
  
  s2. |
  s2. |
  s2. |
  s2. |\break
  
  s2. |
  s2. |
  s2. |
  s2. |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  \numericTimeSignature
  
  a'2_3 c4_1 |
  b2._2 |
  a2 c4 |
  b2. |\break
  
  a2 c4 |
  c4 b a |
  b2 c4 |
  a2. |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
