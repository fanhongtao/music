\version "2.18.2"
% 《约翰•汤普森 简易钢琴教程 2》 P35

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

  <f a c>1_1_3_5 |
  q1 |
  <f bes c>1_1_2_5 |
  q1 |\break
  
  <f a c>1 |
  q1 |
  <f bes c>1 |
  <f a c>1 |\bar"|."
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


