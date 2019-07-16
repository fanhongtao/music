\version "2.18.2"

songName = "欢乐颂"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "【德】 贝多芬"
}

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=80
  \override Hairpin.to-barline = ##f
  
  e,4-3 e f g |
  g4 f e d |
  c4 c d e |
  e4. d8 d2 |\break
  
  e4 e f g |
  g4 f e d |
  c4 c d e |
  d4. c8 c2 |\break
  
  d4 d e c |
  d4 e8 f e4 c |
  d4 e8 f e4 d |
  c4-1 d-2 g,-1 e'-3( |\break
  
  e4) e f g |
  g4 f e d |
  c4 c d e |
  d4. c8 c2 |\break
  
  d4 d e c |
  d4 e8 f e4 c |
  d4 e8 f e4 d |
  c4 d g, e'( |\break
  
  e4) e f g |
  g4 f e d |
  c c d e |
  d4. c8 c2 |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  g'2 a |
  b2 g |
  e2 f |
  g2 f |\break
  
  g2 a |
  b2-1 g-2 |
  e2-3 d-4 |
  g2-1 e-3 |\break
  
  f2 g |
  f2 g |
  f2 g |
  e2-3 b4-5 g'-1 |\break
  
  g2-3 a |
  b2 g |
  e2 f |
  g2 e |\break
  
  f2-2 g |
  f2 g |
  f2 g |
  e2-3 b4_5 g'_1 |\break
  
  g2-3 a |
  b2 g |
  e2 f |
  g2 e |\bar "|."
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano"
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
  }
  \midi { }
}

