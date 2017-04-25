\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  r4 g-5 fis e |
  d4 c r2 |
  r4 g' fis e |
  d4 c r2 | \break
  
  r4 g'-5 e-3 r |
  r4 fis-4 d r |
  r4 g e r |
  r4 fis d r | \break
  
  r1 |
  e1-3 |
  d1~ |
  d4 r r2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature

  g'4_5 r r2 |
  r2 b4_3 a |
  g4 r r2 |
  r2 b4 a |\break
  
  g4 r r c_2 |
  a4_4 r r b_3 |
  g4 r r c |
  a4 r r b |\break
  
  g1 |
  c1_2 |
  b1~ |
  b4 r r2 |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "升 记 号"
}
\markup { \vspace #1 }
\markup { 一个音符前有个升记号(\sharp)时，请弹这个音右边最近的黑键。}
\markup { \vspace #1 }

\score {
  \header {
    title = "钟声响了"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup {  注：1、\concat{\super\sharp F} 读作“升F”（音“升fa”）}
\markup {  　　2、写在音符前的 \sharp 或 \flat 被称为“临时变音记号”，对同小节、同组、右侧 相同的音均有效。}
