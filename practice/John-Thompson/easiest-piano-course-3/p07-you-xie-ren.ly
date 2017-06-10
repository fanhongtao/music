\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 2/4
  \numericTimeSignature
  \tempo "Allegretto 小快板"
  
  b8-.-3[ b8-. b8-. b8-.] |
  b8-. b8-. d4 |
  c8-.-4 c8-. a4 |
  b8-.-3 b8-. g4 |\break
  
  b8-.-3[ b8-. b8-. b8-.] |
  b8-.[ b8-.] d8-.-5 c8-. |
  b8-.[ d8-. c8-.-4 a8-.-2] |
  g4 r |\bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 2/4
  \numericTimeSignature
  
  <d'_1 g,_5>2 |
  q2 |
  <d-1 fis,_5>2 |
  <d g,>2 |\break
  
  q2 |
  q2 |
  <d g,>4-. <d fis,>4-. |
  b8-._3[ d-._1 g,-._5] r |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "手 腕 断 奏 （跳音）"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \header {
    title = "有 些 人"
    subtitle = ##t
    composer = "斯蒂芬•福斯特原曲"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
