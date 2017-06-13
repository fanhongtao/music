\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  % \numericTimeSignature
  \tempo "Allegro 快板"
  \override Hairpin.to-barline = ##f
  
  e,4-1_. r e_. r |
  g4-3_. g2_> a4-4( |
  e4-1) r e_. r |
  g4_. g2_> a4( |\break
  
  e4) r e_. r |
  g4_. g2_> a4-4\<( |
  e4-1\!) r << { c4-2_. } { d4-3_. }>> r4 |
  <b^1 d-3>1\mf |\break
  
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
  % \numericTimeSignature
  \dynamicUp
  
  <g'_1 c,_5>1 |
  R1 |
  <g c,>1 |
  R1 |\break
  
  <g c,>1|
  R1 |
  r2 fis4_2-. r |
  g1_1 |\break
  
  <g c>1 |
  R1 |
  <g c>1 |
  R1 |\break
  
  <g c>1 |
  R1 |
  r2\> << { g4_1-. } { f4_2-. } >> r4 |
  <g_1 e_3>2 c,4\! r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "切  分  音"
  subtitle = ##f
}
\markup { \vspace #1 }

\score {
  \header {
    title = "我喜欢“节奏”"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

