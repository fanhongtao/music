\version "2.18.2"

\header {
  title = "班 卓 琴 手"
  composer = "斯蒂芬•福斯特"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  R1 |
  f,1-4 |
  d4-2 d f d |
  c1 |
  f4 f f c |
  d4 d c2 |\break
  
  R1 |
  R1 |
  R1 |
  f1 |
  d4 d f d |
  c1 |\break
  
  f4 f f c |
  d4 d c2 |
  R1 |
  R1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  f4_5 f a_3 c_1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |\break
  
  a4_3 a g f |
  g1 |
  f4 f a c |
  R1 |
  R1 |
  R1 |\break
  
  R1 |
  R1 |
  a4 a g g |
  f1 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
