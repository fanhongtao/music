\version "2.18.2"
% 《中国音乐学院 社会艺术水平考级全国通用教材 钢琴 （一级~六级） 第二套》 P67

keyTime = {
  \key g \major
  \time 3/4
}

dolce = \markup { \italic "dolce" }
legato = \markup { \italic "legato" }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto"
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2 {
  g4.-1_\dolce( b8-2[ g b] |
  d4---4)( d-.-3\< d-.-2) |
  d4.->-1(\! b'8\p[ a g-.]) |
  g2---4( fis4-.) |
  a4.->(\> fis8-4[ d c]\! |\break
  
  ais8-3[\< b-1 e-5\! d\> b-2 g-1\!] |
  fis4__-2) <fis c'>__-2-5 <g b>__-2-4 |
  \set doubleSlurs = ##t
  <g b>2_>-3-5( <fis a>4_.) |
  \set doubleSlurs = ##f
  a4_--1\p( \tuplet 3/2{a8)[ b( cis]\<} \tuplet 3/2{d-1[ e fis]} |
  a2->\!\> g4-.\!) |\break
  
  a,4_--1\mf( a16)[ b( cis d-1] e\<[ fis g-1 a] |
  b2->\!\> a4-.\!) |
  d,4--\f( d16)\<[ e( fis g] a[ b cis d-.])\! |
  cis8->-3([ b-.])\> a---3([ g-.]) fis---3\!( e-.) |
  d4-3\p( e16-4[ d cis d-1] fis8.--[ e16] |\break
  
  d4-.) r8 fis16---3\mf([ e] d-1\>[ cis-4 b a]\! |
  g8_.) r <e g>4_.-4 \set doubleSlurs = ##t <e g>^>_.( |
  fis8_.) \set doubleSlurs = ##f a'16---5\>([ g] fis[ e d-1 cis-4] b[ a g-1 fis-3]\! |
  e8_.) g'16---4\>([ fis] e[ d-1 cis-4 b] a[ g_1 fis_3 d])\! |\break
  
  d4_. <fis a d>_.\sf r |
  }
  \repeat volta 2 {
  d'8-3_\dolce(\< dis e\! c-4\> a g-1\! |
  fis4_.-2)( fis_.-3) fis_--2( |
  g4_.) \grace a8( g8)(\< fis g-1 b\! |
  d4.->\> c16 b a4_.\!) |\break
  
  d'8-3(\< dis e\! c-4\> a g-1\!) |
  fis4-.-2( fis-.-3) fis---2( |
  g4-.) \grace a8( g8)(\< fis g-1 b\! |
  d8\>[ c16 b] a16[ g-1 fis-4 e]\! d[ c-1b-3 a] |
  g4._--1_\dolce)( b8-2 g b |\break
  
  d4-.-4)( d-.-3\< d-.-2) |
  d4.->-1\!( b'8\p a g-.) |
  fis2---4( d4-.) |
  a4._--2\mf( b8\< c a-1\! |
  e'4.-> d8\> b g-.\!) |\break
  
  a'4.-2\p( b8 c a-1 |
  e'4.-- d8 b g-.) |
  a,4._--3\mf( b16\<[ a] gis[ a b c]\! |
  e8-.) d4--( b8 c a-1 |
  g4_.-2\p) \set doubleSlurs = ##t <g b>_>-3-5( <fis a> |\break
  
  g4_.-3)\set doubleSlurs = ##f d'-.-5( d-.-3) |
  d4---1\p(~ \tuplet 3/2{d8 e fis} \tuplet 3/2{g-1\< a b\!} |
  d2->\> c4-.\!) |
  d,4---1\mf(~ d16[ e fis g] a\<[ b c d] |
  e2->\!\> d4-.\!) |\break
  
  g,4---1\mf~ g16\<[ a( b c-1] d[ e fis g-.])\! |
  fis8->-3[( e-.)] d---3\>[( c-.)] b---3( a-.)\! |
  g4-3\p( a16-4[ g fis g-1] b8.-- a16 |
  g4-.) r8 b16---3\mf\>[( a] g-1[ fis-4 e d])\! |\break
  
  c8-. r <a c>4-.-2-4 \set doubleSlurs = ##t q-.->( |
  b8-.)\set doubleSlurs = ##f d'16---5\>([ c] b[ a g-1 fis-3] e[ d-1 c-3 b]\! |
  a8_.) c'16---4\>([ b] a[ g-1 fis-4 e] d[ c b a]\! |
  g4_.) <b d g>-.-1-2-5\sf r |
  }
  %\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2 {
  g'8---5\p( d' b d b d)( |
  g,8--) d'_\legato b d b d( |
  g,8--) d' b d b d( |
  a8--_4) d c d c d( |
  fis,8--) d' a d a d( |\break
  
  g,8--_5) d' b d b d( |
  c8--_2) d a--_4 d g,--_5 d' |
  d,8--( d' cis d d,4-.) |
  \clef treble
  r4 <d' fis>_._2_4 q_. |
  <cis e>4_._5 q_. r |\break
  
  r4 <cis e g>_._5 q_. |
  <d fis>4_._4 q_. r |
  r4 <fis a>_. q_. |
  <g b>4_. r r |
  a,4_. a'_. a,_. |\break
  
  \clef bass
  d4-._1 d,-. r |
  r8 a16_5([ b] cis\<[ d e fis-3] g[ a b-3 cis] |
  d8-.)\! r r4 r |
  <a, g'>2.-> |\break
  
  <d fis>4-._2_3 <d, d'>_. r |
  }
  \repeat volta 2 {
  R2. |
  r4 <d' a' c>-.\p( q-.) |
  <d g b>4-.-2-1( q-. q-.) |
  <d fis a>2.-- |\break
  
  R2. | \clef treble r4 <d' a' d>_.\p( q_.) |
  <d g b>4_.-1-3( q_. q_.) |
  <d fis a>4_._> r r |
  \clef bass r8 d( b d b d|\break
  
  g,8--) d' b d b d( |
  g,8--) d' b d b d( |
  g,8--) e' c e c e( |
  fis,8--) d' c d c d( |
  g,8--_5) d' b d b d( |\break
  
  fis,8--\pp) d' c d c d( |
  g,8--) d' b d b d( |
  fis,8--\p) d' c d c d( |
  g,8_5) d' b d c_2 e_1 |
  d,8( d' cis-- d c-- d |\break
  
  <g, b>4-._3_5) r r |
  \clef treble r4 <g' b>_.-4-2 q_. |
  <fis a>4_.-5-3 q_. r |
  r4 <fis a c>_._5 q_. |
  <g b>4_._4 q r |\break
  
  r4 <b d>-._4 q-. |
  <c e>4-._3 r r |
  d,4_. d'-. d,-. |
  g4_. g,_. r |\break
  
  \clef bass r8 d16-5([ e] fis\<[ g a b-3] c[ d e-3 fis]\! |
  g8-.) r r4 r |
  \set doubleSlurs = ##t <d, c'>2.->( |
  <g b>4-.-3-2)\set doubleSlurs = ##f <g, g'>_. r |
  }
  %\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "G 大调小奏鸣曲"
    subtitle = "(Op.55    No.2)"
    composer = "库劳  曲"
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
