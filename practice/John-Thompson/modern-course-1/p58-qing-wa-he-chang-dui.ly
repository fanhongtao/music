\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P58

\markup { \fill-line { "双 手 交 叉" } }

keyTime = {
  \key g \major
  \time 3/4
}

upper_hand = \relative c'' {
  \clef treble
  \key g \major
  s1 s4 \bar "|"
  s4 g4-1 a-2 \bar"" b-3 c-4 d-5 \bar "||"
}

lower_hand = \relative c {
  \clef bass
  \key g \major
  
  \stemUp
  g4-1_\markup {
    \box \column {
      \line { 第一位置 }
      \line { “小青蛙” }
    }
  }^\markup { 右手从上方越过 }
  a-2 b-3 c-4 \bar"" d-5
  
  \stemDown
  <\parenthesize fis>4-\parenthesize \tweak ParenthesesItem.font-size #-2 _5
  g_5_\markup {
    \box \column {
      \line { 第二位置 }
      \line { “老青蛙” }
    }
  }
  a_4 b_3 c_2 \bar"" d_1
}

\markup {\fill-line {
\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper_hand
    \new Staff = "lower" \lower_hand
  >>
  \layout { }
}
} }

\markup { \vspace #1 }
\markup { 弹乐曲前，先将双手放在G大调位置上（即第一手位），然后右手交叉到第二手位。练到能自然交叉。 }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "M.M. " \note-by-number #2 #0 #UP "= 76 - " \note-by-number #1 #1 #UP " = 50" }
  
  \once \override DynamicText.X-offset = #-2.5
  g8-1[\p_\markup {小青蛙} a-2] b-3[ c-4] d4-5 |
  d8-5[ c-4] b-3[ a-2] g4-1 |
  a8-2 b-3 a4-2 d-5 |
  b2-3 g4-1 |\break
  
  \clef bass g,,8-1[\f_\markup {\halign #-2 老青蛙} a-2] b-3[ c-4] d4-5 |
  d8-5[ c-4] b-3[ a-2] g4-1 |
  a8-2 b-3 a4-2 d-5 |
  g,2.-1 |
  \clef treble a''8-2[\p_\markup {\halign #-2 小青蛙} b-3] c-4[ b-3] a4-2 |\break
  
  b8-3[ c-4] d-5[ c-4] b4-3 |
  \clef bass a,,8-2[\f_\markup {\halign #-2 老青蛙} b-3] c-4[ b-3] a4-2 |
  b8-3[ c-4] d-5[ c-4] b4-3 |
  \clef treble g''8-1[\p_\markup {\halign #-2 小青蛙} a-2] b-3[ c-4] d4-5 |
  d8-5[ c-4] b-3[ a-2] g4-1 |\break
  
  a8-2 b-3 a4-2 d-5 |
  g,2.-1 |
  b8-3[\p_\markup {\halign #-2 小青蛙} c-4] d-5[ c-4] b4-3 |
  \clef bass b,8-3[\f_\markup {\halign #-2 老青蛙} c-4] d-5[ c-4] b4-3 |
  \clef treble
  \ottava #1
  b''8-3[\ff_\markup {\halign #-2.5 齐唱} c-4] d4-5 b-3 |
  g2.-1
  \ottava #0
  |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  g'4_5 <b d>_1_3 q_1_3 |
  g4_5 q_1_3 q_1_3|
  fis4_5 <c' d>_1_2 q_1_2 |
  g4_5 <b d>_1_3 q_1_3 |\break
  
  g4_5 q_1_3 q |
  g4_5 q_1_3 q |
  fis4_5 <c' d>_1_2 q |
  g4_5 <b d>_1_3 q |
  fis4_5 <c' d>_1_2 q |\break
  
  g4_5 <b d>_1_3 q |
  fis4_5 <c' d>_1_2 q |
  g4_5 <b d>_1_3 q |
  g4_5 q_1_3 q |
  g4_5 q_1_3 q |\break
  
  fis4_5 <c' d>_1_2 q |
  <g b>2._3_5 |
  <g d'>2._1_5 |
  <g, d'>2._1_5 |
  b8_3 c_2 d4_1 b_3 |
  g2._5 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "青 蛙 合 唱 队"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
