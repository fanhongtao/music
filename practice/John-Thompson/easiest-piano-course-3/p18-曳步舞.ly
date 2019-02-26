\version "2.18.2"

upper = \relative c'' {
  \clef bass
  \key c \major
  \time 3/4
  \numericTimeSignature
  \tempo "Moderato 中板"
  
  R2. |
  g,4-2(\< gis-3 a-4\!) |
  R2. |
  g4(\< gis a\!) |\break
  
  R2. |
  g4(\< gis a\!) |
  R2. |
  R2. |\break
  
  R2. |
  g4-2(\< gis a\!) |
  R2. |
  g4-2(\< gis a\!) |\break
  
  R2. |
  g4(\< gis a\!) |
  R2. |
  R2. |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  \numericTimeSignature
  \dynamicUp
  \override Hairpin.to-barline = ##f
  
  c4_3_.\p r c_. |
  R2. |
  c4_.\p r c_. |
  R2. |\break
  
  c4_. r c_. |
  R2. |
  e4_1-. r c_3_.\> |
  d2._2 \! |\break
  
  c4_3_.\p r c_. |
  R2. |
  c4_.\p r c_. |
  R2. |\break
  
  c4_.\p r c_. |
  R2. |
  e4_1-. r d_2-.\> |
  c2.\! |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "三 音 连 线"
  subtitle = "落下 —— 衔接 —— 提起"
}
\markup { \vspace #1 }
\markup { 弹三音连线时，第一个音落下，第二个音用手指连贯地衔接，第三个音提起松开。 }
\markup { \vspace #1 }


\score {
  \header {
    title = "曳 步 舞"
    subtitle = "(布吉乌吉)"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

