\version "2.18.2"

\header {
  title = "小 矮 人 进 行 曲"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4
  \numericTimeSignature
  
  c,4_1 d |
  s2 |
  c2 |
  s2 |\break
  
  c4 d |
  s2 |
  c2 |
  s2 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 2/4
  \numericTimeSignature
  
  s2 |
  c'4_1 b |
  s2 |
  c2 |\break
  
  s2 |
  c4 b |
  s2 |
  c2 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
