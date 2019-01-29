\version "2.18.2"

songName = "小螺号"
\include "../lib/markups.ily"
\include "../lib/paper-font.ily"
\include "../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "付 林 词曲"
  arranger = "洪 刚 编配"
}

keyTime = {
  \key f \major
  \time 2/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "小快板  活泼地" 4=96
  \override Hairpin.to-barline = ##f
  
  d16-1\mf d'-5 d-4 d-3 d8-4 a16( c) |
  d,16-1 a'-4 a-3 a-2 a8-4 a16-3( g) |
  d16-1 g-4 g-3 g-2 g8-4 f16-3( d-1) |
  f8-3 a16-1( c-2 f8) r |\break
  
  r8\p <f,, a d>-1-2-5[ r q] |
  d-1 a'-5 a4-4 |
  d,8-1 a'16-5 a-4 a4-3 |
  d,16-1 a'-4 a-3 a-2 a-1( c-4 a-2 g-1) |\break
  
  a2-2 |
  d,8\mp g g4 |
  d8 g16 g g4 |
  d16 g g g g( f d8) |\break
  
  f2 |
  d8\mf a' a4 |
  d,8-1 a'16-5 a a4 |
  d,8-1 c'-5 c( a16 c) |
  d8. c16 d( c a8) |\break
  
  d,8-1 g-4 g4-3 |
  d8 g16 g g4 |
  a16-4 a g a g( f d8-1) |
  f4-3 f-1 |\break
  
  d'4-5\f d8. c16 |
  a16( g d'4.~ |
  d2) |
  d4 d8. c16 |\break
  
  a16( g c4.~ |
  c2) |
  c4\mf c16 d8 c16 |
  a16( g a4.~ |\break
  
  a2) |
  g4-1\p g8-3( a16 f) |
  f16^\rit( d f4.~ |
  f2\fermata) |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  d8-.[ <f a>-. a,-. q-.] |
  d8-.[ q-. a-. q-.] |
  bes8_.[ <d g>_. g,_. q_.] |
  a8_.[ c_. f,_. f'_.] |\break
  
  d8-.[ <f a>-. a,-. q-.] |
  d8-.[ q-. g,-. q-.] | % g or a
  d'8-.[ q-. a-. q-.] |
  d8-.[ q-. a-. <e' a>-.] |\break
  
  d8-.[ <f a>-. a,-. q-.] |
  bes8_.[ <d g>_. g,_. q_.] |
  bes8_.[ q_. g_. q_.] |
  bes8_.[ q_. g_. q_.] |\break
  
  a8_.[ <c f>_. f,_. q_.] |
  d'8-.[ <f a>-. a,-. q-.] |
  d8-.[ q-. a-. q-.] |
  d8-.[ q-. c-. q-.] |
  bes8_.[ <d f>_. a_. <c f>_.] |\break
  
  bes8_.[ <d g>_. g,_. q_.] |
  bes8_.[ q_. g_. q_.] |
  c8-.[ <e a>-. bes-. <d g>-.] |
  a8_.[ <c f>_. f,_. q_.] |\break
  
  r8 d' <f a d>4-- |
  r8 a,16( c e a d e |
  d16 c a g a4) |
  r8 d, <f a d>4-- |\break
  
  r8 c16( e g a c e |
  d16 c a g c4) |
  r8 c, <f a c>4-- |
  r8 a,16_5( c_2 d_5 f_3 a_2 d_1 |\break
  
  c16 d a g a4) |
  r8 d, <g bes d>4-- |
  r8 d,16_5( a'_3 d_1 f_3 a_2 e'_1 |
  d2_2\fermata) |\bar "|."
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

\markup { \vspace #1 }
\markup { 《钢琴名曲精选 100首》 康薇嘉 吴元会 主编 P20~21 }
\markup { 金盾出版社 2010.8（2018.1 重印）    ISBN 978-7-5082-6388-5  }
