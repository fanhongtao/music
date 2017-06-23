\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P44

\markup { \fill-line { "三  种  手  位" } }

upper_hand = \relative c'' {
  \clef treble
  \key c \major
  
  e,4-1_\markup { \box " 第一位置 " } f-2 g-3 a-4 \bar"" b-5 \bar "||"
  g4-1_\markup { \box " 第二位置 " } a-2 b-3\bar "" c-4 d-5 \bar "||" 
  b4-1_\markup { \box " 第三位置 " } c-1\bar "" d-3 f-4 g-5 \bar "||"
}

lower_hand = \relative c {
  \clef bass
  \key c \major
  
  c_5 d_4 e_3 f_2 \bar"" g_1 \bar "||"
  s1 s1 s2
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


upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \numericTimeSignature
  \tempo "Andante M.M." 4 = 104
  \override Glissando.style = #'dashed-line
  
  \once \override DynamicText.X-offset = #-4.2
  g4.-3\mp_\markup { \box " 第一位置 " } a8-4 g4-3 |
  e2.-1 |
  g4.-3 a8-4 g4-3 |
  e2.-1 |
  d'2-5^\markup { \box " 第二位置 " } d4-5 |
  b2.-3 |\break
  
  c2-4 c4 |
  g2.-1 |
  a2-2 a4 |
  c4.-4 b8-3 a4-2 |
  g4.-1 a8-2 g4-1\glissando |
  <<
    { \change Staff = "lower" e2.-3 }
    \new Voice { R2. }
  >> \change Staff = "upper" |\break
  
  a2-2 a4-2 |
  c4.-4 b8-3 a4-2 |
  g4.-1 a8-2 g4-1\glissando |
  <<
    { \change Staff = "lower" e2.-3 }
    \new Voice { R2. }
  >> \change Staff = "upper" |
  d'2-3^\markup { \box " 第三位置 " } d4 |
  f4-5 d-3 b-1 |\break
  
  c2.-2 |
  e2.-4\fermata |
  R2. |
  g,4-5 f-4 d-2 |
  c2.-1~ |
  c4 r r |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  \numericTimeSignature
  
  c4_5 e_3 g_1 |
  c,4_5 e_3 g_1 |
  c,4_5 e_3 g_1 |
  c,4_5 e g |
  c,4_5 f_2 g_1 |
  c,4 f_2 g |\break
  
  c,4_5 e_3 g_1 |
  c,4_5 e g \clef treble |
  r4 f'_2( c_5) |
  r4 f_2( c_5) |
  r4 e_3( c_5~) |
  \once \stemDown c2. |\break
  
  r4 f_2( c_5) |
  r4 f_2( c_5) |
  r4 e_3( c_5~) |
  \once \stemDown c2. |
  r4 \clef bass c,_5 f_2 |
  g4_1 f_2 d_4 |\break
  
  r4 c_5 e_3 |
  g2._1\fermata \clef treble |
  \dynamicUp
  c'4_1\p g_3 e_5 |
  r4 r \clef bass f,_2 |
  <e_3 c_5>2.~ |
  q4 r r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "平  安  夜"
    composer = "弗朗兹•格鲁伯"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
