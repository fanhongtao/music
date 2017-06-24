\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4
  \tempo "Andantino 小行板"
  
  \partial 4 c,4-1 |
  a'4-5 g f |
  g4-4 f d-2 |
  c4 r r |
  r4 r c-1 |\break
  
  a'4-5 g f |
  f4 d f |
  <g-4 e^2>2.~ |
  q4 r c,-1 |
  a'4-5 g f |
  g4-4 f d |\break
  
  c4 r r |
  r4 r c-1 |
  d4-2 g-5 f |
  e4-3 d e |
  f2.~ |
  f4 r r |\break
  
  \repeat volta 2 {
    c2.-1 |
    f2.-4 |
    d2.-1 |
    \set melismaBusyProperties = #'()
    g2-4 f4-3( |
    e4-2) e e |\break
    
    e4 d e |
  }
  \alternative {
    {
      f2-3 g4 |
      a2. |
    }
    {
      f2.~ |
      f4 r 
    }
  }
  \bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 3/4
  
  \partial 4 r4 |
  <a'_3 f_5>2. |
  <bes_2 f_5>2. |
  f4_5( a_3 c |
  f,4) r r |\break
  
  <a_3 f_5>2. |
  g4_4 b_2 g |
  r4 c_1( b_2 |
  c4) r r |
  <a_3 f_5>2. |
  <bes_2 f_5>2. |\break
  
  f4( a c |
  f,4) r r |
  bes2._2 |
  c2_1 bes4 |
  a4_3 c( a |
  f4) r r |\break
  
  \repeat volta 2 {
    r4 <a_3 f_5>-. q-. |
    r4 <a f>-. q-. |
    r4 <bes_2 f_5>-. q-. |
    r4 <bes f>-. q-. |
    r4 bes_2 c |\break
    
    bes4 c bes |
  }
  \alternative {
    {
      r4 a_3( g |
      f2.) |
    }
    {
      a4 c( a |
      f4) r
    }
  }
  \bar"|."
}

text = \lyricmode {
  Last |
  night as I |
  rode o'er the |
  prai-rie, |
  And |\break
  
  looked at the |
  stars in the |
  sky. __ |
  I |
  won- dered if |
  ev- er a |\break
  
  cow-boy |
  Would |
  drift to that |
  sweet by- and- |
  by. __ |
  |\break
  
  Roll |
  on, |
  roll |
  on, roll |
  on lit- tle |\break
  
  do- gies, roll |
  on, roll |
  on. |
  on.
}

\header {
  title = "牛 仔 之 歌"
}
\markup { \vspace #1 }

\score {
  \new GrandStaff <<
    \new Staff = "upper" { \new Voice = "uppervoice" \upper }
    \new Staff = "lower" { \new Voice = "lowervoice" \lower }
    \new Lyrics \with { alignBelowContext = "upper" } \lyricsto "uppervoice" \text
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}
