 \version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  c4-5 c g-2 g |
  a4 a g2 |
  c4 c g g  |
  a4 a b2 |\break
  
  c4 c g g |
  a4 a g2 |
  f4-1 a-3 g c |
  a4 b c2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature

  c'4_1 c g_4 g |
  a4 a g2 |
  c4 c g g |
  a4 a b2 |\break
  
  c4 c g g |
  a4 a g2 |
  f4_5 a_3 g c |
  a4 b c2 |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "复     习"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "健身操"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

