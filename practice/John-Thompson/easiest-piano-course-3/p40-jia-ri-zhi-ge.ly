\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key a \major
  \time 3/4
  \tempo "Animato 生气勃勃"
  
  \partial 4 cis8-3\mf( a-1 |
  e'2-5 cis8 a |
  e'2 cis8 a |
  e'2 d4-4 |
  b2-2) d8-4(\mp b-2 |\break
  
  e2 d8-4 b |
  e2 d8 b |
  e2 cis4 |
  a2) cis8(\mf a |\break
  
  e'2 cis8 a |
  e'2 cis8 a |
  e'2 d4 |
  a2\fermata) b4( |\break
  
  cis2\mf d8 cis |
  b2 cis4 |
  a2.~ |
  a4) r \bar"|."
}

lower = \relative c {
  \clef bass
  \key a \major
  \time 3/4
  
  \partial 4 r4 |
  a'4_5 cis_3 e_1 |
  a,4 cis e |
  gis,4_5 d'_2 e_1 |
  gis,4 d' e |\break
  
  gis,4 d' e |
  gis,4 d' e |
  a,4 cis_3 e |
  a,4 cis e |\break
  
  a,4_5 cis_3 e_1 |
  g,4_5 cis_2 e_1 |
  fis,4_5 a_3 d_1 |
  <f, a dis>2_1_3_5\fermata r4 |\break
  
  a4_5 cis_3 e |
  gis,4_5 d'_2 e |
  a,4_5 cis_3 e |
  a,4 r \bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "假 日 之 歌"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

