\version "2.18.2"

\header {
  title = "拔    河"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  
  d,4-2 e d |
  R2. |
  d4 e d |
  R2. |\break
  
  d2. |
  e2. |
  R2. |
  R2. |
  R2. |
  R2. |\break
  
  R2. |
  e2.-3 |
  d4 d d |
  d2 c4 |
  R2. |
  R2. |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  
  R2. |
  b'4_2 g b |
  R2. |
  b2. |\break
  
  R2. |
  R2. |
  c4_1 b c |
  a2_3 a4 |
  a4 a a |
  c4 b a |\break
  
  c4 b a |
  R2. |
  R2. |
  R2. |
  b4 a b |
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
