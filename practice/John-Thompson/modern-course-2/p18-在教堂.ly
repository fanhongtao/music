\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P18

keyTime = {
  \key c \major
  \time 4/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andante, sostenuto e semplice"
  \set fingeringOrientations = #'(left)
  \override Fingering.staff-padding = #'()
  \override Hairpin.to-barline = ##f
  
  <c,-2 e-4>2\p q |
  <c-2 f-5>2 <c-2 e-4> |
  <b-1 d-3>1 |
  c1-2 |\break
  
  <c-1 g'-5>2 q |
  <c-1 a'-5>2 <c g'> |
  <c-1 f-4>1\> |
  <c-1 e-3>1\! |\break
  
  <e-1 c'-5>2 q |
  \once \set fingeringOrientations = #'(right)
  <e-1 gis-3>2 q |
  <c-1 a'-5>1\> |
  \once \set fingeringOrientations = #'(right)
  <cis-2 e-3>1\! |\break
  
  <a-1 f'-5>2\mp q |
  <b-1 d-3>2 <b e> |
  <g-1 c-4>1\> |
  q\!\pp |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \set fingeringOrientations = #'(left)
  \set Staff.pedalSustainStyle = #'bracket
  
  <c-5 g'-2>2 \sustainOn q\sustainOff \sustainOn |
  <c-5 a'-1>2 \sustainOff \sustainOn <c-5 g'-2>\sustainOff \sustainOn |
  <f-3 g-2>1 \sustainOff \sustainOn |
  <e-4 g-2>1 \sustainOff \sustainOn |\break
  
  <c-5 e-3>2 \sustainOff \sustainOn q \sustainOff \sustainOn |
  <c-5 f-2>2 \sustainOff \sustainOn <c e> \sustainOff \sustainOn |
  <c-5 a'-1>1 \sustainOff \sustainOn <c-5 g'-2>1 \sustainOff \sustainOn |\break
  
  <c-5 g'-2>2 \sustainOff \sustainOn q \sustainOff \sustainOn |
  \once \set fingeringOrientations = #'(right)
  <c-5 bes'-1>2 \sustainOff \sustainOn q \sustainOff \sustainOn |
  <f-2 a-1>1 \sustainOff \sustainOn |
  <a,-5 g'-1>1 \sustainOff \sustainOn |\break
  
  d2_2  \sustainOff \sustainOn d \sustainOff \sustainOn |
  <g,-5 f'-1>2 \sustainOff \sustainOn q  \sustainOff \sustainOn |
  <c-4 f-1>1 \sustainOff \sustainOn |
  <c-4 e-2>1 \sustainOff \sustainOn \sustainOff |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "连 续 的 踏 板"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "在 教 堂"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
  \midi { }
}
