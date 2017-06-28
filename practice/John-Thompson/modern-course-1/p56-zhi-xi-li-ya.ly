\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P56

\markup { \fill-line { \huge "两 种 手 位" } }

upper_hand = \relative c'' {
  \clef treble
  \key d \major
  \override Staff.TimeSignature #'stencil = ##f
  
  d,4_1_\markup { \box " 第一位置 " } e_2 fis_3 g_4 \bar "" a_5 \bar "||"
  
  e4_1_\markup { \box " 第二位置 " } fis_2 g_3 \bar "" a_4 b_5
}

lower_hand = \relative c {
  \clef bass
  \key d \major
  \override Staff.TimeSignature #'stencil = ##f
  
  d4_5 e_4 fis_3 g_2 \bar "" a_1 \bar "||"
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


keyTime = {
  \key d \major
  \time 6/8
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup{
    "Andante M.M.  " \note-by-number #3 #0 #UP = 72 - \note-by-number #2 #1 #UP = 46
  }
  
  fis,8-3[_\markup { 富有表情地 } fis-3 fis-3] g4-4 g8-4 |
  a8-5[ g-4 fis-3] e-2[ fis-3 g-4] |
  a8-5[ d,-1 g-4] fis4-3 e8-2 |
  d4.-1~ d4 r8 |\break
  
  fis8-3[ fis fis] g4-4 g8 |
  a8-5[ g-4 fis-3] e-2[ fis-3 g-4] |
  a8-5[ d,-1 g-4] fis4-3 e8-2 |
  d4.-1~ d4 r8 |
  r4 r8 d4-1 a'8-5 |
  a8-5[\> fis-3 a-5] a4-5 d,8-1\! |\break
  
  b'4-5_\markup { \box " 第二位置 " } a8-4 a-4[ g-3 fis-2] |
  fis4.-2 e4-1 r8 |
  fis8-3[_\markup { \box " 第一位置 " } fis-3 fis-3] g4-4 g8-4 |
  a8-5[ g-4 fis-3] e-2[ fis-3 g-4] |
  a8-5[ d,-1 g-4] fis4-3 e8-2 |
  d4.-1~ d4 r8 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \dynamicUp
  
  d4._5 e_4 |
  fis4._3 g_2 |
  fis4_3 g8_2 a4_1 g8_2 |
  fis8_3[ a_1 fis_3] d4_5 r8 |\break
  
  d4._5 e_4 |
  fis4._3 g_2 |
  fis4_3 g8_2 a4_1 g8_2 |
  fis4._3 d4_5 a'8_1 |
  a8_1[\< fis_3 a_1\!] r4 r8 |
  d,4._5 fis_3 |\break
  
  g4_2 fis8_3 fis_3[ e_4 d_5] |
  a'4._1~ a4 r8 |
  d,4._5 e_4 |
  fis4._3 g_2 |
  fis4_3 g8_2\> a4_1 g8_2 |
  fis8_3[ a_1 fis_3] d4_5\! r8 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "致 西 莉 亚"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
