\version "2.18.2"

songName = "虫儿飞"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
}

keyTime = {
  \key f \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=108
  \override Hairpin.to-barline = ##f
  
  a4 a8 a bes4 c |
  a2 g |
  f4 f8 f g4 a |
  a2 e |\break
  
  d4 a' g2 |
  d4 a' g2 |
  d4 a' g4. f8 |
  f1 |\break
  
  \ottava #1 a'4 a8 a bes4 c |
  a2 g |
  f4 f8 f g4 a |
  a2 e |\break
  
  d4 a' g2 |
  d4 a' g2 |
  d4 a' g4. f8 |
  f1 \ottava #0 |\break
  
  <a, d a'>2 \ottava #1 a'4 g |
  c2. bes8 a |
  g2. c8 bes |\break
  
  a4 bes8 c( c4) a |
  g2. f4 |
  d4 a' g4. f8 |
  c4 g' f2 |\break
  
  bes8[ a] bes[ a] f2 |
  bes8[ a] bes[ a] f4 g |
  f1_( |
  \stemDown <f a>1\arpeggio) |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  f,4 c' a' c, |
  c,4 g' e' g, |
  d4 a' f' a, |
  a4 e' c' e, |\break
  
  bes8 f' bes f bes2 |
  bes,8 f' bes f bes2 |
  bes,8 f' bes f bes4 f |
  d,8 a' d f \ottava #1 d a' d f |\break
  
  f,4 c' a' c, |
  c,4 g' e' g, |
  d4 a' f' a, |
  a4 e' c' e, |\break
  
  d8 f bes f bes2 |
  d,8 f bes f bes2 |
  d,8 f bes f bes4 f |
  d,8 a' d f a d f a \ottava #0 |\break
  
  R1 |
  f,,,4 c' a' e |
  c,4 g' e' g, |\break
  
  d4 a' f' a, |
  c,4 g' e' g, |
  bes8 f' bes f bes2 |
  <a, e' g>1 |\break
  
  g4 d' bes' d, |
  c,4 g' e' g, |
  f8([ c'] f[ a] c[ f]
  <<
    { 
      \change Staff="upper" a'[ c] |
      \stemUp <d f>1\arpeggio) |
    }
    \new Voice {
      s4 |
      R1
    }
  >>
  |\bar "|."
}

\score {
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff <<
    \set GrandStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
  }
  % \midi { }
}

\score {
  \unfoldRepeats
  \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}
