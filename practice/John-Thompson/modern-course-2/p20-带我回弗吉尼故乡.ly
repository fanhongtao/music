\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P20

keyTime = {
  \key g \major
  \time 4/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Moderato"
  \override Hairpin.to-barline = ##f
  \set fingeringOrientations = #'(left)
  
  d8-1\mp d( d) e d4 r |
  e8-2 e( e) fis e4 r |
  <c-1 fis-3>4\< q <d-1 g-4> q |
  \once \set fingeringOrientations = #'(right)
  <d-1 gis-4>4 q <d-1 a'-5>2\! |\break
  
  s2 s4 \stemDown d,8_5_左手 a'_1 |
  \stemUp c8-1^右手 d-2 fis-3 a-5 \stemDown d2_左手 |
  \stemNeutral <c,-1 fis-4>2\> <c-1 e-3> |
  <c-1 d-2>2~ q\fermata\! |\break
  
  \tempo "Andantino"
  b8-3\mf( b4 c8-4 b4. a8-2 |
  g4-1 e-2 d8-1 g-4) r4 |
  d4-1( g8.-2 a16 b8-4 b-3 c b |
  b8 g-1 fis-2 g-1 a4.-2) r8 |\break
  
  b4-3( c8.-4 b16 b4 a8-2 g-1 |
  a4-4 g8 e d-1 g-4) r4 |
  d4-1 g8.-2( a16 b4 c8)\fermata b |
  b8-3 a-2 g-1 fis-2 g2-1 |\break
  
  \clef bass a,4-1(\mp\< a8.-2 b16 c8-4 d4-5\!) <a c>8-2-4( |
  <g b>4-1-3)\> b8.-2( c16 d8 b4)\! r8 |
  \clef treble <b' d>4-2-4( c8.-3 b16-1 b4-3) a8-2( g-1) |
  g4-3 fis8.-2( g16 <fis a>2) |\break
  
  b4-3(\mf c8. b16 b4 a8 g |
  a4-4 g8 e d g) r4 |
  d4 g8.-2( a16 b4 c8)\fermata b |
  b8-3(\>_\markup { \italic { "poco rit." } } a g fis-2 g2)\! |\break
  
  \clef bass <g, b>8-1-3\mp_\markup { \halign #-2 \italic { "a tempo" } } q~ q c q2 |
  \clef treble <b d>8-1-3\p q~ q <c e>-2-4 <b d>2 |
  <b g'>2-1-5\pp\> <c g'>-2-5 |
  <b' g'>1-1-5\ppp\! |\bar "|."
}

sustainTwo = \new Voice { s4\sustainOn s\sustainOff }

lower = \relative c {
  \clef treble
  \keyTime
  \dynamicUp
  \set fingeringOrientations = #'(left)
  \set Staff.pedalSustainStyle = #'bracket
  
  <d'-5 fis-3 a-1>2. q4 |
  <d-5 g-2 b-1>2. q4 |
  <d-5 a'-2>4 q <d-5 b'-1> q |
  q4 q << <d c'>2 \sustainTwo >> |\break
  
  \clef bass \stemDown d,,8_5\sustainOn[\mp a'_1] \stemUp c-1[^右手 d-2 fis-3 a-5] s4
  s2. s4\sustainOff |
  \stemNeutral \clef treble <d-5 a'-1>2\sustainOn <d-5 g-2>\sustainOff \sustainOn |
  <d-5 fis-3>2\sustainOff\sustainOn \clef bass d,_5\fermata\sustainOff |\break
  
  <<
    g1_5
    \new Voice { \stemUp d'2-1\sustainOn dis-2\sustainOff }
  >> |
  e4_1 c_2 <g b>2_3_5 |
  g,4\sustainOn <d' g b>\sustainOff g,\sustainOn q\sustainOff |
  a4\sustainOn <e' g cis>\sustainOff d,\sustainOn <d' fis c'>\sustainOff |\break
  
  <<
    g1_5
    \new Voice { \stemUp d'2-1\sustainOn dis-2\sustainOff }
  >>
  e4_1 c_2 <g b>2_3_5 |
  r4 b8._4 c16 d4 e\fermata |
  d,8_5 c'_1 b_2 c_1 << <g b>2_2_4 \sustainTwo >> |\break
  
  <d fis>4_3_5\sustainOn fis8._4\sustainOff g16 a8 b4 r8 |
  <g, d'>4\sustainOn g'8._3\sustainOff a16 b8 g4 r8 |
  \clef treble g'4_1 r <b, dis>_3_5 e_1 |
  \clef bass <a, cis>4_3_5 r << <d, c'>2 \sustainTwo >> |\break
  
  <<
    g1_5
    \new Voice { \stemUp d'2-1\sustainOn dis-2\sustainOff }
  >>
  e4_1 c_2 <g b>2 |
  r4 b8._4 c16 d4 e\fermata |
  d,8_5 c' b c << <g b>2 \sustainTwo >> |\break
  
  g,8_5 d'_1~ d ees_2 << d2_1 \sustainTwo >> |
  g8_1 g~ g fis_2 << g2 \sustainTwo >> |
  <g, d'>2_1_5\sustainOn <g ees'>_2_5\sustainOff\sustainOn |
  <g' d'>1_1_5\sustainOff\sustainOn\sustainOff |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "带 我 回 弗 吉 尼 故 乡"
    composer = "詹姆斯•勃兰德"
    piece = "Introduction"
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
\markup { 使用了一个技巧来实现只有一个音符的踏板记号。 如，第25小节 }
