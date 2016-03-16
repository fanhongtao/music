\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  c4-4 b a g |
  c4 r r2 |
  g4 a b c |
  b4 r r2 |\break
  
  g4 a b a |
  g4 r r2 |
  b4-3 g a b |
  c1 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature

  R1 |
  c'4_1 b a g |
  c4 r r2 |
  g4_4 a b c |\break
  
  b4 r r2 |
  g4 a b a |
  g4 r b_2 g_4 |
  c1 |\bar"|."
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
    title = "跟着小队长"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
