\version "2.18.2"

songName = "童话"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  arranger = "编配： 赵峰"
}

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=78
  \override Hairpin.to-barline = ##f
  
  <g c e>2.\arpeggio e'8. d16 |
  d8. c16~ c2 c8. b16 |\break
  
  b8. a16~ a2 a8. g16 |
  g2 r8 g[ c] b |
  c4 g r8 g[ c] b |\break
  
  c4 g r8 g[ c] b |
  c4. c8 c a a g~ |
  g2 r8 g[ c] b |\break
  
  c4 g r8 g[ e'8.] d16 |
  d4 c r8 g[ c] b |
  c8 a r a a c a' g( |\break
  
  g2) r8 d[ d] f |
  f8 e e4 r8 e[ d] b |
  d8. c16 c8 b16 c r8 c b[ c] |\break
  
  f4 r8 g,[ g' f e] d8~ |
  d2 r8 d[ d] f |
  f8 e e4 r8 e[ e] b' |\break\pageBreak
  
  b8 a b c r c[ d,] c |
  a'4. a8 a g g g~ |
  g2 r8 g,[ g'] f |\break
  
  e4 e8 f16 e~ e4 e8 f |
  e8 f e d16 c r8 c[ e] g |
  a4 a8 a16 g g8 d d f16 e~ |\break
  
  e2 r8 c[ e] g |
  a4 a8 a16 g g8 d d f |\break
  
  e8 f e d16 c~ c4 d8 d16( e) |
  a,4 a8 c c( b) b4 |
  c2 r8 d d[ f] |\break
  
  c2 r8 g[ g'] f |
  e4 e8 f16 e~ e4 e8 f |
  e8 f e d16 c r8 c e[ g] |\break
  
  a4 a8 a16 g~ g8 d d f16 e~ |
  e2 r8 c e[ g] |
  a4 a8 a16 g g8 d d f |\break\pageBreak
  
  e8 f e d16 c~ c4 d8 d16( e) |
  a,4 a8 c c( b) b( c) |\break
  
  c2 r8 g[ g'] f |
  e4 e8 f16 e~ e4 e8 f |
  e8 f e d16 c r8 c e[ g] |\break
  
  a4 a8 a16 g~ g8 d d f16 e~ |
  e2 r8 c e[ g] |
  a4 a8 a16 b~ b8 a g f |\break
  
  e8 f e d16 c~ c4 d8 d16 e |
  a,4 a8 c c b b c |
  c2. \ottava #1 d'8( d16 e) |\break
  
  a,4 a8 c c b b( c) \ottava #0 |
  <e,, g c>1\arpeggio |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  c,8( g' c g e' g, c g) |
  a8( e' a e c' e, a e) |\break
  
  f,8( c' f c a' c, f c) |
  g8( d' g4) r2 |
  c,,8( g' c g e' g, c g) |\break
  
  c,8( g' c g e' g, c g) |
  f8( c' f c a' c, f c) |
  g8( d' g4) r2 |\break
  
  c,,8( g' c g e' g, c g) |
  a8( e' a e c' e, a e) |
  f,8( c' f c a' c, f c) |\break
  
  g8( d' g4) r2 |
  e,8( b' e b g' b, e b) |
  a8( e' a e c' e, a e) |\break
  
  f,8( c' f c a' c, f c) |
  g8(  d' g4) r2 |
  e,8( b' e b g' b, e b) |\break
  
  a8( e' a e c' e, a e ) |
  f,8( c' f c a' c, f c) |
  g8( d' g4) r2 |\break
  
  c,,8( g' c g e' g, c g) |
  a8( e' a e c' e, a e) |
  f,8( c' f c g d' g d) |\break
  
  c,8( g' c g e' g, c g) |
  f8( c' f c g d' g d) |\break
  
  c,8( g' c g a e' a e) |
  f,8( c' f c g d' g d) |
  c,8( g' c g) r2 |\break
  
  c,8( g' c g e' g, c g) |
  c,8( g' c g e' g, c g) |
  a8( e' a e c' e, a e) |\break
  
  f,8( c' f c g d' g d) |
  c,8( g' c g e' g, c g) |
  f8( c' f c g d' g d) |\break
  
  c,8( g' c g a e' a e) |
  f,8( c' f c g d' g d) |\break
  
  c,8( g' c g e' g, c g) |
  c,8( g' c g e' g, c g) |
  a8( e' a e c' e, a e) |\break
  
  f,8( c' f c g d' g d) |
  c,8( g' c g e' g, c g) |
  f8( c' f c g d' g d) |\break
  
  c,8( g' c g a e' a e) |
  f,8( c' f c g d' g d) |
  c,8( g' c g) r2 |\break
  
  f8( c' f c g d' g d) |
  <c e g>1\arpeggio |\bar "|."
}

\score {
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff <<
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

