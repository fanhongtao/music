\version "2.18.2"
% 《约翰•汤普森 简易钢琴教程 2》 P23

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  g2-5 f8[ e] d[ c] |
  g'2 f8[ e] d[ c] |
  e8-3[ f] g4 f e |
  d4 g e c |\break
  
  g'2 f8[ e] d[ c] |
  g'2 f8[ e] d[ c] |
  e8[ f] g4 f e |
  d4 g c,2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature

  <c g'>1_1_5 |
  q1 |
  q1 |
  q1 |\break
  
  q1 |
  q1 |
  q1 |
  q1 |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "复     习"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "风笛手来了"
    subtitle = "（弥赛特舞曲）"
    composer = "巴 赫原曲"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup {  译注：弥赛特舞曲又称风笛舞曲，是一种带有持续低音、具有牧歌特性的乐曲。此曲选自巴赫的《英国组曲》。}
