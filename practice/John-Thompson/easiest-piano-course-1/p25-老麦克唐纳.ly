\version "2.18.2"

\header {
  title = "老 麦 克 唐 纳"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  s1 |
  s1 |
  e,4-3 e d d |
  c2. s4 |\break
  
  s1 |
  s1 |
  e4 e d d |
  c1 |
  c4-1 c c2 |
  c4 c c2 |\break
  
  c4 c c c |
  c4 c c2 |
  s1 |
  s1 |
  e4 e d d |
  c1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  c'4_1 c c g_4 |
  a4 a g2 |
  s1 |
  s2. g4_4 |\break
  
  c4 c c g |
  a4 a g2 |
  s1 |
  s1 |
  << a4_3 g4_4 >> <g a>4 q2 |
  q4 q q2 |\break
  
  q4 q q q |
  q4 q q2 |
  c4 c c g |
  a4 a g2 |
  s1 |
  s1 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
