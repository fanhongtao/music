\version "2.18.2"

\header {
  title = "有 谁 知 道 我 的 忧 愁"
  subtitle = "(黑人灵歌)"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  e,4-3 r r2 |
  r2 r4 d-2 |
  e4 e e2 |
  e1 |\break
  
  e4 r r2 |
  R1 |
  R1 |
  << g1-5 f1-4 >> |\break
  
  e4-3 r r2 |
  r2 r4 d-2 |
  e4 e e2 |
  e1 |
  g2.-5 e4 |
  d2 e |
  c1 |
  R1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  r4 g'2_4 a4 |
  c2. r4 |
  R1 |
  R1 |\break
  
 r4 g2 a4 |
 c2. c4 |
 a2 g~ |
 g1 |\break
 
 r4 g2_4 a4 |
 c2. r4 |
 R1 |
 R1 |
 R1 |
 R1 |
 R1 |
 c1 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
