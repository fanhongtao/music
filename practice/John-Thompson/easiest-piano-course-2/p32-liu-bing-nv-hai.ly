\version "2.18.2"
% 《约翰•汤普森 简易钢琴教程 2》 P32

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \numericTimeSignature
  
  R2. |
  r4 <b, d>-1-3 q |
  R2. |
  r4 <c d>-2-3 q |\break
  
  R2. |
  r4 q q |
  R2. |
  r4 <b d> q |
  R2. |
  r4 q q |\break
  
  R2. |
  r4 <c d> q |
  R2. |
  r4 q q |
  R2. |
  r4 <b d> q |\bar"|."
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


