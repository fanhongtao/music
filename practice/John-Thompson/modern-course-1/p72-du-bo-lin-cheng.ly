\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P72

keyTime = {
  \key g \major
  \time 6/8
}

resumeStaff = {
  \set Timing.measureLength = #(ly:make-moment 1/32)
  s32 % Add a wee bit of staff before the clef!
  \unset Timing.measureLength
  \bar ""
  % \cadenzaOff \startStaff % Resume bar count and show staff lines again
}

showClefKey = {
  \once \override Staff.Clef.break-visibility = #all-visible
  \once \override Staff.KeySignature.break-visibility = #all-visible
}

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  g4-1_\markup { \box " 第一位置 " } a-2 b-3 \bar "" c-4 d-5 
  <\parenthesize e>4-\parenthesize \tweak ParenthesesItem.font-size #-2 -5
  \bar "|"
  
  \resumeStaff
  \showClefKey
  
  e,4-1_\markup { \box " 第二位置 " } fis-2 g-3 a-4 \bar "" b-5 \bar "||"
}

left_hand = \relative c {
  \clef bass
  \keyTime
  
  g4_5 a_4 b_3 c_2 d_1 s
  
  \resumeStaff
  \showClefKey
  e,4_5 fis_4 g_3 a_2 b_1
}

\markup { \fill-line { "两种手位 —— 双手" } }
\markup {\fill-line {
  \score {
    \new PianoStaff <<
      \new Staff = "upper" \right_hand
      \new Staff = "lower" \left_hand
    >>
    \layout {
      \override Staff.TimeSignature #'stencil = ##f
    }
  }
} }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Lively M.M. " 4.=76
  \override DynamicText.X-offset = #-4.2
  
  g8-1\mf_\markup { \box " 第一位置 " } a-2 g-1 g-1 b-3 c-4 |
  d4-5 b8-3 d4-5 b8-3 |
  g8-1 a-2 g-1 g-1 b-3 d-5 |
  c8-4 b-3 a-2 a4.-2 |\break
  
  g8-1 a-2 g-1 g-1 b-3 c-4 |
  d4-5 b8-3 d4-5 b8-3 |
  g8-1 b-2 e-5 d-4 b-2 g-1 |
  b4-3 a8-2 g4-1 r8 |\bar"||"\break
  
  b4-5\f_\markup { \box " 第二位置 " } g8-3 b4-5 g8-3 |
  a8-4 g-3 fis-2 g-3 fis-2 e-1 |
  b'4-5 g8-3 b4-5 g8-3 |
  a8-4 g-3 fis-2 fis4.-2 |\break
  
  b4-5 g8-3 b4-5 g8-3 |
  a8-4 g-3 fis-2 g-3 fis-2 e-1 |
  b'8-5 a-4 g-3 a-4 g-3 fis-2 |
  g8-3 e-1 e e4. |\break
  
  g8-1\mf_\markup { \box " 第一位置 " } a-2 g-1 g-1 b-3 c-4 |
  d4-5 b8-3 d4-5 b8-3 |
  g8-1 a-2 g-1 g-1 b-3 d-5 |
  c8-4 b-3 a-2 a4. |\break
  
  g8-1 a-2 g-1 g-1 b-3 c-4 |
  d4-5 b8-3 d4-5 b8-3 |
  g8-1 b-2 e-5 d-4 b-2 g-1 |
  b4-3 a8-2 g4-1 r8 |\break
  
  b,4-3^>\< a8-2 g4-1 r8 |
  R2. |
  b''4-3-> a8-2 g4-1\! r8 |
  \once \override DynamicText.X-offset = #0
  \ottava #1 g'4->-.\ff \ottava #0 r8 r4 r8 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  <g d'>2._1_5 |
  q2._1_5 |
  q2._1_5 |
  q2._1_5 |\break
  
  q2._1_5 |
  q2. |
  q2. |
  q2. |\break
  
  <e b'>2._1_5 |
  q2._1_5 |
  q2._1_5 |
  q2._1_5 |\break
  
  q2. |
  q2. |
  q2. |
  q2. |\break
  
  <g d'>2. |
  q2. |
  q2. |
  q2. |\break
  
  q2. |
  q2. |
  q2. |
  q2. |\break
  
  R2. |
  \clef treble b''4_3-> a8_4 g4_5 r8 |
  R2. |
  \clef bass \ottava #-1 g,,,4_._> \ottava #0 r8 r4 r8 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "都 柏 林 城"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
