\version "2.18.2"

songName = "我和我的祖国"
\include "../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "秦咏诚 曲"
}

keyTime = {
  \key f \major
  \time 6/8
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Agevole" 8=150
  \override Hairpin.to-barline = ##f
  
  f4-3( g8 a g f |
  e8-2 d-1 a-2 c4.-4) |
  d8-1( e-2 f-3 bes-5 a f |
  g2.-3) |
  f4-3( g8 a g f |\break
  
  e8-2 c-1 a-2 d4.-5) |
  c8.-1(\< d16 e f-1 g4-2 a8-3 |
  bes4.-1~\! bes8 a g |
  f2.-1~ |
  f2.) |\break
  
  \repeat volta 2 {
    c8-4\mf( d c bes a_2 g_1 |
    f4._4 c4_1) r8 |
    f8-1( a-2 f'-5 e-4 d8.-3 a16-1 |
    c2.-2) |
    d8-4( e d c bes-2 a-1 |\break
    
    g4.-4 d-1) |
    e8-3(\> d-2 c-1 c'-5 f,8.-1 g16-2 |
    a2.-3\!) |
    c8-4 d c bes a-2 g-1 |
    f4.-4 c4-1 r8 |\break
    
    f8-1\< a-2 f'-5 e-3 g8.-5 f16-4 |
    d2.-2\! |
    f8-4\> e d c4.-1 |
    d8-4 c bes a4.-1\! |
    e4-3( d8 c4 g'16 f |\break
    
    f2.-4) |
    f'8-3\f( g a g f d |
    \time 9/8 e8-2 d8.-1 a16-2 c2.-4) |
    \time 6/8 f8-3( g a g f d |\break
    
    \time 9/8 e8-2 c8.-1 a16-2 d2.-5) |
    \time 6/8 c8-4\mf( bes a g4.-1 |
    f8-3 d c a'4.-5) |
    bes4.-4(\> g4 f8 |\break
    
    f2.-1\!) |
  }
  f'8-3\f( g a g f d |
  \time 9/8 e8-2 d8.-1 a16-2 c2.-4) |
  \time 6/8 f8-3( g a g f d |\break
  
  \time 9/8 e8-2 c8.-1 a16-2 d2.-5) |
  \time 6/8 c8-4\mf( bes a g4.-1) |
  e8-3( d c a'4.-5) |
  bes4.->-1\f g'->-5~ |\break
  
  g4.~g4 f8-4 |
  f2.~ |
  f2.~ |
  f4. r4 r8 |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  f,4._5( <f' a c>4.-4-2-1) |
  a,4._5( <e' a c>4.-4-2-1) |
  bes4.( < d f bes>4.) |
  c4.( <e g c>4.) |
  f,4.( <f' a c>4.) |\break
  
  a,4.( <d f bes>4.) |
  c,4.( <e' g bes>4.) |
  c,4.( <e' g bes>4.) |
  f,4.( <f' a c>4.) |
  c8-5( f-3 a-2 c-1 a-2 c,-5) |\break
  
  \repeat volta 2 {
    \set fingeringOrientations = #'(right) <c-5 g'-2 c-1>4.( c8-5 g'-2 c-1 |
    f,,8_5 a_2 f'_1 a4-2 f8-1) |
    a,8-5( d-3 a'-1 d4-2 a8-1) |
    e,8-5( a-3 c-2 e4-1 c8-3) |
    d8-5( f-4 a-2 d4-1 d,8-5) |\break
    
    g,8-5( d'-2 g-1 bes4-2 g8-4) |
    c,8-5( g'-3 c-1 e-2 c-1 g-4 |
    f,8-5 c'-3 f-1 a4-2 f8-4) |
    <c g' c>4.-5-2-1 c8 g' c |
    f,,8-5 c'-3 f-1 a4-2 f8-1 |\break
    
    a,8-5 d-3 a'-1 c4-2 a8-1 |
    bes,8-5 f'-2 bes-1 d4-2 bes8-1 |
    c,8-5 e-4 a-2 c-1 a e |
    d8 f a d a f |
    c4.-5 bes'4-1 g8-2 |\break
    
    f4.-1 c8-2 a-4 f-5 |
    f4. r |
    \time 9/8 a4.-5 c8-4 <e g>-2-1 q q q q |
    \time 6/8 d4.-3 a8-5 d-2 f-1 |\break
    
    \time 9/8 a,4.-5 bes8-4 <d f>-2-1 q q q q |
    \time 6/8 c4.-3 g8-5 d' g |
    c,4.-3 a8 e' a |
    c,4. c8-5 g'-2 bes-1 |\break
    
    f4.-3 f8-1 c-2 a-4 |
  }
  f4. r |
  \time 9/8 a4._5 c8-4 <e g>-2-1 q q q q |
  \time 6/8 d4.-3 a8-5 d-2 f-1 |\break
  
  \time 9/8 a,4.-5 bes8-4 <d f>-2-1 q q q q |
  \time 6/8 c4.-3 g8-5 d'-2 g-1 |
  c,4.-4 a8-5 e' a |
  bes,8 f' bes c,-5 g'-2 c-1( |\break
  
  c8-4) g'-1 c,-4( c-1) bes-2 a-3 |
  f8-5 c'-2 f-1 <f a>4.-2-1 |
  <a, c f>2.-5-3-1 |
  f,2. |\bar "|."
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

\markup { \override #'(font-name . "楷体") \column {
  \line { 《钢琴名曲精选 100首》 康薇嘉 吴元会 主编 P167~168 }
  \line { 金盾出版社 2010.8（2018.1 重印）    ISBN 978-7-5082-6388-5  }
  \vspace #1
  \line { 点评： }
  \line { 1. 两次重复之间缺少过渡 }
  \line { 2. 音质相对单薄 }
} }
