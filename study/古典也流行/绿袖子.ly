\version "2.18.2"

songName = "绿袖子"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "GREEN SLEEVES"
  composer = "英国民歌"
}

keyTime = {
  \key g \major
  \time 3/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto" 4=96
  \override Hairpin.to-barline = ##f
  
  \partial 4 e,-1\mp( |
  g2-2 a4 |
  b4. c8 b4 |
  a2-3 fis4-2 |
  d4.-1 e8 fis4) |\break
  
  g2-4^( e4-2 |
  e4.-3 dis8 e4 |
  fis2-4 dis4-2 |
  b2-1) e4-1( |\break
  
  g2-2 a4 |
  b4. c8 b4 |
  a2-3 fis4-2 |
  d4.-1 e8 fis4) |\break
  
  g4.-4^( fis8-3 e4-4 |
  dis4.-3 cis8-2 dis4-3 |
  e2-4\< e4-3 |
  e2.-1\!) |\break\pageBreak
  
  d'2.-5\mf( |
  d4. c8 b4 |
  a2-1 fis4-3 |
  d4.-1 e8 fis4) |\break
  
  g2-4^( e4-2 |
  e4.-3 dis8-2 e4-3 |
  fis2-4 dis4-2 |
  b2.-1) |\break
  
  d'2.( |
  d4. c8 b4 |
  c2-1 fis,4-3 |
  d4.-1 e8 fis4) |\break
  
  g4.-4^( fis8-3 e4-1 |
  dis4.-3 cis8 dis4 |
  e2.\> |
  e2.\!) |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \partial 4 r4 |
  e4-5_\markup { "Legato" } g-3 b-1 |
  g4-4 b-2 d-1 |
  d,4-5 fis-3 a-1 |
  d,4 fis a |\break
  
  e4-4 g-2 b-1 |
  c,4 e-3 g-1 |
  b,4-5 dis-3 fis-1 |
  dis4-4 fis-2 b-1 |\break
  
  e,4-5 g-3 b-1 |
  g4-4 b-2 d-1 |
  d,4-5 fis-3 a-1 |
  d,4-5 fis-2 dis-4 |\break
  
  e4-3 g-2 b-1 |
  b,4-5 dis-3 fis-1 |
  e4-4 g-2 b-1 |
  e,2. |\break
  
  g4-4 b-2 d-1 |
  g,4 b d |
  d,4-5 fis-3 a-1 |
  d,4 fis a |\break
  
  e4-4 g-2 b-1 |
  c,4-5 e-3 g-1 |
  b,4-5 dis-3 fis-1 |
  dis4-4 fis-2 b-1 |\break
  
  g4-4 b-2 d-1 |
  g,4 b d |
  d,4-5 fis-3 a-1 |
  d,4 fis a |\break
  
  e4-4 g-2 b-1 |
  b,4-5 fis'-2 a-1 |
  e4-4 g-2 b-1 |
  e,2. |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
  }
  \midi { }
}
