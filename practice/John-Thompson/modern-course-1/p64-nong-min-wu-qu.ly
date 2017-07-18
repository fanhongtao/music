\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P64

keyTime = {
  \key e \major
  \time 3/4
}

\markup { \vspace #1 }
\markup { E大调有四个升号: \concat{\super \sharp F}、 \concat{\super \sharp C}、 \concat{\super \sharp G}、 \concat{\super \sharp D}。 }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "节奏鲜明的   M.M. " 4=72-120
  
  \partial 4 b8-5\f gis-3 |
  e4-1_. e-1_. b'8-5 gis-3 |
  e4-1_. e-1_. gis8-3 b-5  |
  a4-4 a8-4[ b-5] a-4 gis-3 |
  fis2-2 a8-4 gis-3 |\break
  
  fis4-2_. fis-2_. a8-4 gis-3 |
  fis4-2_. fis-2_. fis8-2 a-4 |
  gis4-3_. gis8-3[ a-4] gis-3 fis-2 |
  e2-1 e8-1 gis-3 |\break
  
  b4-5-. b-5-. e,8-1 gis-3 |
  b4-5-. b-5-. gis-3( |
  fis4-2_.) fis8-2[ gis-3] a-4 gis-3 |
  fis2-2 a4-4 |\break
  
  gis4-3_. gis8-3 a-4 gis4-3 |
  fis4-2_. fis8-2 gis-3 fis4-2 |
  e4-1_. e8-1[ gis-3] b-5 gis-3 |
  e2-1 \bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \partial 4 r4 |
  <e b'>2._1_5 |
  q2._1_5 |
  q2._1_5~ |
  q2. |\break
  
  q2._1_5 |
  q2._1_5 |
  q2._1_5~ |
  q2._1_5 |\break
  
  gis2._3 |
  gis2._3 |
  gis2._3~ |
  gis2._3 |\break
  
  b2._1 |
  a2._2 |
  gis2._3 |
  <e b'>2_1_5 \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "农 民 舞 曲"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
