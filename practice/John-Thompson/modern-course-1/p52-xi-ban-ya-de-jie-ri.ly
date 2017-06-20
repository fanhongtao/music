\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P52

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4
  \numericTimeSignature
  \tempo "M.M." 4 = 66-132
  \override Hairpin.to-barline = ##f
  
  \once \override DynamicText.X-offset = #-4.2
  c,8-1[\mp d-2_-]~ d[ e-3] f4-4_. g-5_. |
  e1-3^> |
  c8-1[ d-2_-]~ d[ e-3] f4-4_. e-3_. |
  d1-2^> |\break
  
  c8-1[\< d-2_-]~ d[ e-3]\! f4-4_. d-2_. |
  e1-3 |
  g8-5[ f-4_-]~ f[ e-3] d4-2_.\> e-3_. |
  c1-1\! |\break
  
  c8-1[ d-2_-]~ d[ e-3] f4-4_. g-5_. |
  e1-3^> |
  c8-1[ d-2_-]~ d[ e-3] f4-4_. e-3_. |
  d1-2^> |\break
  
  c8-1[\< d-2_-]~ d[ e-3] f4-4_.\! c-1_. |
  d8-2[ e-3_-]~ e[ f-4] g4-5_. d-2_. |
  f8-4[ e-3_-]~ e[ d-2] e4-3_.\> c-1_. |
  f1-4^>\! |\break 
  
  g8-5[\mf f-4_-]~ f[ e-3] d4-2_. c-1_. |
  f2-4^> c-1 |
  g'8-5[ f-4_-]~ f[ e-3] d4-2_. c-1_. |
  f1-4^> |\break
  
  des8-2[\f ees-3_-]~ ees[ f-4] c4-1_. f-4_. |
  des8-2[\p ees-3_-]~ ees[ f-4] c4-1_. f-4_. |
  e8-3[\mf d-2_-]~ d[ c-1] g'4-5_. c,-1_. |
  f1-4 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 4/4
  \numericTimeSignature
  
  <a'_3 f_5>2 <a_3 f_5>4-. <a_3 f_5>-. |
  <bes_2 f_5>2 q4-. q-. |
  <bes_2 f_5>2 q4-. q-. |
  <a_3 f_5>2 q4-. q-. |\break
  
  <a_3 f_5>2 q4-. q-. |
  g2_4 c4_1-. g_4-. |
  b2_2 g4_4-. b_2-. |
  r4 bes!_2-. a_3-. g_4-. |\break
  
  <a_3 f_5>2 q4-. q-. |
  <bes_2 f_5>2 q4-. q-. |
  <bes_2 f_5>2 q4-. q-. |
  <a_3 f_5>2 q4-. q-. |\break
  
  <a_3 f_5>2 q4-. q-. |
  <bes_2 f_5>2 q4-. q-. |
  <bes_2 f_5>2 q4-. q-. |
  <a_3 f_5>2 q4-. q-. |\break
  
  <bes_2 f_5>2 q4-. q-. |
  <a_3 f_5>2 q4-. q-. |
  <bes_2 f_5>2 q4-. q-. |
  <a_3 f_5>2 q4-. q-. |\break
  
  <bes_2 f_5>2 <a_3 f_5>4-. q-. |
  <bes_2 f_5>2 <a_3 f_5>4-. q-. |
  <bes_2 f_5>2 q4-. q-. |
  <a_3 f_5>1 |\bar"|."
}

\header {
  title = "西 班 牙 的 节 日"
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
