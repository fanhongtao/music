\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo "Allegro 快板"
  \override Hairpin.to-barline = ##f
  
  e,4-1_. r e_. r |
  g4-3_. g2_> a4-4( |
  e4-1) r e_. r |
  g4_. g2_> a4( |\break
  
  e4) r e_. r |
  g4_. g2_> a4-4\<( |
  e4-1\!) r <c d>-2-3_. r |
  <b d>1-1-3\mf |\break
  
  e4-1_.\mp r e_. r |
  g4-3_. g2_> a4( |
  e4) r e_. r |
  g4_. g2_> a4( |\break
  
  e4)\< r e_. r |
  g4_.\! g2_> a4-4( |
  e4-1) r d-2_. r |
  c1-1 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \dynamicUp
  
  <c g'>1_1_5 |
  R1 |
  q1 |
  R1 |\break
  
  q1|
  R1 |
  r2 fis4_2-. r |
  g1_1 |\break
  
  q1 |
  R1 |
  q1 |
  R1 |\break
  
  q1 |
  R1 |
  r2\> <f g>4_1_2-. r |
  <e g>2_1_3 c4\! r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "切  分  音"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "我喜欢“节奏”"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

