 \version "2.18.2"


upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \numericTimeSignature
  
  R2. |
  c,4-1 ees-3 g |
  c2._2_\markup { 左手跨越 } |
  g2.-5 |
  ees4-3 d c |
  ees d c |\break
  
  g'2. |
  b,2. |
  R2. |
  c4 e g |
  c2._2_\markup { 左手跨越 } |
  g2. |\break
  
  e4 g e |
  d4 g d |
  c2.~ |
  c4 r r |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  \numericTimeSignature

  c4_5 ees_3 g |
  R2. |
  R2. |
  R2. |
  g2. |
  fis2. |\break
  
  g2.~ |
  g2. |
  c,4 e^\markup { \box {注意这个音！} } g |
  R2. |
  R2. |
  R2. |\break
  
  g2. |
  f2. |
  e2. |
  c4 r r |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "分  解  和  铉"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "爬  山"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


