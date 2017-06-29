\version "2.18.2"

\header {
  title = "小 矮 人 舞 曲"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \numericTimeSignature
  
  c,2_1 d4_2 |
  s2. |
  c2. |
  s2. |
  c2 d4 |
  s2. |
  c2. |
  s2. |\break
  
  c2 d4 |
  s2. |
  c2. |
  s2. |
  c2 d4 |
  s2. |
  c2. |
  s2. |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  \numericTimeSignature
  
  s2. |
  c'2_1 b4_2 |
  s2. |
  c2. |
  s2. |
  c2 b4 |
  s2. |
  c2. |\break
  
  s2. |
  c2 b4 |
  s2. |
  c2. |
  s2. |
  c2 b4 |
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
