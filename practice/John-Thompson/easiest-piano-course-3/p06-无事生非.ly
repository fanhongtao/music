\version "2.18.2"


upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \slurUp
  
  \override DynamicText.X-offset = #-4.2
  e,4-3(\mf_"(中强)"^\markup { \halign #-9.25 \abs-fontsize #12 第一乐句 } e e |
  f4 e f |
  g4 e c) |\break
  
  e4(\mp_"(中弱)"^\markup { \halign #-9.75 \abs-fontsize #12 第二乐句 } e e |
  f4 e f |
  g2.) |\break
  
  \override DynamicText.X-offset = #-3
  e4(\f_"(强)"^\markup { \halign #-9.75 \abs-fontsize #12 第三乐句 } e e |
  f4 e f |
  g4 e c) |\break
  
  e4(\p_"(弱)"^\markup { \halign #-9.75 \abs-fontsize #12 第四乐句 } e e |
  f4 f8[ e] f[ d] |
  c2.) |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  
  c2._5 |
  d2. |
  e2. |\break
  
  c2. |
  d2. |
  e2. |\break
  
  c2. |
  d2. |
  e2. |\break
  
  c2. |
  d2 f4 |
  e2. |\bar "|."
}

\paper{
  print-all-headers=##t
}

\header {
  title = "四 个 乐 句"
}
\markup { \vspace #1 }
\markup { 这首乐曲有四个乐句。 }
\markup { 注意每个乐句有不同的标记。}
\markup { 通常作曲家会指出应如何弹奏每一乐句。在没有标明表情记号的情况下，可根据自己的感觉弹奏。}
\markup { \vspace #1 }

\score {
  \header {
    title = "无 事 生 非"
    composer = "民 歌"
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
\markup { 要始终保持平稳，尤其是速度。 }
