\version "2.18.2"

\markup { 和声深度接触 }

\markup { \vspace #1 }
\markup { • 弹奏下列 C 大调音阶里的和弦 }
\markup { "　注意，I、IV 与 V 和弦是大和弦，ii、iii 与 vi 是小和弦。" }

\markup { \vspace #1 }
\markup {
  \score {
    \new Staff \with {
      \omit TimeSignature 
    } \relative c' {
      \clef treble
      \hide Staff.BarLine
      <c e g>1_\markup{ I }^\markup { C }
      <d f a>1_\markup{ ii }^\markup { Dm }
      <e g b>1_\markup{ iii }^\markup { Em }
      <f a c>1_\markup{ IV }^\markup { F }
      <g b d>1_\markup{ V }^\markup { G }
      <a c e>1_\markup{ vi }^\markup { Am }
    }
    \layout { ragged-right = ##f indent = 0.2\cm }
  }
}

\markup { \vspace #1 }
\markup { • 《帕赫贝尔卡农》建立在下面这个重复的四小节和弦进行之上： }
\markup { \vspace #1 }
\markup {
  \score {
    \new Staff\with {
      \omit TimeSignature 
    } \relative c {
      \clef bass
      <c e g>2_\markup{ \lower #4 I }^\markup { \raise #2 C }
      <g b d>2_\markup{ \lower #4 V }^\markup { \raise #2 G }
      <a c e>2_\markup{ \lower #4 vi }^\markup { \raise #2 Am }
      <e g b>2_\markup{ \lower #4 iii }^\markup { \raise #2 Em }
      <f a c>2_\markup{ \lower #4 IV }^\markup { \raise #2 F }
      <c e g>2_\markup{ \lower #4 I }^\markup { \raise #2 C }
      <f a c>2_\markup{ \lower #4 IV }^\markup { \raise #2 F }
      <g b d>2_\markup{ \lower #4 V }^\markup { \raise #2 G }
    }
    \layout { ragged-right = ##f indent = 0.2\cm }
  }
}


keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

ChordC = \markup { \raise #3 C }
ChordDm = \markup { \raise #3 Dm }
ChordEm = \markup { \raise #3 Em }
ChordF = \markup { \raise #3 F }
ChordG = \markup { \raise #3 G }
ChordAm = \markup { \raise #3 Am }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andante" 4=100
  \override Hairpin.to-barline = ##f
  
  r8\p^\markup { \right-align \raise #3 "和弦名称：C" }  e,-1[( g-2 c-5)] r^\ChordG d,-1[( g-3 b-5)] |
  r8^\ChordAm c,-1[( e-2 a-5)] r^\ChordEm b,-1[( e-3 g)] |\break
  
  r8^\ChordF a,-1( c-2 d) r^\ChordC g,-1( c-3 e) |
  r8^\ChordF a,-1( c-2 d) r^\ChordG b-1( d-2 g) |
  e'8-5--^\ChordC g,-1 c-3 g-1 \stemDown d'-4--^\ChordG g,-1 b-2 g-1 |\break
  
  \stemUp c8-5--^\ChordAm e,-1 a-3 e-1 b'-4--^\ChordEm e,-1 g-2 e |
  a8-5--^\ChordF c,-1 f-3 c g'-4--^\ChordC c, e c |
  a'8-5--^\ChordF c, f c b'-5--^\ChordG d, g d |\break \pageBreak
  
  \stemNeutral c'8-3\mp(^\ChordC b c4 \grace { b16-2 c16-3 } b2-2)^\ChordG |
  c4-1(\<^\ChordAm e-2 g4.-4\!)^\ChordEm a8( |\break
  
  f8-3^\ChordF e-2 d-1 f-4 e^\ChordC d c-1 b-4 |
  a8^\ChordF g f-1 e-3 <b d>-1-2^\ChordG f'-4\> e d\!) |\break
  
  c8-1^\ChordC( d e f <b, g'>4)^\ChordG g'8-4( f-3 |
  <c e>8-1-2^\ChordAm a'-5 g f g-4^\ChordEm f e d-1 |\break
  
  c4-2)^\markup { 跨越 }^\ChordF a'8-3(\< b-4 <e, c'>-1-5\!^\ChordC b' a g |
  <f a>4-1-3^\ChordF b8 c-5 b16-3^\ChordG\< g-1 a b c-1 d e f\! |\break
  
  g8-5)\mf^\ChordC e16( f g8) e16( f g^\ChordG g, a b c-1 d e f-4 |
  e8-3^\ChordAm) c16( d e8) e,16-1( f g^\ChordEm a g f g8 c |\break \pageBreak
  
  a8-3)^\ChordF c16( b a8 g16-2 f-1 g-2^\ChordC f-1 e-2 f-1 g-2 a-3 b-4 c-5 |
  a8-3)^\ChordF c16( b c8-5 c-4 b16-3^\ChordG g a b c-1 d e f-4 |\break
  
  g8-5)\f^\ChordC e16( f g8 g <e g>4-3-5^\ChordG  <d f>-2-4) |
  e8^\ChordAm^\finger \markup \column {"(3" "5"} c16(^\finger \markup \column {"1)" " "} d e8 e <c e>4-3-5^\ChordEm <b d>-2-4) |\break
  
  c8-3^\ChordF c16( b a8-1 g16-3 f-2 g-3^\ChordC f-2 e-1 f-2 g-3 a-1 b-2 c-3 |
  a8-1)^\ChordF c16( b c8-3 c-4 b4-3^\ChordG g) |\bar"||"\break
  
  g'4.-5\f^\ChordC g8-3( g^\ChordG a-4 g-3 f-2 |
  e4.-1)^\ChordAm e8-3( e^\ChordEm f e d |
  c8-1^\ChordF b-3 a-2 b-3 c2-4)^\ChordC |\break
  
  c8(^\ChordF b c4 b2^\ChordG |
  c4.-4\mf)^\ChordC g8-1( g-3^\ChordG a g f |
  e4.)^\ChordAm e8-3( e^\ChordEm f e d |\break \pageBreak
  
  c8-1^\ChordF b-3 a-2 b-3 c2-4)^\ChordC |
  c8(^\ChordF b c4 b2^\ChordG |
  c4-1)\mp^\ChordC <c' e>-3-5-- r^\ChordG <b d>-2-4-- |\break
  
  r4^\ChordAm <a c>-1-3-- r^\ChordEm <g b>-1-3-- |
  r4^\ChordF <f a>-1-3-- r^\ChordC <e g>-1-3-- |
  r4^\ChordF <f a>-1-3-- r^\ChordG <g b>-2-4-- |\break
  
  <e c'>2\p^\ChordC <d b'>^\ChordG |
  <c a'>2^\ChordAm <b g'>^\ChordEm |
  \set fingeringOrientations = #'(left) 
  <a f'>2^\ChordF <c-2 e-4>^\ChordC |
  <a f'>2^\ChordF
  << 
    {\stemDown <c-2>4^\ChordG_\markup { \italic "rit."} <b-1> }
    \new Voice { g'2-5 }
  >> |
  <g,-1 c-3 e-5>1^\ChordC |\bar "|."
}

sustainRestart = \sustainOff \sustainOn
EmptySustain = { s4\sustainRestart s4\sustainRestart s4\sustainRestart s4\sustainRestart }

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \set Staff.pedalSustainStyle = #'bracket
  
  c2_1\sustainOn g_2\sustainRestart |
  a2_1\sustainRestart e_3\sustainRestart |\break
  
  f2_2\sustainRestart c_5\sustainRestart |
  f2_3\sustainRestart g_2\sustainRestart |
  c2_1\sustainRestart g_2\sustainRestart |\break
  
  a2_1\sustainRestart e_3\sustainRestart |
  f2_2\sustainRestart c_5\sustainRestart |
  f2_3\sustainRestart g_2\sustainRestart |\break
  
  c'4_2\sustainRestart e_1\sustainRestart g,8_5\sustainRestart( b d b) |
  b8_4\sustainRestart( c_2 e_1 c_2 e,_5\sustainRestart g b) r |\break
  
    f8_4\sustainRestart[ a_2] c_1 r c,_5\sustainRestart[ e] g r |
  << 
    { s4\sustainRestart s4\sustainRestart s4\sustainRestart s4\sustainRestart_\markup { 抬手 } }
    \new Voice { f2 g_1 }
  >> |\break
  
  << \EmptySustain \new Voice { c,2_1 g_2 } >> |
  << \EmptySustain \new Voice { a2_1 e_3 } >> |\break
  
  << \EmptySustain \new Voice { f2_2 c } >> |
  << \EmptySustain \new Voice { f2_3 g } >> |\break
  
  << \EmptySustain \new Voice { c2_1 g_2 } >> |
  << \EmptySustain \new Voice { a2 e_3 } >> |\break
  
  << \EmptySustain \new Voice { f2 c } >> |
  << \EmptySustain \new Voice { f2_3 g } >> |\break
  
  << \EmptySustain \new Voice { c2_1 g_2 } >> |
  << \EmptySustain \new Voice { a2 e_3 } >> |\break
  
  << \EmptySustain \new Voice { f2 c } >> |
  << \EmptySustain \new Voice { f2_3 g } >> |\bar"||"\break
  
  c8_5(\sustainRestart e g4) <b d>_1_2\sustainRestart q\sustainRestart |
  <a c>4_1_3\sustainRestart q\sustainRestart <g b>_1_3\sustainRestart q\sustainRestart |
  <f a>4_1_3\sustainRestart q\sustainRestart <e g>_1_3\sustainRestart q\sustainRestart |\break
  
  <f a>4_1_2\sustainRestart q\sustainRestart g_1\sustainRestart g,\sustainRestart |
  c8_5(\sustainRestart e g4) <b d>_1_2\sustainRestart q\sustainRestart |
  <a c>4_1_3\sustainRestart q\sustainRestart <g b>_1_3\sustainRestart q\sustainRestart |\break
  
  <f a>4_1_3\sustainRestart f\sustainRestart <e g>_1_3\sustainRestart q\sustainRestart |
  <f a>4_1_2\sustainRestart q\sustainRestart g\sustainRestart g,\sustainRestart |
  c8_5\sustainRestart g' r4 g,8_5\sustainRestart d' r4 |\break
  
  a8_5\sustainRestart e' r4 e,8_5\sustainRestart b' r4 |
  f8_5\sustainRestart c' r4 c,8_5\sustainRestart g' r4 |
  f8_5\sustainRestart c' r4 g8_5\sustainRestart d' r4 |\break
  
  c2_1\sustainRestart g_2\sustainRestart |
  a2\sustainRestart e\sustainRestart |
  f2\sustainRestart c\sustainRestart |
  f2\sustainRestart g\sustainRestart |
  c,1\sustainRestart |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "帕赫贝尔卡农"
    composer = \markup{ \column \right-align { "[德] 约翰•帕赫贝尔 曲" "(1653-1706)"}}
    arranger = "改编曲"
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
