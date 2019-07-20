\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P24

songName = "A大调前奏曲"
% \include "../../../lib/paper-footer.ily"

\header {
  title = \songName
}

keyTime = {
  \key a \major
  \time 3/4
  % \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andante" 4=72
  \override Hairpin.to-barline = ##f
  \set fingeringOrientations = #'(left)
  
  \partial 4 e,\p_\markup {\halign #-1.8 \italic "dolce"}( |
  cis'8.-4 d16 <gis, b>4-2-3 q |
  q2) fis'4( |
  <bis, dis>8.-1-2\< e16 <cis-1 a'-5>4\! q |
  q2)\> cis4-4\!( |\break
  
  ais8.-2\< b16 <fis-1 d'-5>4\! q |
  q2) gis4-2^( |
  gis8.\> a!16 <e-1 cis'-5>4\! q |
  q2) d4( |\break
  
  cis'8.-4\p d16 <gis, b>4-2-3 q |
  q2) fis'4-5(\< |
  <bis, dis>8.-2-3 e16-1 <a-3 cis-5>4\! q |
  <e-1 ais-3 cis-5>2\f) cis4\mp( |\break
  
  cis8.-2 d16 <b-1 fis'-5>4 <a fis'>4 |
  <gis fis'>2) gis4-2\p( |
  b8.-4 a16-1_\markup {\italic "rit."} <cis a'>4\> q |
  q2\!) \bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  %\dynamicUp
  \set Staff.pedalSustainStyle = #'bracket
  \set fingeringOrientations = #'(left)
  
  \partial 4 r4 |
  e,-5\sustainOn <e'-5 d'-1> q |
  q2 r4\sustainOff |
  a,4\sustainOn <a' e'> q |
  q2 r4\sustainOff |\break
  
  e,4\sustainOn <e' b'> q |
  q2 r4\sustainOff |
  a,4\sustainOn <e' a> q |
  q2 r4 \sustainOff |\break
  
  e,4\sustainOn <e' d'> q |
  q2 r4\sustainOff |
  a,4\sustainOn <a' e'> q |
  <fis-5 cis'-2 e-1>2\sustainOff \sustainOn r4\sustainOff |\break
  
  b,4\sustainOn <fis' d'> q |
  q2\sustainOff \sustainOn r4\sustainOff |
  a,4\sustainOn <a' e'> q |
  q2\sustainOff \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
  \midi { }
}
