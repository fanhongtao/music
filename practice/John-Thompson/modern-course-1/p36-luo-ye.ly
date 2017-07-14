\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P36

keyTime = {
  \key d \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Moderato"
  
  r2\mp\< r4 d,-1_. |
  fis4-3_. a-5_.\! d2->_2_左手 | 
  d,8-1^右手([ e-2] fis-3[ g-4] a4-5) fis-3 |
  e2-2\> d-1\! |\break
  
  r2\< r4 d-1_. |
  fis4-3_. a-5_.\! d2->_2_左手 | 
  d,8-1^右手([ e-2] fis-3[ g-4] a4-5) fis-3 |
  e2-2\> d-1\! |\break
  
  r4\f e8-2([ fis-3] g-4[ fis-3] e4-2) |
  r4 fis8-3([ e-2] d-1[ e-2] fis4-3) |
  r4\p  e8-2([ fis-3] g-4[ fis-3] e4-2) |
  r4 fis8-3([ e-2] d-1[ e-2] fis4-3) |\break
  
  r2\< r4 d-1_. |
  fis4-3_. a-5_.\! d2->_2_左手 | 
  d,8-1^右手([ e-2] fis-3[ g-4] a4-5) fis-3 |
  e2-2\> d-1\! |\break
  
  d8-1([\ff e-2] fis-3[ g-4] a4-5) r |
  a8-5([ g-4] fis-3[ e-2] d4-1) r |
  <d fis>2-1-3\p q |
  <d' fis>1-1-3\pp |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  d4_5-. fis_3-. a_1-. r |
  r2 s2 |
  r2 r4 a_1 |
  g2_2 fis_3 |\break
  
  d4_5-. fis_3-. a_1-. r |
  r2 s2 |
  r2 r4 a_1 |
  g2_2 fis_3 |\break
  
  a1_1 |
  a1 |
  a1 |
  a1 |\break
  
  d,4_5-. fis_3-. a_1-. r |
  r2 s2 |
  r2 r4 a_1 |
  g2_2 fis_3 |\break
  
  d8_5([ e_4] fis_3[ g_2] a4_1) r |
  a8_1([ g_2] fis_3[ e_4] d4_5) r |
  <d a'>2_1_5 q |
  \clef treble <d' a'>1_1_5 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "落  叶"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
