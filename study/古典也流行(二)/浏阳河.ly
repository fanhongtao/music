\version "2.18.2"

songName = "浏阳河"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  composer = \markup { \right-column {"湖南民歌" "唐壁光 编曲" \vspace #0.3 } }
  arranger = "陈静荠 改编"
}

keyTime = {
  \key g \major
  \time 2/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=60
  \override Hairpin.to-barline = ##f
  
  d8-2\( e16 g e-3 d b-1 d-4 |
  b8-2 a4-1\) r8 |
  g8-1\( g16 a d8 b |
  a16 b g8\) r4 |
  d'8-4\( b16 d e8 d16 r16 |
  b8 d16 b4\) r16 |\break
  
  a8.-5\( g16 e8 d |
  g2\) |
  r4 <d b'>8( q) |
  r4 <fis b>8 q |
  r8 <e a> q q |
  <<
    { 
      f'8\rest g,\< a-3 b-1\!
    }
    \\
    {
      \stemDown e,8\rest e4.
    }
  >> |\break
  
  d'8-2\( g e8. d16 |
  b8-1\) d-5 e,-1( d-2) |
  g8-4 g16-1 a d-4 e d b |
  a8-1 r16 b-5 g a g e |
  d2 |
  <g' a d>2 |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  g4_5_\( d'8_2 e_1 |
  g4_4 a8_3 b_2( |
  d4_1)\) d,_5( |
  g4_1) e8_2\( d |
  b4_5 d_3 |
  e4_2 g_1 |\break
  
  a2_2\) |
  g8._1\( e16_3 d8 e |
  g8_1\) g4_4\( a16 b |
  d8\) d4\( b8_2\) |
  a8._3\( g16_1 e8 d |
  g8 e4._2\) |\break
  
  b4_5\( d_3 |
  e4_2 g_1\) |
  e4_4\( g_2 |
  a4_1 a,_5 |
  d2_1\) |
  d,2 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
  }
  \midi { }
}
