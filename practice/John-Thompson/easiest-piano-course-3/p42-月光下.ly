\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key ees \major
  \time 3/4
  \tempo "Andante 行板"
  \override Hairpin.to-barline = ##f
  
  g2-3\p g4 |
  f4-2 g f |
  ees2.-1~ |
  ees4\< r g-3\! |
  bes2-5\mf bes4 |
  aes4-4\> bes aes\! |\break
  
  g2.~ |
  g4 r r |
  bes2-5\mf bes4 |
  aes2-4 aes4 |
  g2-3 g4 |
  f4-2\< g aes\! |\break
  
  bes2 bes4 |
  aes2 aes4 |
  g2\> g4( |
  <d f>2-1-2)\! r4 |
  g2-3\p g4 |
  f4 g f |\break
  
  ees2.~ |
  ees4\< ees f\! |
  g2_\markup { \italic rit. } g4 |
  f4\> g f |
  ees2.~ |
  ees4\! r r |\bar"|."
}

lower = \relative c {
  \clef bass
  \key ees \major
  \time 3/4
  
  ees4_5 g_3 bes_1 |
  aes4_2 bes aes |
  g4_3 bes_1 g |
  ees4 g bes |
  g4_3 bes g |
  f4_4 bes f |\break
  
  ees4_5 g bes |
  ees,4 g bes |
  g4_3 bes g |
  f4_4 bes f |
  ees4_5 bes' ees, |
  aes4_2 g f |\break
  
  g4_3 bes g |
  f4_4 bes f |
  ees4_5 bes' ees,( |
  bes'2_1) r4 |
  ees,4 bes' ees, |
  aes4 bes aes |\break
  
  g4 bes g |
  ees4 g aes |
  bes4 ees, bes' |
  aes4 bes aes |
  g4 bes g |
  ees4 r r |\bar"|."
}

\header {
  title = "月 光 下"
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

