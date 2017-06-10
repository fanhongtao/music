 \version "2.18.2"


right_one = \relative c' {  << { e4 } { g }  >> }
right_two = \relative c' {  << { f4 } { g }  >> }

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \numericTimeSignature
  
  r4 << { e,4-1 } { g-3 }  >> \right_one |
  r4 \right_one \right_one |
  r4 << { f4-2 } { g-3 }  >> \right_two |
  R2. |\break
  
  r4 \right_one \right_one |
  r4 \right_one \right_one |
  r4 \right_two \right_two |
  R2. |
  r4 \right_one \right_one |
  r4 \right_one \right_one |\break
  
  r4 f-1 c'-5 |
  << { fis,2.-2 } { c'-5 \fermata }  >> |
  r4 << { e,4-1 } { g-3 }  >> \right_one |
  r4 \right_two \right_two |
  r4 \right_one \right_one |
  \right_one r4 r |\bar"|."
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