\version "2.18.2"
% 《孩子们喜爱的儿童名歌钢琴曲》 许民 主编 P116~118

keyTime = {
  \key c \major
  \time 2/4
  \numericTimeSignature
}


upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegro 富有朝气"
  \override Hairpin.to-barline = ##f
  
  <c e a>4._5_2_1\f e16 g |
  q4 q |
  <c, e>8 <e a> q <a, d>-1-3 |
  <g b e>4-1-2-5 q |
  e'8-2 e16 g a8 a |\break
  
  g8 e d d-2 |
  c8. d16 e g c,8-2 |
  a4 <c e a>-> |
  R2 |
  R2 |\break
  
  \repeat volta 2 {
    a8-1\mp a d8-3 d16-2 d-1 |
    e8 a d, d-2 |
    c8. d16 e8 a-5 |
    d,8.-2 e16 d8 r |
    c8-1 c16 d e8 a-5 |\break
    
    d,8-2 c-1 a-2 a-1 |
    g8.-2 a16-1 d e c8 |
  }
  \alternative {
    {
      a2 |
    }
    {
      a2 |
      <c e a>4.\mf e16 g |\break
    }
  }
  \pageBreak
  
  <c, e a>4 q |
  <c e>8 <e a> q <a, d> |
  <g b e>4 q |
  e'8 e16 g a8 a |
  g8 e d d |\break
  
  c8. d16 e g c,8 |
  a4 d8-2(\mp e-1 |
  a4.-3 c8 |
  a2) |
  d,2-1( |\break
  
  d4. d8-2 |
  c8[ d e g] |
  e2) |
  a,8-1( a'4 g8 |
  e2) |\break
  
  a4.-3( c8 |
  c,4-2 a |
  d4.-3 d8 |
  d8-2 d-1 g4 |
  e8[ a d, g] |\break
  
  e2) |
  r8 <e, a c>-1-3-5\mp[ q q] |
  r8 <f a c> [ q q] |
  r8 <e a cis> r q |
  r8 <f a d>[ q q] \break
  \pageBreak
  
  r8 <e a c> [ q q] |
  r8 <f a d> q4 |
  r8 <e a c> r q |
  r8 q r q |
  r8 q r q |\break
  
  r8 <e g b> r q |
  r8 <c' e> <c e a>4->\f |
  R2 |
  R2 |
  a8\mp a d d16 d |\break
  
  e8 a d, d |
  c8. d16 e8 a |
  d,8. e16 d8 r |
  c8 c16 d e8 a |
  d,8 c a a |\break
  
  g8. a16 d e c8 |
  a2 |
  a8\f a d d16 d |
  e16-3 d e a-5 d,8-2 d |
  c8 c16 d e d e a-5 |\break
  
  d,8-2 d16 e d4 |
  c8 c16 d e d e a |
  d,8-1 d16-3 c a8 a-2 |
  g8 g16 a d e c8 |
  a8 r <c e a>4->\sf |\bar "|."
}


lowerOne = \relative c { a'8-.[ <c e>-. e,-. q-.] }
lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  
  r8 <a' c e>_1_3_5[ q] r |
  r8 q q4 |
  r8 q r <a d f>_1_2_5 |
  r8 <g b e>_1_3_5 q4 |
  a8[ <c e> q q] |\break
  
  a8-5 <cis g'>-3-1 a <d f> |
  g,8[ <c e> q q] |
  a8 e a,4_> |
  a'8-.-4^\p[ <c e>-.-2-1 e,-.-5 q-.-2-1] |
  \lowerOne |\break
  
  \repeat volta 2 {
    \lowerOne |
    \lowerOne |
    \lowerOne |
    \lowerOne |
    \lowerOne |\break
    
    \lowerOne |
    g8-._4[ <b e>-._1_2 e,-._5 <b' e>-._1_2] |
  }
  \alternative {
    {
      \lowerOne |
    }
    {
      a8-. e-. a,4_. |
      r8 <a' c e>[ q] r |\break
    }
  }
  
  r8 <a c e> q4 |
  r8 q r <a d f> |
  r8 <g b e> q4 |
  a8[ <c e> q q] |
  a8[ <cis g'> a <d f>] |\break
  
  g,8[ <c e> q q] |
  <a c e>4 r |
  \clef treble r8 c-5[( e-3 a-1)] |
  r8 c,[( f-2 a)] |
  r8 d,-4[( f a)] |\break
  
  r8 b,[( d g)] |
  r8 c,[( e g)] |
  r8 b,[( e g)] |
  r8 a,[( c e)] |
  r8 gis,[( b e)] |\break
  
  r8 a,[( c e)] |
  r8 a,[( c f)] |
  r8 a,[( d f)] |
  r8 b,[( d g)] |
  r8 a,[( c e)] |\break
  
  \clef bass r8 b[( g e)] |
  a2-1\mf( |
  a4. g8 |
  e4 a |
  d,2) |\break
  
  e4.-3( g8 |
  d8 c d4) |
  e8. a16 d,8 d |
  c8. d16 e8 e |
  e8-1 c a4 |\break
  
  e'8. g16 c,8_3 g_5 |
  a8 r <a e'>4_> |
  a'8-.^\p[ <c e>-. e,-. <c' e>-.] |
  \lowerOne |
  \lowerOne |\break
  
  \lowerOne |
  \lowerOne |
  \lowerOne |
  \lowerOne |
  \lowerOne |\break
  
  g8-.[ <b e>-. e,-. <b' e>-.] |
  \lowerOne |
  \lowerOne |
  \lowerOne |
  \lowerOne |\break
  
  \lowerOne |
  \lowerOne |
  \lowerOne |
  g8-.[ <b e>-. e,-. <b' e>-.] |
  <a c e>8 r <a, e'>4_> |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "草 原 赞 歌"
    subtitle = "—— 动画片《草原英雄小姐妹》插曲"
    composer = "吴应炬   曲"
    arranger = "杨永泽改编"
  }
  \new PianoStaff <<
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
