\version "2.18.2"

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \numericTimeSignature
  
  c4-4 b a |
  g2. |
  g2. |
  g2. |
  c4 b a |
  g2. |
  g2. |
  g2. |\break
  
  c4 b a |
  g2. |
  c2. |
  c2. |
  c4 b a |
  g2. |
  b2. |
  c2. |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "新音的曲例"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "跳舞的袋鼠"
    subtitle = ##f
  }
  \new Staff \melody
  \layout { }
  \midi { }
}
