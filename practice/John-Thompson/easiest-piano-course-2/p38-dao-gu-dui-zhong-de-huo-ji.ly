\version "2.18.2"
% 《约翰•汤普森 简易钢琴教程 2》 P38

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
  <f a c>2_1_3_5 r4 a8_3 bes |
  c4 c c r |
  q2_1_3_5 r2 |
  <f, bes c>2_1_2_5 r2 |\break
  
  <f a c>2 r4 a8[_3 bes] |
  c4 c c r |
  q2 r2 |
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

