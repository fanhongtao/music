\version "2.18.2"


upper_one = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4

  \phrasingSlurUp
  e,4-3\( e |
  g4-5 c,-1 |
  d8-2 e f4 |
  e2\) |\break
}

upper_two =  \relative c'' {
  \clef treble
  \key c \major
  \time 2/4
  \phrasingSlurUp
  
  e,8-3\( [ f] e [ f] |
  g4 c, |
  d8 e d4 |
  c2\) |\bar "|."
}

lower_one = \relative c {
  \clef bass
  \key c \major
  \time 2/4

  c2_5 |
  e2_3 |
  g2 |
  c,2 |\break
}

lower_two = \relative c {
  \clef bass
  \key c \major
  \time 2/4
  
  c2_5 |
  e2 |
  f8 g f4 |
  e2 |\bar "|."
}

\paper{
  print-all-headers=##t
}

\header {
  title = ##f
  subtitle = \markup { \abs-fontsize #20 "乐    句" }
}
\markup { \vspace #1 }


\layout {
  indent = 0\cm
  ragged-last = ##f
}

\score {
  \header {
    title = "旋律"
    subtitle = "第一乐句"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper_one
    \new Staff = "lower" \lower_one
  >>
}

\score {
  \header {
    subtitle = "第二乐句"
  }
  \layout {
    \context {
      \Staff
      \omit KeySignature
      \omit TimeSignature
    }
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper_two
    \new Staff = "lower" \lower_two
  >>
}

\markup { 音乐像说话一样，被划分成一个一个句子，不过音乐的句子叫做乐句。 }
\markup { 上面的曲例是由两个乐句组成的。有时第二乐句比第一乐句弹得强些，有时第二乐句比第一乐句弹得弱些。}
\markup { 可千万不要把两个乐句弹成一样强弱。 }
\markup { 你认为这第二乐句怎样弹好呢？强一点或者弱一点都可以，但是要凭你自己的感觉去弹。} 
\markup { 自始至终要一个乐句一个乐句地，而不要一个音一个音地去弹。这样，你弹出的效果就会更符合音乐的意图。 }
\markup { \vspace #1 }
\markup { 参考：}
\markup { 1、\with-url #"http://lilypond.org/doc/v2.19/Documentation/notation/expressive-marks-as-curves#phrasing-slurs" {
    Phrasing slurs
  }
}  
\markup { 2、\with-url #"http://lilypond.org/doc/v2.18/Documentation/learning/within_002dstaff-objects" {
    控制方向
  }
}
\markup { 3、\with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/line-length" {
    Line Length
  }
}
\markup { 4、\with-url #"http://lsr.di.unimi.it/LSR/Item?id=123" {
    Removing time signature and bar lines
  }
}

\markup { \vspace #1 }
\markup { 由于全局的 title 会的各个 score 中都显示，所以这里使用 subtitle 来显示标题（“乐句”二字）。 }
