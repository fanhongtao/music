\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P33

\markup { \vspace #1 }
\markup { D大调有两个升号: \concat{\super \sharp F}、 \concat{\super \sharp C}。 }

keyTime = {
  \key d \major
  \time 2/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Moderato"
  
  a8-5( fis-3) fis4-3 |
  g8-4( e-2) e4-2 |
  d8-1( e-2 fis-3 g-4 |
  a8-5) a a4 |\break
  
  a8-5( fis-3) fis4-3 |
  g8-4( e-2) e4-2 |
  d8-1( fis-3 a-5) a( |
  fis2-3) |\break
  
  e8-2 e e e |
  e8-2 fis-3 g4-4 |
  fis8-3 fis fis fis |
  fis8-3 g-4 a4-5 |\break
  
  a8-5( fis-3) fis4 |
  g8-4 e-2 e4 |
  d8-1( fis-3 a-5) a( |
  fis2-3) |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  d4_5 a'_1 |
  g4_2 a_1 |
  fis4_3 a_1 |
  <d, fis>4_3_5 a'_1 |\break
  
  d,4_5 a'_1 |
  g4_2 a_1 |
  fis4_3 <e g>_2_4 |
  <d a'>2_1_5 |\break
  
  <g a>2_1_2 |
  q2 |
  <d a'>2_1_5 |
  q4_1_5 fis_3 |\break
  
  d4_5 a'_1 |
  g4_2 a_1 |
  fis4_3 <e g>_2_4 |
  <d a'>2_1_5 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "划  船"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
