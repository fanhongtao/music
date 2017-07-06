\version "2.18.2"

\header {
  title = "军 号 响" 
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  g2-5 e4-3 c-1 |
  g'1 |
  g2 e4 c |
  g'1 |\break
  
  g2 e4 c |
  r2 g' |
  e2 g4 e |
  c1 |\break
  
  g'2 e4 c |
  g'1 |
  g2 e4 c |
  g'1 |
  g2 e4 c |
  R1 |
  r2 e4 r |
  c1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  R1 |
  R1 |
  R1 |
  R1 |\break
  
  R1 |
  g'2_4 r |
  R1 |
  R1 |\break
  
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  g2 g |
  c2 r4 g |
  R1 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
