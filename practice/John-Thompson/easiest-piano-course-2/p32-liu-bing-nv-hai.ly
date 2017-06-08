 \version "2.18.2"


right_one = \relative c' {  << { b4 } { d }  >> }
right_two = \relative c' {  << { c4 } { d }  >> }

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \numericTimeSignature
  
  R2. |
  r4 << { b,4-1 } { d-3 }  >> \right_one |
  R2. |
  r4 << { c4-2 } { d-3 }  >> \right_two |\break
  
  R2. |
  r4 \right_two \right_two |
  R2. |
  r4 \right_one \right_one |
  R2. |
  r4 \right_one \right_one |\break
  
  R2. |
  r4 \right_two \right_two |
  R2. |
  r4 \right_two \right_two |
  R2. |
  r4 \right_one \right_one |\bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4
  \numericTimeSignature

  d4_4 e fis |
  g2. |
  g4 fis e |
  fis2. |\break
  
  d4 e g |
  fis2. |
  fis4 e d |
  e2. |
  d4 e fis |
  g2. |\break
  
  g4 fis e |
  fis2. |
  d4 e g |
  fis2. |
  d4 e fis |
  g2. |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "双       音"
  subtitle = "G 大 调"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "溜 冰 女 孩"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


