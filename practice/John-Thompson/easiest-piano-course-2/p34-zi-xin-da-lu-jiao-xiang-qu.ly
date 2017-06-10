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

  <g'_1 c,_5>1 |
  e1 |
  g2. f4 |
  e1 |
  <g_1 f_2 c_5>1~ |
  <g f c>1~ |
  q1 |
  <g e c>1 |\break
  
  <g c,>1 |
  e1 |
  g2. f4 |
  e1 |
  <g f c>1~ |
  q1 |
  <g e c>1 |
  
  \set Staff.ottavation = #"8vb"
  \once \override Staff.OttavaBracket.direction = #DOWN
  \set Voice.middleCPosition = #(+ 6 7)
  c,4 _\markup {
    \halign #0.2
    \column { 
      \line { 音符下方标有这个 }
      \line { 记号，表示要低八度弹奏。 }
    }
  }
  \unset Staff.ottavation
  \unset Voice.middleCPosition
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

