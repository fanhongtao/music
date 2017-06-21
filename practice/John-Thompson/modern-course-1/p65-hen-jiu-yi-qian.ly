\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P65

upper = \relative c'' {
  \clef treble
  \key d \major
  \time 4/4
  \numericTimeSignature
  \tempo "Andante"
  
  d,4-1 d8[ e-2] fis4-3 fis8-2[ g-3]^\markup { \box " 第二位置 " } |
  a4-4 b8-5[ a-4] fis2-2 |
  a4-4 g8-3[ fis-2] e2-1 |
  g4-4^\markup { \box " 第一位置 " } fis8-3[ e-2] d2-1 |\break
  
  d4-1 d8[ e-2] fis4-3 fis8-2[ g-3] |
  a4-4 b8-5[ a-4] fis2-2 |
  a4-4 g8-3[ fis-2] e4-1 fis8-3[ e-2] |
  d2-1~ d4 r |\break
  
  a'4-5 g8-4[ fis-3] e2-2 |
  g4-4 fis8-3[ e-2] d2-1 |
  a'4-5 g8-4[ fis-3] e2-2 |
  g4-4 fis8-3[ e-2] d2-1 |\break
  
  d4 d8[ e] fis4-3 fis8-2[ g-3] |
  a4-4 b8-5[ a-4] fis2-2 |
  a4-4 g8-3[ fis-2] e4-1 fis8-3[ e-2] |
  d2-1~ d4 r |\bar"|."
}

left_one = \relative c { d8[ a' fis a] }
left_one_f = \relative c { d8_5[ a'_1 fis_3 a_1] }
left_two = \relative c { cis8[ a' g a] }
left_two_f = \relative c { cis8_5[ a'_1 g_3 a_1] }

lower = \relative c {
  \clef bass
  \key d \major
  \time 4/4
  \numericTimeSignature
  
  \left_one_f \left_one |
  \left_one \left_one |
  \left_two_f \left_two |
  \left_one_f \left_one |\break
  
  \left_one \left_one |
  \left_one \left_one |
  \left_one_f \left_two |
  d8_5[ fis_3 a_1 fis_3] d4_5 r |\break
  
  \left_two_f \left_two |
  \left_one_f \left_one |
  \left_two_f \left_two |
  \left_one_f \left_one |\break
  
  \left_one \left_one |
  \left_one \left_one |
  \left_two \left_two |
  d8_5[ fis_3 a_1 fis_3] d4_5 r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "很 久 以 前"
    composer = "贝  利"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
