\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P10

keyTime = {
  \key c \major
  \time 4/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Moderato"
  
  \partial 4 e,8-1(\p_\markup { \halign #-1.25 \italic { "lightly and gracefully" }} g-2) |
  g8-1( a-2) r4 r a8-1( c-3) |
  c8-3( b-2) r4 r g8-1( a-2) |
  a8-1( b-2) r4 r b8-1( f'-4) |
  f8-4\<( e-3) r4 r e8-1( c'-5)\! |\break
  
  c8-5( b-4) r4 r b,8-1( a'-5) |
  a8-5( g-4) r4 r b,8-1( e-4) |
  e8-4(_\markup { \italic { "poco rit." } } d) r8 b8-3 b-3\>( a-2) r aes-3 |
  aes8-3( g-2)\! r4 r e8-1_\markup { \italic { "a tempo"} }\p( g-2) |\break
  
  g8-1( a!-2) r4 r a8-1( c-3) |
  c8( b) r4 r g8-1( a-2) |
  a8( b) r4 r b8-1( f'-4) |
  f8( e) r4 r e,8-1\mf( e'-5)  |\break
  
  e8\<( d) r4 r\! d8-4( b-2) |
  b8-2( a-1) r4 r a'8-5\pp( f-3) |
  f8-3( e-2) r8 c-3 c-3( a-1) r b-4( |
  <e, c'>2.-1-5) \bar"|."
}

lower = \relative c {
  \clef treble
  \keyTime
  
  \partial 4 r4 |
  \set fingeringOrientations = #'(left)
  r4 <c'-5 e-3>_. q_. r |
  r4 <c-5 d-4 f-2>_. q_. r |
  r4 <c-5 f-2 g-1>_. q_. r |
  r4 <c-5 e-3 g-1>_. q_. r |\break
  
  r4 <dis-5 a'\finger "2   " b\finger "1   ">_. q_. r |
  r4 <e-5 g-3 b-1>_. q_. r |
  \override Fingering.staff-padding = #'()
  r4 \clef bass <g, b d>_1_3_5-. r4 <fis c' d>_1_2_5-. |
  r4 <g b>_1_2-. g,_5 r |\break
  
  %\override Fingering.staff-padding = #'1
  \clef treble r4 <c' e>_. q_. r |
  r4 <c d f>_. q_. r |
  r4 <c f g>_. q_. r |
  r4 <c e g>_. q_. r |\break
  
  \clef bass r4 <gis e'>_1_5-. q-. r |
  r4 <f c'>-. q-. r |
  r4 <g e'>-. r <g f'>-. |
  r4 g_2-. c,_5_. \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "时 辰 之 舞"
    composer = \markup{ \column { "蓬基耶利" "(1834-1886)"}}
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
  \midi { }
}

\markup { \vspace #1 }
\markup { 参考： \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/inside-the-staff#fingering-instructions" {
    Fingering instructions
  }
}
