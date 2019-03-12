\version "2.18.2"

songName = "小步舞曲"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "海顿 曲"
}

keyTime = {
  \key g \major
  \time 3/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andantino" 4=100
  \override Hairpin.to-barline = ##f
  
  \partial 4 d,4-1\mf( |
  g4-.-3) g-.-2 g-.-3 |
  g4 d8-1( g-2 b-4 g-2 |
  a4-.-3) a-. a-. |\break
  
  \set Score.currentBarNumber = #5
  a4 d,8-1( a'-3 c a-2 |
  b4-.-3) d-.-5\< d-.-3\! |
  d8-2( g fis e d4) |
  <b d>4-.-3-5\f <a c>-. <g b>-. |\break
  
  <g b>4-3-5(\> <fis a>)\! d-1\p( |
  d'4-.-5) d-.-4 d-.-5 |
  c4-4 e,8-1( gis-2 b-3 d-5 |
  c4-.-4) c-.-3 c-.-4 |\break
  
  c4( d,8-1 fis-2 a-3 c |
  b4-.-2)\< d-.-4 d-.-3\! |
  d8-2( g fis e d4) |
  \tuplet 3/2 { e8-3\f( d c-1) } b4-.-3 a-. |
  g2. |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \partial 4 r4 |
  g4_._3 g'-._1 a-._3 |
  b4-2( g-4) r |
  d,4_._5 d'-._1 e-._3 |\break
  
  fis4_2( d-._4) r |
  g,4_._5 g'-._1 a-._3 |
  a4_2 r r |
  g4-._1 c,_._4 cis_._3 |\break
  
  d4-1( d,) r |
  r4 b''4-._1 a-._2 |
  gis4_3 r r |
  r4 a-._1 g!-._2 |\break
  
  fis4_3 r r |
  g,4_._5 g'-._1 a-._3 |
  b4 r g_1 |
  c,4_3( d-._1) d,_. |
  g2. |\bar "|."
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
