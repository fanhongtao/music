\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key d \major
  \time 3/4
  \tempo "Allegro 快板"
  
  \partial 4 fis,8-3\mp g |
  fis4-3( e-2) e |
  d4-1( fis-3) fis |
  a4-5( e-2) e |
  a2-5 fis8-3 g |\break
  
  fis4( e) e |
  d4( fis) fis |
  a4( e) e8( fis |
  d2) fis'8-3 g |\break
  
  \repeat volta 2 {
    fis4-3(\mf e-2) e |
    d4-1( fis-3) fis |
  }
  \alternative {
    {
      a4( e) e |
      a2 fis8 g |
    }
    {
      a4( e) e8( fis |\break
    }
  }
  
  d4) r 
  \ottava #1
  e'8-2(\f fis |
  d4) 
  \ottava #0
  r e,8-2(\mf fis |
  d4) r e,8-2(\p fis |
  d4) d_._\markup { \italic rit. } d_. |
  d2 \bar"|."
}

lower = \relative c {
  \clef bass
  \key d \major
  \time 3/4
  \dynamicUp
  
  \partial 4 r4 |
  cis4_5( <g' a>_1_2) q4 |
  d4_5( <fis a>_1_3) q |
  cis4( <g' a>) q |
  d4( <fis a>) q |\break
  
  cis4( <g' a>) q |
  d4( <fis a>) q |
  cis4( <g' a>) q |
  <d fis>2_3_5 r4 |\break
  
  \repeat volta 2 {
    cis4_5 g'_2 a_1 |
    d,4_5 fis_3 a_1 |
  }
  \alternative {
    {
      cis,4 g' a |
      d,4 fis a |
    }
    {
      cis,4 g' a |\break
    }
  }
  
  <d, fis>4 r4 \clef treble g''4(_1 |
  <d fis>4_2_4) r a_1( |
  <d, fis>4_2_4) r \clef bass g,4_1( |
  <d fis>4_2_4) q-. q-. |
  q2 \bar"|."
}

\header {
  title = "农 民 舞 曲"
}
\markup { \vspace #1 }

myStaff = \new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
>>

\score {
  \myStaff
  \layout { }
}

\score {
  \unfoldRepeats
  \myStaff
  \midi { }
}

