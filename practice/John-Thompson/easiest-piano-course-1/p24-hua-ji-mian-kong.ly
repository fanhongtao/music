\version "2.18.2"

\header {
  title = "滑 稽 面 孔"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  
  s2 e,4-3 |
  c2 s4 |
  s2 e4 |
  c2 s4 |\break
  
  s2 d4 |
  e4 d c |
  s2 c4 |
  d4 s2 |\break
  
  s2 e4-3 |
  c2 s4 |
  s2 e4 |
  c2 s4 |
  c4 d e |
  d2 e4 |
  c2. |
  s2. |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  
  c'2_1 s4 |
  s2 g4_4 |
  c2 s4 |
  s2 g4 |\break
  
  c2 s4 |
  s2. |
  b2 s4 |
  s4 b4_2 g |\break
  
  c2 s4 |
  s2 g4 |
  c2 s4 |
  s2 g4 |
  s2. |
  s2. |
  s2. |
  c2. |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
