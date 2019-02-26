\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P34

upper = \relative c'' {
  \clef treble
  \key a \major
  \time 3/4
  \tempo \markup { "Andantino M.M. " \note-by-number #2 #0 #UP "= 60 - " \note-by-number #1 #1 #UP " = 50" }
  
  \once \override DynamicText.X-offset = #-5.2
  e2-5\mf cis4-3 |
  e2-5 r4 |
  cis2-3 a4-1 |
  cis2-3 r4 |\break
  
  b2-2 cis4-3 |
  d4-4 cis-3 b-2 |
  cis2-3 d4-4 |
  e2.-5 |\break
  
  e2-5 cis4-3 |
  e2-5 r4 |
  cis2-3 a4-1 |
  cis2-3 r4 |\break
  
  b2-2 cis4-3 |
  d4-4 b-2 cis-3 |
  a2-1 cis4-3 |
  a2.-1 |\break
  
  b2-2 cis4-3 |
  d4-4 cis-3 b-2 |
  cis2-3 d4-4 |
  e2-5 r4 |
  b2-2 cis4-3 |
  d4-4 cis-3 b-2 |\break
  
  cis2-3 d4-4 |
  e2-5 r4 |
  e2-5 cis4-3 |
  e2-5 r4 |
  cis2-3 a4-1 |
  cis2-3 r4 |\break
  
  b2-2 cis4-3 |
  d4-4 b-2 cis-3 |
  a2-1 cis4-3 |
  a2-1 r4 \clef bass |
  e,,2.-2~ |
  e2. |\break
  
  a2.-5~ |
  a2. |
  e4-2 r r |
  e4-2 r r |
  a2.-5~ |
  a4 r r |\bar"|."
}

lower = \relative c {
  \clef bass
  \key a \major
  \time 3/4
  \dynamicUp
  
  a'4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |\break
  
  a,4_5 d_2 e_1 |
  a,4_5 d_2 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |\break
  
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |\break
  
  a,4_5 d_2 e_1 |
  a,4_5 d_2 e_1 |
  a,4_5 cis_3 e_1 |
  <cis_3 a_5>2. |\break
  
  a4_5 d_2 e_1 |
  a,4_5 d_2 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 d_2 e_1 |
  a,4_5 d_2 e_1 |\break
  
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |\break
  
  a,4_5 d_2 e_1 |
  a,4_5 d_2 e_1 |
  a,4_5 cis_3 e_1 |
  <cis_3 a_5>2 r4 |
  a4_5\pp d_2 e_1 |
  a,4_5 d_2 e_1 |\break
  
  a,4_5 cis_3 e_1 |
  a,4_5 cis_3 e_1 |
  a,4_5 d_2 e_1 |
  a,4_5^\markup {\italic "rit."} d_2 e_1 |
  <cis_3 a_5>2.~ |
  q4 r r |\bar"|."
}

\header {
  title = "春 之 歌"
}
\markup { \vspace #1 }
\markup { A大调有三个升号: \concat{\super \sharp F}、 \concat{\super \sharp C}、 \concat{\super \sharp G}。 }
\markup { \vspace #1 }

\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
