\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \numericTimeSignature
  \tempo "快活地"
  
  R2.| R2.| R2.| R2.| R2.| R2.| R2.| R2.| \break
  d,2.-3| c2.| b2.~| b2.| d2.| c2 c4| b2.~| b2 \bar "" \break
  
  d4-1^\markup { \box \right-column {这里手的 位置改变了} }|
  g2-4 g4 | fis4-3^\markup { \box \right-column{不要忘记：在这首小曲中， 所有的F音都应当升高半音。}} d fis |
  g2 g4 | d2 d4 | g2 g4 |\break
  
  fis4 e fis | g2 g4 | d2 d4 | g2 g4 | fis4 e fis |\break
  g2 g4 | d2 e4 | R2. | R2. | R2. | R2. |\bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4
  \numericTimeSignature

  b'2._3| a2.| g2.~| g2.| b2.| a2 a4| g2.~| g2.|\break
  b2._3 | a2.| g2.~| g2.| b2.| a2 a4| g2.~| g2 \bar "" \break
  
  r4|
  b2._3| c2._2| b2. | R2. | b2. |\break
  
  c2. | b2. | R2. | b2. | c2. |\break
  b2. | R2. | b2. | a2. | g2.~ | g2. |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "调     号"
  subtitle = "G大调"
}
\markup { \vspace #1 }
\markup { 这首小曲的调号中标有升记号，它表示所有的 F 音都应当弹作 \concat{\super\sharp F}，这是G大调。}
\markup { \vspace #1 }

\score {
  \header {
    title = "三只瞎老鼠"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
