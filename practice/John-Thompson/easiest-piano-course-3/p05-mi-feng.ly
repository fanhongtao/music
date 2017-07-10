\version "2.18.2"


upper = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
  \numericTimeSignature
  \phrasingSlurUp
  
  d4-5(^\markup { \halign #-9.25 \abs-fontsize #12 第一乐句 } c b2 |
  a8-2 b c a g2) |\break
  
  b8-3([^\markup { \halign #-9.75 \abs-fontsize #12 第二乐句 } c d b] a-2[ b c a] |
  b8[ c d b] a[ b c a]) |\break
  
  d4-5(^\markup { \halign #-9.75 \abs-fontsize #12 第三乐句 } c b2 |
  a8-2[ b c a] g2) |\bar "|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 4/4
  \numericTimeSignature
  
  <g' d'>1_1_5 |
  q1 |\break
  
  q1 |
  q1 |\break
  
  q1 |
  q1 |\bar "|."
}

\paper{
  print-all-headers=##t
}

\header {
  title = "三 个 乐 句"
  subtitle = ##f
}
\markup { \vspace #1 }
\markup { 这是一首有三个乐句的小曲，试着用三种不同的方式去弹奏它。 }
\markup { 第一遍：第一乐句，很弱；第二乐句，稍强；第三乐句，还是稍强。}
\markup { 第二遍：第一乐句，中强；第二乐句，弱；第三乐句，很强。}
\markup { 第三遍：第一乐句，中强；第二乐句，稍弱；第三乐句，很弱。}
\markup { 选择一种你最喜欢的方式，那就是完全属于你自己的演奏了。}
\markup { \vspace #1 }

\score {
  \header {
    title = "蜜     蜂"
    subtitle = ##f
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
    ragged-last = ##f
  }
  \midi { } 
}

\markup { \vspace #1 }
\markup { 不要忘记每一小节第一拍要弹重一些。 }

