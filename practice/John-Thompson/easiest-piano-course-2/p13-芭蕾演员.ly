\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4
  \numericTimeSignature
  
  f,4-4 d-2 f |
  e4-3 d c |
  f4 d f |
  e4 d c | \break
  
  f4 e f |
  g4 f d |
  c2.~ |
  c2 f4 | \break
  
  d4 ees^\markup { \rounded-box 你能够自己找到这个黑键吗？ } d |
  R2. |
  c4 d c |
  R2. |
  c4 f-4 d |
  e4 f g |
  f2.~ |
  f2. |\bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 3/4
  \numericTimeSignature

  a'2._3 |
  bes2. |
  a2. |
  bes2. |\break
  
  a2. |
  bes2. |
  a2.~ |
  a2 r4 |\break
  
  R2. |
  g4_4 a bes |
  R2. |
  f4_5 g a |
  R2. |
  bes2._2 |
  a2.~ |
  a2. |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "调     号"
  subtitle = "F大调"
}
\markup { \vspace #1 }
\markup { 降记号或升记号出现在谱号的后面时，就成了调号。}
\markup { 这首小曲中所有的 B 音都应当弹作 \concat{\super\flat B}，它是F大调。}
\markup { \vspace #1 }

\score {
  \header {
    title = "芭蕾演员"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
