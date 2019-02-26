\version "2.18.2"

upperA = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
  \tempo "Allegro 快板"
  
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

upperB = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
  \dynamicUp
  
  R1 |
  R1 |
  a4_1_. g2_2_> e4_4_. |
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


lowerA = \relative c {
  \clef bass
  \key g \major
  \time 4/4
  
  <b' d>2.-2-4--\mf q4-. |
  q2.-- q4-. |
  g4-. a2-- ais4-3-. |
  <g b>4-1-4-. g4( a ais) |\break
  
  <b d>2.-- q4-. |
  q2.-- q4-. |
  cis4-3-. cis2-- cis4-. |
  c!1-2 |\break
  
  <b d>2.--\mf q4-. |
  q2.-- q4-. |
  g4-. a2-- ais4-. |
  <g b>4-. g4( a b) |\break
  
  g2\f <g b>4 r \clef treble |
  g'2 <g b>4 r \clef bass |
  cis,4-3-.\ff cis2-- c!4-. |
  b2-1(\< <d e>4-3-4-.\!) r4 |\bar"|."
}

lowerB = \relative c {
  \clef bass
  \key g \major
  \time 4/4
  \dynamicUp
  
  g'2._1-- fis4_2-. |
  e2._3-- d4_4-. |
  <c e>4-. q2-- q4-. |
  <g d'>4_. r4 r2 |\break
  
  g'2.-- fis4-. |
  e2.-- d4-. |
  <a g'>4-. q2-- q4-. |
  <d fis>2_2_4( d,2) |\break
  
  g'2.-- fis4-. |
  e2.-- d4-. |
  <c e>4-. q2-- q4-. |
  <g d'>4_. r4 r2 |\break
  
  c2 g4 r |
  c'2 g4 r |
  <a, g'>4_1_5-. q2-- <d fis>4-. |
  <g, d'>2_2_5( g'4_1-.) r4 |\bar"|."
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
  <<
    \new GrandStaff <<
      \new Staff = "upper" \upperA
      \new Staff = "lower" \upperB
    >>
    \new GrandStaff <<
      \new Staff = "upper" \lowerA
      \new Staff = "lower" \lowerB
    >>
  >>
  \layout { }
  \midi { }
}
