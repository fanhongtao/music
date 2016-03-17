\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4
  \numericTimeSignature
  
  c4-5 a-3 a2 |
  bes4-4 g g2 |
  f4 g a bes |
  c4 c c2 |\break
  
  c4 a a2 |
  bes4 g g2 |
  f4 a c c |
  a1 |
  g4-2 g g g |
  g4-2 a-3 bes2-4 |\break
  
  a4 a a a |
  a4-3 bes-4 c2-5 |
  c4 a a2 |
  bes4 g g2 |
  f4 a c c |
  a1 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 4/4
  \numericTimeSignature

  f1_5 |
  c'1_1 |
  a2 c2 |
  a2 c2 |\break
  
  f,1 |
  c'1 |
  a2 g2 |
  f1 |
  bes_2 |
  bes4_2 a_3 g2_4 |\break
  
  f1 |
  f4_3 g_4 a2_5 |
  f1 |
  c'1 |
  a2 g2 |
  f1 |\bar"|."
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
    title = "轻轻地划"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup {  注：1、这首小曲中所有的 B 音都应当弹作 \concat{\super\flat B}，它是F大调。}
