\version "2.18.2"

\header {
  title = "“自新大陆”交响曲" 
  subtitle = "（主  题）"
  composer = "德沃夏克"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  e,2.-3 g4 |
  g1 |
  e2. d4 |
  c1 |
  d2 e |
  g2. e4 |
  d1~ |
  d1 |\break
  
  e2. g4 |
  g1 |
  e2. d4 |
  c1 |
  d2 e |
  d2. c4 |
  c1~ |
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
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |\break
  
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
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
