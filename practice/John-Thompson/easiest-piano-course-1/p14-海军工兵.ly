\version "2.18.2"

\header {
  title = "海 军 工 兵"
}

upper = \relative c'' {
  \clef treble
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

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  c'1_1 |
  b1_2 |
  c4 b c b |
  c2 c |\break
  
  c1 |
  b1 |
  c4 b c b |
  c2 c |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
