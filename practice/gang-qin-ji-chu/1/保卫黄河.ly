\version "2.18.2"
% 《钢琴基础教材 修订版 第一册》 P36

\header {
  title = "保 卫 黄 河"
  subtitle = "《黄河大合唱》选曲"
  composer = "冼 星 海 曲"
  arranger = "徐 斐 编曲"
}

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 2/4
  \tempo "快速 有力"
  \override Hairpin.to-barline = ##f
  
  g4-4\f( g8-5 b,-1 |
  d2-2_-) |
  g4-4( g8 b, |
  d2-2_-) |
  b8-1( b4_- d8-2 |
  g4-5 g-5) |\break
  
  e8-3( e4_- c8-1 |
  a'4-5 a) |
  d,8.-4_-\mf( e16 d8 c8 |
  b8-2 a-1 b-2) r |
  d8.-4_-( e16 d8 c |
  b8-2 a-1 b-2 g-1 |\break
  
  d'4.-2_- e8 |
  g4-5 b,-1 |
  d8.-2 b'16-5 a8 g |
  d4.-1 e8-4\> |
  b2-1\!) |
  d'4.-2--( e8 |
  g4-5 b,-1 |\break
  
  d8.-2 b'16-5 a8 g |
  d4.-1 e8 |
  g4-4) r |
  d8-2( b16-1 d e8 d |
  g8-5-!) g-4-!\! r4 |
  d8-2->(\f b16 d e8 d |
  a'8-5-!) a-4-! r4 |\break
  
  d,8.-1\< e16 g8-4-! g-4-!\! |
  r4_\cresc d8.-1\< e16 |
  a8-5-! a-4-!\! d,8.\< e16 |
  b'8-5-! b-4-!\! d,8.-1\< e16\! |
  b'8.-5 a16-4 g4-3~ |
  g2 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 2/4
  
  g'4_1-. d_4-. |
  g4-. d-. |
  g4-. d-. |
  g4-. d-. |
  g4-. d-. |
  g4-. d-. |\break
  
  e4_2-. a,_5_. |
  fis'4_2-. d_4-. |
  g4_1-. d_4-. |
  g4-. d-. |
  g4-. d-. |
  g4-. d-. |\break
  
  g4-. d-. |
  g4-. d-. |
  g4-. d-. |
  fis4_2-. d_4-. |
  g4_1-. d_4-. |
  g4-. d-. |
  g4-. d-. |\break
  
  g4-. d-. |
  fis4-. d-. |
  g4 r |
  R2 |
  <d'_1 b_2 g_4>8-! q-! r4 |
  R2 |
  <e_1 c_2 a_4>8-! q-! r4 |\break
  
  r4 <d_1 b_2 g_4>8-! q-! |
  R2 |
  <d_1 a_3 fis_5>4-! r |
  <d_1 b_2 g_4>4-! r |
  <d_1 a_3 fis_5>4 <d_1 b_2 g_4>~ |
  q2 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


