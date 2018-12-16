\version "2.18.2"

keyTime = {
  \key d \major
  \time 6/8
  \numericTimeSignature
}


upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4.=65
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2 {
    a'2.-3~ |
    a4. fis8-1( g a |
    cis4. b4. |
    a4.) r8 e-1 fis |\break
    
    g2. |
    g2. |
    d4.~ d4 d8 |
    e2. |\break
    
    a,8-3( a a a fis g |
    a4. cis4.) |
    b8-1( b b  b g b | 
    a2.) |\break
    
    a8-3( a a a cis b |
    a4. g4.) |
    g8-1( g g g fis e |
    d2.) |\break
    
    a'8( a a a fis g |
    a4. cis4.) |
    b8( b b b g b |
    a2.) |\break
    
    a8( a a a cis b |
    a4. g4.) |
    g8( g g g fis e |
    d2.) |\break
    
    d'8-3( d d d a-1 b |
    d4. fis4.) |
    e8( e e e d cis |
    b2.) |\break
    
    cis8-2( cis cis cis cis d |
    e4. a,) |
    cis8-2( cis d e d cis |
    d2.-3)
  }
  <a d>8-1-4( q q q a b |\break
  
  <b d>4-1-2 q8 <b d fis>4.) |
  e8-5( e e e d cis |
  <fis, b>2.-1-2) |
  cis'8( cis cis cis cis d |\break
  
  e4. a,) |
  cis8( cis d e d cis |
  d2.) |
  R2. |
  <b e>8( q q q b cis |\break
  
  <cis e>4 q8 <cis e gis>4.) |
  fis8-5( fis fis fis e dis |
  <gis, cis>2.-1-2) |
  dis'8-2( dis dis dis dis e |\break
  
  fis4. b,) |
  dis8( dis e fis e dis |
  <b dis fis>2.\arpeggio) |
  <fis b e>2.\arpeggio |\bar "|."
}


lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp

  \repeat volta 2 {
    d8\mp-5( a' d-1 e-2 d a) |
    d,8( a' d e\< d a) |
    fis8-5( a cis fis-2 cis a) |
    a,8-5(\! e' a-1 b-2 a e) |\break
    
    g8( b d e d b) |
    g8-5( bes d g-1 d\> bes) |
    a8-5( d e a-1 e d)\! |
    <a cis e a>2.\arpeggio |\break
    
    d,8-5\p( a' d-1 e-2 d a) |
    fis8-5( a cis fis-1 cis a) |
    g8( b d e d b) |
    a8( d e a e d) |\break
    
    d,8( a' d e d a) |
    a,-5( g'-1 b-2 d-1 b g) |
    g8-3( b d e,-5 b' d) |
    d,8( a' d e d a) |\break
    
    d,8\mp( a' d e d a) |
    fis8( a cis fis cis a) |
    g8( b d e d b) |
    a8( d e a e d) |\break
    
    d,8( a' d e d a) |
    a,8( g' b d b g) |
    g8( b d e, b' d) |
    d,8( a' d e d a) |\break
    
    d,8\mf( a' d e d a) |
    fis8( b d fis d\> b) |
    e,8( g b e b g) |
    fis8(\! a d fis d a) |\break
    
    fis8-5(\< a cis fis-1 cis a) |
    a8-5( cis e a-1\! e cis) |
    a8( d e a e d) |
    d,8( a' d e d a) |
  }
  d,8\f( a' d e d a) |\break
  
  fis8( b d fis d b) |
  e,8(\> g b e b g) |
  fis8(\! a d fis d a) |
  fis8( a cis fis cis a) |\break
  
  a8( cis e a e cis) |
  a8( d e a e d) |
  d,8( a' d e d a) |
  d,8-5\< a' d-1 e,-5 b' e-1\! |
  e,8-5\ff( b' e-1 fis-2 e b) |\break
  
  gis8( cis e gis e cis) |
  fis,8( a cis fis cis a) |
  gis8-5( b e gis-1 e b) |
  gis8( b dis gis dis b) |\break
  
  b8( dis fis b fis dis) |
  b8( e fis b fis e) |
  <b, fis' b>2.\mf\arpeggio |
  \once \override DynamicText.X-offset = #1
  <e fis b>2.\mp\arpeggio |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "同 桌 的 你"
    composer = "高晓松  曲"
  }
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
  % \midi { }
}

\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}

\markup {
  原谱来自：
  \with-url #"http://www.qupu123.com/qiyue/gangqin/tongzhuodeni.html" {
    中国曲谱网（http://www.qupu123.com/qiyue/gangqin/tongzhuodeni.html）
  }
}
% 版本一：选自《111首经典歌曲改编的钢琴曲》