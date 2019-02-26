\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  
  r4 <c, e g>-1-3-5 q |
  r4 q q |
  r4 <f a c>-1-3-5 q |
  r4 q q |\break
  
  r4 <g b d>-1-3-5 q |
  r4 q q |
  r4 <c e g>-1-3-5 q |
  r4 q q | \break
  
  c,2-1 e4-3 |
  g2.-5 |
  f2-1 a4-3 |
  c2.-5 |\break
  
  g2-1 b4-3 |
  d4-5 b g |
  c2.-4~ |
  c2. |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  
  c2_5 e4_3 |
  g2._1 |
  f2_5 a4_3 |
  c2._1 |\break
  
  g2_5 b4_3 |
  d4_1 b g |
  \clef "treble" c2_5 e4_3 |
  g2._1 \clef "bass"|\break
  
  r4 <c,, e g>_1_3_5 q |
  r4 q q |
  r4 <f a c>_1_3_5 q |
  r4 q q |\break
  
  r4 <g b d>_1_3_5 q |
  r4 q q |
  r4 \clef "treble" <c e g> q |
  q2. |\bar"|."
}

\header {
  title = "跳跃的和弦"
}

\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

