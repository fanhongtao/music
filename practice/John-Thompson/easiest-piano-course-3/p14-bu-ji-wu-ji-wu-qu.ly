\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \numericTimeSignature
  \tempo "Allegro moderato 中速的快板"
  
  R2. |
  R2. |
  R2. |
  R2. |\break
  
  R2. |
  R2. |
  R2. |
  R2. |\break
  
  e,2.-3~ |
  e2. |
  d2.-2 |
  g2.-5 |
  e2.-3~ |
  e2. |
  d2.-2 |
  g2.-5 |\break
  
  e2.-3~ |
  e2. |
  d2.-2 |
  e2. |
  c4 r r |
  R2. |
  s2. |
  s2. |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  \numericTimeSignature
  \dynamicUp
  
  \once \override DynamicText.X-offset = #-5.2
  c4_5\mp r c_5( |
  e4_3) r e_3( |
  f4_2) r f_2( |
  g4_1) r g_1( |\break
  
  c,4_5) r c( |
  e4) r e( |
  f4) r f( |
  g4) r g( |\break
  
  c,4_5) r c( |
  e4) r e_3( |
  f4_2) r f( |
  g4) r g( |
  c,4_5) r c( |
  e4) r e( |
  f4_2) r f( |
  g4) r g( |\break
  
  c,4_5)\< r c( |
  e4)\! r e( |
  f4_2)\> r f( |
  g4) r g_1( |
  e4_3)\! r g_2\p( |
  a4_1^\markup { \italic "rit." }) r g_2( |
  <<
    {
      \change Staff = upper
       bes2.-2~) | bes4 r r
    }
    \new Voice { R2. | R2. }
  >> |\bar"|."
}


\header {
  title = "布吉乌吉舞曲"
}
\markup { \vspace #1 }

\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

