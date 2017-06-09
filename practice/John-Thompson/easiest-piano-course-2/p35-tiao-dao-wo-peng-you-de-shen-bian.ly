 \version "2.18.2"


upper = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4
  \numericTimeSignature
  
  a4-3 a f f |
  a4 bes8-4 a c2 |
  g4-2 g e-1 e |
  g4 a8 g bes2 |\break
  
  a4-3 a f f |
  a4 bes8 a c2 |
  g4-2 a8 bes a4 g |
  f2 f |\bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 4/4
  \numericTimeSignature

  <c'_1 a_3 f_5>1 |
  q1 |
  <c_1 bes_2 f_5>1 |
  q1 |\break
  
  <c a f>1 |
  q1 |
  <c bes f>1 |
  <c a f>1 |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "固定低音和弦"
  subtitle = "F 大 调"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "跳到我朋友的身边"
    subtitle = ##t
    composer = "传统游戏歌"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


