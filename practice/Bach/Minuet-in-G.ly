\version "2.18.2"

\header {
  title = "Minuet in G"
  composer = "J. S. Bach"
}

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  %\tempo 4=120
  \slurUp

  d4(\p g,8 a b c |
  d4) g,4-. g-. |
  e'4(\< c8 d e fis\! |
  g4) g,-. g-. |\break
  
  c4( d8 c b a |
  b4) c8( b a g |
  fis4) g8(\< a b g\! |
  a2.) |\break
  
  d4( g,8 a b c |
  d4) g,-. g-. |
  e'4(\< c8 d e fis\! |
  g4) g, g |\break
  
  c4( d8 c b a |
  b4) c8( b a g |
  a4) b8( a g fis |
  g2.) |\bar ":.|.:" \break
  
  b'4 g8([ a] b g |
  a4) d,8([ e] fis d |
  g4) e8([ fis] g d |
  cis4 b8 cis a4) |\break
  
  a8([\< b] cis[ d] e fis |
  g4)\! fis-. e-.\> |
  fis4-. a,( cis |
  d2.)\! |\break
  
  d4 g,8( fis g4) |
  e'4 g,8( fis g4) |
  d'4-. c-. b-. |
  a8([ g] fis g a4) |\break
  
  d,8([ e] fis[ g] a b |
  c4-.) b-. a_. |
  b8( d) g,4_. fis_. |
  g2. |\bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4

  << { b'2( } { g } >>  a4 |
  b2.) |
  c2. |
  b2. |\break
  
  a2 fis4( |
  g2) c4( |
  d4-.) b-. g-. |
  d'4 d,8( c' b a) |\break
  
  b2( a4 |
  g4) b-. g-. |
  c2.( |
  b4) c8( b a g |\break
  
  a2) fis4( |
  g2) b4( |
  c4-.) d-. d,-. |
  g2 g,4 |\bar ":.|.:"\break
  
  g'2.\mf |
  fis2. |
  e4-. g-. e-. |
  a2( a,4) |\break
  
  a'2. |
  b4 d-. cis-. |
  d4-. fis,-. a-. |
  d4 d, c'! |\break
  
  b4\p d b |
  c4 e c |
  b4-. a-. g-. |
  d'2 r4 |\break
  
  d,2 fis4 |
  e4-. g-. fis-. |
  g4-.\f b,_. d-. |
  g4-. d-. g,_. |\bar"|."
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

% http://www.8notes.com/scores/2402.asp