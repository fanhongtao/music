\version "2.18.2"

\header {
  title = "公 主 圆 舞 曲"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  
  r4 e,4-3 g-5 |
  r4 e g |
  r4 f-4 g |
  r4 f g |
  r4 f g |
  r4 f g |\break
  
  r4 e g |
  r4 e g |
  r4 e g |
  r4 e g |
  r4 c, f-4 |
  r4 d-2 f |\break
  
  r4 c e |
  r4 r f-4 |
  r4 e g |
  R2. |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  
  c'4_1 r r |
  g4_4 r r |
  b4_2 r r |
  g4 r r |
  b4 r r |
  g4 r r |\break
  
  c4 r r |
  g4 r r |
  c4 r r |
  c4 r r |
  f,4 r r |
  f4 r r |\break
  
  g4 r r |
  g4_4 b_2 r |
  c4 r r |
  c4 r r |\bar "|."
}

\markup { \vspace #1 }
\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
