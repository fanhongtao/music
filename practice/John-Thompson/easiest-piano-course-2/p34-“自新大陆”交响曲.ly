 \version "2.18.2"


upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  e,2.-3 g4 |
  g1 |
  e2. d4 |
  c1 |
  d2-2 e |
  g2. e4 |
  d1~ |
  d1 |\break
  
  e2. g4 |
  g1 |
  e2. d4 |
  c1 |
  d2 e |
  d2. c4 |
  c1~ |
  c4 r4 r2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature

  <c g'>1_1_5 |
  e1 |
  g2. f4 |
  e1 |
  <c f g>1~_1_2_5 |
  q1~ |
  q1 |
  q1 |\break
  
  <c g'>1 |
  e1 |
  g2. f4 |
  e1 |
  <c f g>1~ |
  q1 |
  <c e g>1 |
  
  \ottava #-1
  c,4 _\markup {
    \halign #0.2
    \column { 
      \line { 音符下方标有这个 }
      \line { 记号，表示要低八度弹奏。 }
    }
  }
  \ottava 0
  r4 r2 |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "固定低音和弦"
  subtitle = "C 大 调"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "“自新大陆”交响曲"
    subtitle = "（主题）"
    composer = "德沃夏克"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


\markup { \vspace #1 }
\markup { 1. 如果是整个小节都低八度，则只需要使用简单的使用 "ottava" 命令 }
\markup { 详见 http://lilypond.org/doc/v2.18/Documentation/notation/displaying-pitches 中的 Ottava brackets }
\markup { 2. 简化 simultaneous expression （多个音同时按下）的写法 }
\markup { 详见 http://lilypond.org/doc/v2.18/Documentation/learning/combining-notes-into-chords }
\markup { 3. 字母 q 的说明见 http://lilypond.org/doc/v2.18/Documentation/notation/single-voice }

