\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  % \numericTimeSignature
  \tempo "Animato 生机勃勃"
  
  \partial 4 b8-3\mp c |
  d4-5( b) b |
  b4-3( a) a8 b |
  c4-4( a) d |
  b2 b8 c |\break
  
  d4( b) b |
  b4( a) a8 b |
  c4\>( a) d\! |
  g,2 b8\mp c |
  d4( b) b |
  b4( a) a8 b |\break
  
  c4( a) d |
  b2 b8 c |
  d4(\mp b) b |
  b4( a) a8 b|
  c4( a) d |
  g,2 \bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4
  % \numericTimeSignature
  
  \partial 4 r4 |
  <g' b d>2._1_3_5 |
  <fis c' d>2._1_2_5 |
  q2. |
  <g b d>2. |\break
  
  q2. |
  <fis c' d>2. |
  q2. |
  <g b d>2. |
  g4( b) d |
  fis,4( c') d |\break
  
  fis,4( c') d |
  g,4( b d) |
  g,4( b) d |
  fis,4( c') d |
  fis,4( c') d |
  <g, b>2 \bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "和 弦 的 形 式"
  subtitle = ##f
}
\markup { \vspace #1 }

\score {
  \header {
    title = "古老的曲调"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

