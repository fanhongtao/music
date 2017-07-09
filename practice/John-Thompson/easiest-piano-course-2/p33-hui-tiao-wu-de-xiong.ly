\version "2.18.2"
% 《约翰•汤普森 简易钢琴教程 2》 P33

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \numericTimeSignature
  
  r4 <e, g>-1-3 q |
  r4 q q |
  r4 <f g>-2-3 q |
  R2. |\break
  
  r4 <e g>-1-3 q |
  r4 q q |
  r4 <f g> q |
  R2. |
  r4 <e g> q |
  r4 q q |\break
  
  r4 f-1 c'-5 |
  <fis, c'>2.-2-5\fermata |
  r4 <e g>-1-3 q |
  r4 <f g> q |
  r4 <e g> q |
  q4 r r |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  \numericTimeSignature

  c'2._1 |
  a2._3 |
  b2._2 |
  g4_4 a b |\break
  
  c2. |
  a2. |
  b2. |
  g4 a b |
  c2._1 |
  bes2._2 |\break
  
  a2._3 |
  aes2._4\fermata |
  g2._5 |
  d'2. |
  c2.~ |
  c4 r r |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "双       音"
  subtitle = "C 大 调"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "会 跳 舞 的 熊"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


\markup { 音符上标有延长记号 \musicglyph #"scripts.ufermata" 时，持续的时间就加长。 } 
\markup { 延长的时间一般是音符自身的长度。 如：第 12 小节原来是 3 拍，再延长 3 拍，所以应该弹 6 拍。 }
\markup { 实际演奏中，弹奏的时间可以介于 3 ~ 6 拍之间。 }