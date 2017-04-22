 \version "2.18.2"

left_tone = \relative c {  << { g'1 } { c, }  >> }

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  g2-5 f8[ e] d[ c] |
  g'2 f8[ e] d[ c] |
  e8-3[ f] g4 f e |
  d4 g e c |\break
  
  g'2 f8[ e] d[ c] |
  g'2 f8[ e] d[ c] |
  e8[ f] g4 f e |
  d4 g c,2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature

  << { g'1_1 } { c,_5 }  >> |
  \left_tone |
  \left_tone |
  \left_tone |\break
  
  \left_tone |
  \left_tone |
  \left_tone |
  \left_tone |\bar"|."
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
    title = "风笛手来了"
    subtitle = "（弥赛特舞曲）"
    composer = "巴 赫原曲"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup {  译注：弥赛特舞曲又称风笛舞曲，是一种带有持续低音、具有牧歌特性的乐曲。此曲选自巴赫的《英国组曲》。}
