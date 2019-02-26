\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  \partial 4 r4 |
  r2 d,4-2 e |
  d4-2 b-1^\markup { \box B } r2 |
  r1 |
  r1 |\break
  
  r2 d4-2 e |
  d4 b r2 |
  r1 |
  r2 r4 \bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature

  \partial 4 g'8_5 a |
  b4_3 d_\markup { \box D } r2 |
  r2 g,4_5 a |
  b4 b a g |
  a2. g8 a | \break
  
  b4_3 d r2 |
  r2 g,4 a |
  b4 b a a |
  g2. \bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "加线上的B音和D音"
}
\markup { \vspace #1 }
\markup { 和中央C一样，B音和D音也可以记在高音谱表或低音谱表上。 }
\markup { \vspace #1 }

\score {
  \header {
    title = "噢，苏珊娜"
    subtitle = ##f
    composer = 斯蒂芬·福斯特原曲
  }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
