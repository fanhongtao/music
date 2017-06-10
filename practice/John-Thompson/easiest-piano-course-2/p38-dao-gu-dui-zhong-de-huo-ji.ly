 \version "2.18.2"


upper = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4
  \numericTimeSignature
  
  \partial 4 a8-3 g-2 |
  f4-1 f f r |
  r2 r4 f8 g |
  a4 a a8[ g] f[ g] |
  a4 g g a8 g |\break
  
  f4 f f r |
  r2 r4 f8 g |
  a4 c c8[ a] f[ g] |
  a4 g f \bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 4/4
  \numericTimeSignature
  
  \partial 4 r4 |
  <c'_1 a_3 f_5>2 r4 a8_3 bes |
  c4 c c r |
  <c_1 a_3 f_5>2 r2 |
  <c_1 bes_2 f_5>2 r2 |\break
  
  <c a f>2 r4 a8[ bes] |
  c4 c c r |
  <c a f>2 r2 |
  r4 bes a \bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "复      习"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \header {
    title = "稻谷堆中的火鸡"
    subtitle = ##t
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

