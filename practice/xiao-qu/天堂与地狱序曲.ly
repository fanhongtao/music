\version "2.18.2"

keyTime = {
  \key c \major
  \time 2/4
  \numericTimeSignature
}


upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Presto"
  \override Hairpin.to-barline = ##f
  
  r4 g |
  c2 |
  d8 f e d |
  g4 g |
  g8 a e f |\break
  
  d4 d |
  d8 f e d |
  c8 c' b a |
  g8 f e d |\break
  
  c2 |
  d8 f e d |
  g4 g |
  g8 a e f |\break
  
  d4 d |
  d8 f e d |
  c8 g' d e |
  c4 c' |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  
  r2 |
  r8 <g' c e > r q |
  r8 <f a f'> r q |
  r8 <g c e > r q |
  r8 q r q |\break
  
  r8 <f a f'> r q |
  r8 q r q |
  <g c e >8 r r4 |
  <f a f'>2 |\break
  
  r8 <g c e > r q |
  r8 <f a f'> r q |
  r8 <g c e > r q |
  r8 q r q |\break
  
  r8 <f a f'> r q |
  r8 <f a f'> r q |
  <g c e >8 r <f a f'>4 |
  <g c e >8 r <f a f'>4 |\bar "|."
}

foot = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  
  r2 |
  c4 c |
  g4 g |
  c4 c |
  c4 c |\break
  
  g4 g |
  g4 g |
  c8 r r4 |
  g2 |\break
  
  c4 c |
  g4 g |
  c4 c |
  c4 c |\break
  
  g4 g |
  g4 g |
  c4 g |
  c8 r c4 |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "天堂与地狱序曲"
    composer = "奥芬巴赫   曲"
  }
  <<
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
    \new Staff = "lower" \foot
  >>
  \layout {
    indent = 0\cm
  }
  \midi { }
}

\markup { \vspace #1 }
\markup { 双排电子琴附赠曲谱中的曲子  }
