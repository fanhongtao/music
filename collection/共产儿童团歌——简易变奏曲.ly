\version "2.18.2"

songName = "共产儿童团歌 —— 简易变奏曲"
\include "../lib/paper-footer.ily"
\include "../lib/markups.ily"


\header {
  title = \songName
  composer = "【中】 甘璧华"
}

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "小快板 坚定、果敢" 4=108
  \override DynamicTextSpanner.style = #'none
  % \override Hairpin.to-barline = ##f
  
  c4( e8. c16 d4 g,) |
  c4( e8. c16 d4 g) |
  d4( e8. g16 a4 g) |
  e8.( g16 d8 e g2) |
  c,4( e8. c16 d4 g,) |\break
  
  c4( e8. c16 d4 g) |
  d4( e8. g16 a4 g) |
  e8.( g16 d8 e c2) |
  r8 g( <c e> g) r b( <d g> b) |
  r8 g( <c e> g) r b( <d g> b) |\break
  
  r8 <c d>( e g) r <c, e a>-.[ r <c e g>-.]  |
  r8 <c e>-.[ r <c d>-.] r <b d g>-. q-.[ q-.] |
  r8 g( <c e> g) r b( <d g> b) |
  r8 g( <c e> g) r b( <d g> b) |\break
  
  r8 <c d>( e g) r <c, e a>-.[ r <c e g>-.]  |
  r8 <f g>( a b <e, c'>4) d'16( c b a |
  \key g \major
  g8->) d16( g b8) g16( b a4 d,) |\break
  
  g8-> d16( g b8) g16( b a4 d) |
  a8-> e16( a c8) a16( c e4 d) |
  b8->( d16 b a8) g d' d,( e fis |\break
  
  g8->) d16( g b8) g16( b a4 d,) |
  g8-> d16( g b8) g16( b a4 d) |
  a8-> e16( a c8) a16( c e4 d) |\break
  
  b8-> d16( b a8 d, g4) r |
  g16( d e fis g a b g a g fis e d4) |
  g16( d e fis g a b g a b c cis) d4 |\break
  
  a16( e fis gis a b c! d e4) d |
  b16( g! a b cis a b cis d8) d,( e fis |
  g16) d( e fis g a b g a g fis e d4) |\break
  
  g16( d e fis g a b g a b c cis d4) |
  a16( e fis gis a b c! a e'4 d) |
  b16( g' fis e d c b a g!4) <a, ees' fis>4->\sf\fermata |\break
  
  \time 2/4
  \repeat  volta 2 {
    g'8_\markup { \italic { "non legato" } } d b' g|
    a8 a d e |
    d8 c b a |
  }
  \alternative {
    {
      b8 g d g |
    }
    {
      g2 |
    }
  }\break
  
  \key c \major
  \repeat  volta 2 {
    c8 g e' c |
    d8 d g a |
    g8 f e d |
  }
  \alternative {
    {
      e8 c g c |
    }
    {
      c2 |
    }
  }
  c,,16\mp b a g c b a g |\break 
  
  d'16 c b a g' f e d |
  c'16\cresc b a g c b a g |
  d'16 c b a g' f e d |
  g fis e d g fis e d |\break
  
  g16 fis e d g fis e d |
  a'16 g fis e d c\> b a |
  g16 a g f!\! e f e d |
  c16\mp  b a g c b a g |\break
  
  d'16 c b a  g'f e d |
  c'16 b a g c b a g |
  d'16 c b a g'f e d |
  c' b a g f e d c |\break
  
  a'16 g f e d c b a |
  g'16 f e d c b a g |
  c4 r |
  R2 |
  \repeat  volta 2 {
    <g c>8 r r <g e'> |
    <g d'>8 r g r |\break
    <g c>8 r r <g e'> |
    <b d>8 r <b g'> r |
    <b d>8 r r <b g'> |
    <c a'>8 r <c g'> r |
  }
  \alternative {
    {
      <c e>8( g') <b, d>( e) |
      <b g'>8_\pocof g'16 g g8 g |\break
    }
    {
      <c, e>8( g') <b, d>( e) |
    }
  }
  c8(\< d16 e f g a b\! |
  c8)\mf g16( c e8 c16 e |
  d4 g,) |
  c8( g16 c e8 c16 e |
  d4 g) |\break
  
  d8( a16 d f8 d16 f |
  a4_\pocorit g) |
  e8( e16 g d8 g,) |
  c8(^\atempo_\markup { 突弱 } c16 e d8 g,) |
  c8( c16\< e d8 g,\!) |
  c8( c16\< e d8 g,\!) |\break
  
  c8( c16 e d8 g,) |
  c8.\f( g16 e8 g |
  c8 g c e |
  g8) r \tuplet 3/2 { <f, g> q q } |
  <e c'>8 r r4 |
  c,8 r r 4 |\bar "|."
}

lower = \relative c' {
  \clef treble
  \keyTime
  % \override Hairpin.to-barline = ##f
  \dynamicUp
  
  <c e>4 g <b f'> g |
  <c e>4 g <b f'> g |
  <b d>4 g <c e> g |
  <g c e>8 r <g b f'> r g' f e d |
  <c e>4 g <b f'> g |\break
  
  <c e>4 g <b f'> g |
  <b d>4 g <c e> g |
  <g c e>8 r <g b f'> r <c e>4 \clef bass c, |
  \clef treble c'4_( e8 c d4 g,) |
  c4_( e8 c d4 g) |\break
  
  d4_( e8 g a4 g) |
  e8_( g d e g2) |
  c,4_( e8 c d4 g,) |
  c4_( e8 c d4 g) |\break
  
  d4_( e8 g a4 g) |
  e8_( g d e c4) r |
  \key g \major
  <g' b>8 r r q r <d fis a> q q |
  
  <g b>8 r r q r <d fis a> q q |
  <c e a>8 r r q r <cis g' ais> <d g b> q |
  <e g b>8 r <e g cis> r <d fis> c'( b a! |\break
  
  <g b>8) r r q r <d fis a> q q |
  <g b>8  r r q r <d fis a> q q |
  <c e a>8 r r q r <cis g' ais> <d g b> q |\break
  
  <e g b>8 r <fis c'> r <g b> d( e fis |
  <g b>4) r8 q <fis a>4 r8 q |
  <g b>4  r8 q <fis a>4 r8 q |\break
  
  <c e a>4 r8 q r <cis g' ais> <d g b> q |
  <e g b>4 <e g a!> <d fis a>8 c' b a |
  <g b>4 r8 q <fis a>4 r8 q |\break
  
  <g b>4 r8 q <d fis a>4 r8 q |
  <c e a>4 r8 q r <cis g' ais> <d g b> q |
  d'4 <d, fis c'> g c,!_>_\fermata |\break
  
  \time 2/4
  \repeat  volta 2 {
    << 
      {
        b8[^( d g d)] |
        a8[^( d fis d)] |
        fis,8[^( d' fis d)] |
      } 
      \new Voice { 
        \stemDown  b2 |
        a2 |
        fis2 |
      }
    >>
  }
  \alternative {
    {
      <<
        { g8[^( d' g d)] | }
        \new Voice { \stemDown g,2 | }
      >>
    }
    {
      <<
        { g8[^( d' g b)] | }
        \new Voice { \stemDown g,2 | }
      >>
    }
  }\break
  
  \key c \major
  \repeat  volta 2 {
    << 
      {
        e'8[^( g c g)] |
        d8[^( g b g)] |
        b,8[^( g' b g)] |
      } 
      \new Voice { 
        \stemDown  e2 |
        d2 |
        b2 |
      }
    >>
  }
  \alternative {
    {
      <<
        { c8[^( g' c g)] | }
        \new Voice { \stemDown c,2 | }
      >>
    }
    {
      <<
        { c8^( g' c4) | }
        \new Voice { \stemDown c,2 | }
      >>
    }
  }
  \clef bass
  <g, c>8^!(_\markup { 清晰地 } r e'^!) r |\break
  
  d8^!( r g,^!) r |
  <g c>8^!( r e'^! r |
  d8^! r g^!) r |
  <g, d'>8^!( r <d' g>^! r |\break
  
  <d a'>8^> r <d g>^>) r |
  <d e>8^>\f r <d fis>^> r |
  g2-- |
  <g, c>8^!( r  e'^! r |\break
  
  d8^! r g,^!) r |
  <g c>8^!( r e'-! r |
  d8^! r g^!) r |
  <e g c>4 r8 q |\break
  
  <f a d>4 r8 q |
  <g b d>4 q |
  <c e>8\> g q g |
  q8 g q g\! |
  \repeat volta 2 {
    q8 g q g |
    <b d>8 g q g |\break
    <c e>8 g q g |
    <b d>8 g q g |
    <b d>8 g q g |
    <c e>8 g q g |
  }
  \alternative {
    {
      g'8 g, f' g, |
      g'8 g, a b |\break
    }
    {
      g'8 g, f' g, |
    }
  }
  <c e>4 r |
  \clef treble <c' e>4 r8 q |
  r8 <g b d>[ q q] |
  <c e>4 r8 q |
  r8 <g b d>[ q q] |\break
  
  <f a d>4 r8 q |
  r8 \stemUp <fis cis' d>[ <g cis e> q] \stemNeutral |
  <a c e>8 r <b f'> r |
  <c e>8 q <g d'> q |
  \clef bass <c,e>8 q <g d'> q |
  <c, e>8 q <g d'> q |\break
  
  <c e>8 q <g d'> q |
  <c e>8 r \clef treble g''( c |
  e8 c e g |
  c8) r \clef bass \tuplet 3/2 { <g,, d'> q q } |
  c8 r r4 |
  <c,, \parenthesize c'>8 r r4 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
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
\markup { \vspace #1 }
\markup { 《新版 世界儿童钢琴曲集 A》 P177~180 }
