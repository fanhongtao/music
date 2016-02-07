\version "2.18.2"

\header {
  title = "上学的日子"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  r1 |
  r1 |
  f,2.-4 d4 |
  c1 |
  g'2-5 f4 d |
  r1 |
  r2 r4 d-2 |
  c1 |\break
  
  r1 |
  r1 |
  f2.-4 d4 |
  c1 |
  g'2-5 f4 d |
  r1 |
  r1 |
  r1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  f2_5 g4 a |
  c1 |
  r1 |
  r1 |
  r1 |
  c4_1 a f2 |
  a2 g4 r4 |
  r1 \break
  
  f2_5 g4 a |
  c1 |
  r1 |
  r1 |
  r1 |
  c4_1 a f2 |
  a2 f4 g |
  f1 |\bar "|."
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
