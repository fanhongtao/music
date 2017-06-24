\version "2.18.2"
% 《钢琴基础教材 修订版 第一册》 P72

\header {
  title = "南  泥  湾"
  composer = "马　　可 曲"
  arranger = "邵元信编曲"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4
  \tempo "中速 歌唱地"
  
  \repeat volta 2 {
    g'8-1( g16-3 g-2 a8-3 c-5 |
    e,8.-1 d16-3 c8-2 a-1) |
    d8-4( d16-3 d-2 e8-3 g-5 |
    c,8.-1 a16-2 g4-1) |
    c8-3( a4-1 e'16 c |\break
    
    d2-4) |
    g8( g16 g a8 c |
    e,8. d16 c8 a) |
    d8( d16 d e8 g |
    c,8. a16 g4) |
    d'8-4( e4-5 c16-3 a-1 |\break
    
    g2) |
    g'8-> g16( e d8) d16( e |
    g8->) g16( e d4) |
    c8-1-> c16-4( a-2 g8-1) g16-1( a-2 |
    c8-4) c16( a g4) |
    c8-4->( c16-3 a-1 c16-2 d e8 |\break
    d4.-3 e8) |
    a8-5 a16( g-4 e8-2 g-5 |
    c,4-2 \grace a8~ <g'-5 a,^1>8) r8\fermata |
  }
  
  a4-3_\markup { \italic "rit." } a8-3( g-2) |
  e8-1( g-2 c-5 a-3 |
  g2-2) |\bar "|."
}

lower = \relative c {
  \clef treble
  \key c \major
  \time 2/4
  
  \repeat volta 2 {
    c'8_5_. a'_1( g_2 e_3) |
    a,8_5_. a'_1( g_2 e_3) |
    g,8_5_. g'_1( e_2 d_3 |
    c8_4 e_1 d_2 c_3 |
    a8_5_.) e'_1( d_2 c_3) |\break
    
    g8_5_. g'_1( e_2 d_3) |
    c8_5_. a'_1( g_2 e_3) |
    a,8_5_. a'_1( g_2 e_3) |
    g,8_5_. \once \slurDown g'_1 ( e_2 d_3 |
    c8_4 e_1 d_2 c_3 \clef bass|
    a8_5 c_1 a_2 d,_5 |\break
    
    g8_3 a_2 c_1 d_2) \clef treble |
    r8 << a'8_1_> g_2 d_5 >> r <a' g d>_> |
    r8 q_> r q_> |
    r8 <g e c a> r <e c a> |
    r8 q r q |
    a,8 c <fis c>4 |\break
    
    g,8 <g' d> q r |
    a,8_5 e'_2 <g_1 c,_4>4 |
    g,8_5 e'_2 <g_1 c,_4> r\fermata |
  }
  a,8_5 e'_2 <g_1 c,_4>4 |
  a,8_5 e'_2 <fis_1 d_3>4 |
  g,8 d' <g_1 b,_4>4 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup { 参考 \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/special-rhythmic-concerns#grace-notes" {
    Grace notes
  }
}
