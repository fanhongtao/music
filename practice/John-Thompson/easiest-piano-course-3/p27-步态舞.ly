\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
  % \numericTimeSignature
  \tempo "Allegro 快板"
  % \override Hairpin.to-barline = ##f
  
  b8-1\mf d-3->( d) e-4 d2-3 |
  g,8-1 b-3_>( b) c-4 b2-3 |
  R1 |
  R1 |\break
  
  b8-1 d-3->( d) e d2 |
  g,8-1 b-3_>( b) c b2 |
  R1 |
  b4-3( a-2) r2 |\break
  
  b8-1\mf d-3->( d) e d2 |
  g,8-1 b-3_>( b) c b2 |
  R1 |
  r2 r4 d,-4_. |\break
  
  ees8-2\f g_>( g) ees r4 d'-1-. |
  ees8-2 g->( g) ees r2 |
  b4-3-.\ff b->( b8) g a4_. |
  r2 g'4-5-. r4 |\bar"|."
}

lower = \relative c {
  \clef treble
  \key g \major
  \time 4/4
  % \numericTimeSignature
  \dynamicUp
  %\override DynamicText.X-offset = #-4.2
  
  R1 |
  R1 |
  a''4_1_. g2_2_> e4_4_. |
  d4_5_. g2._2 |\break
  
  R1 |
  R1 |
  a4_1_.\< g2_2_> e4_4_.\! |
  r2 \> fis4_3_. d_5_.\! |\break
  
  R1 |
  R1 |
  a'4_1_. g2_2_> e4_4_. |
  d4_. g2_> r4 |\break
  
  r2 d4_1 r |
  r2 d'4_1 r |
  R1 |
  g,2_3( b4_1-.) r4 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "教师和学生的四手联弹"
  subtitle = ##f
}
\markup { \vspace #1 }

\score {
  \header {
    title = "步 态 舞"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

