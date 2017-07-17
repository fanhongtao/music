\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P60

keyTime = {
  \key ees \major
  \time 3/4
}

\markup { \vspace #1 }
\markup { \concat{\super \flat E}大调有三个降号: \concat{\super \flat B}、 \concat{\super \flat E}、 \concat{\super \flat A}。 }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "Andante moderato M.M. " \note-by-number #2 #0 #UP "= 66 - " \note-by-number #1 #1 #UP " = 50" }
  
  g4-2 aes-3 bes-4 |
  f2-1 aes4-3 |
  g2-2 bes4-4 |
  f2-1 aes4-3 |\break
  
  g2-2 bes4-4 |
  f4-1 g-2 aes-3 |
  g2.-2~ |
  g2. |
  f4-1 g-2 aes-3 |\break
  
  f2-1 aes4-3 |
  g4-2 aes-3 bes-4 |
  g2-2 bes4-4 |
  a4-3 g-2 f-1 |
  a4-3 g-2 f-1 |
  bes2.-4 |\break
  
  aes2.-3 |
  g4-2 aes-3 bes-4 |
  f2-1 aes4-3 |
  g2-2 bes4-4 |
  f2-1 aes4-3 |
  g2-2 bes4-4 |\break
  
  f4-1 g-2 aes-3 |
  g2.-2~ |
  g2. |
  f4-1 g-2 aes-3 |
  f2-1 aes4-3 |
  g4-2 aes-3 bes-4 |\break
  
  g2.-2\fermata |
  aes4-3 bes-4 aes-3 |
  g4-2 f-1 aes-3 |
  g2.-2~ |
  g2. |
  <aes bes>2.-3-4 |\break
  
  q2.-3-4\pp |
  <g bes>2.-2-4~ |
  q2. |
  \once \override DynamicText.X-offset = #0.5
  \clef bass <aes, bes>2.-3-4\ppp |
  q2.-3-4 |
  <g bes>2.-2-4~ |
  q2. |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  ees'2._2 |
  d2._3 |
  ees2._2 |
  d2._3 |\break
  
  ees2._2 |
  d2._3 |
  ees2._2 |
  bes2._5 |
  d2._3 |\break
  
  bes2._5 |
  ees2._2 |
  bes2._5 |
  c2._4 |
  ees2._2 |
  d2._3 |\break
  
  
  bes2._5 |
  ees2._2 |
  d2._3 |
  ees2._2 |
  d2._3 |
  ees2._2 |\break
  
  d2._3 |
  ees2._2 |
  bes2._5 |
  d2._3 |
  bes2._5 |
  ees2._2 |\break
  
  <cis e>2._1_3\fermata |
  c!2._4 |
  d2._3 |
  ees2._2~ |
  ees2. |
  d2._3 |\break
  
  d2._3 |
  ees2._2~ |
  ees2. |
  d,2._3 |
  d2._3 |
  ees2._2~ |
  ees2. |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "小 波 比"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
