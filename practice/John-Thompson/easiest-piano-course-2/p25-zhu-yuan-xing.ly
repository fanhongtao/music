 \version "2.18.2"


upper = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4
  \numericTimeSignature
  
  c,4-1 e-3 |
  g2 |
  g8[ f] e[ d] |
  c2 |
  R2 |
  g'8[ g] e[ c]|\break
  
  R2 |
  g'8[ g] e[ c] |
  c8[ d] e[ f] |
  g2 |
  g8[ f] e[ d] |
  c2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 2/4
  \numericTimeSignature

  R2 |
  R2 |
  R2 |
  R2 |
  d'8_1[ d] b_3[ g] |
  R2 |\break
  
  d'8[ d] b[ g] |
  R2 |
  c,8_5_\markup { \box \right-column {这里手的 位置改变了。} }[ d] e[ f] |
  g2 |
  g8[ f] e[ d] |
  c2 |\bar"|."
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
    title = "祝 愿 星"
    composer = "德国民歌"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


