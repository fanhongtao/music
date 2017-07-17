\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P59

\markup { \vspace #1 }

keyTime = {
  \key c \major
  \time 2/4
}


upper_repeat = \relative c'' {
  <c, e>8-1-3_.\p_\markup { \halign #-1.5 \italic "sharp staccato" } q-1-3_. q-1-3_. q-1-3_. |
  <e g>4-3-5 <c e>-1-3 |
  <d f>8-2-4_. q-2-4_. <e g>-3-5_. <d f>-2-4_.
  <c e>2-1-3 |\break
  
  <c e>8-1-3_. q_. q_. q_. |
  <e g>4-3-5 <c e>-1-3 |
  <d f>8-2-4_. q_. <e g>-3-5_. <d f>-2-4_.
  <c e>2-1-3 |\break\bar "||"
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "嬉戏地  M.M. " 4.=56-88
  
  \upper_repeat
  
  \tag #'pdf
  {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.font-size = #-0.5
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -8 )
    \mark \markup { \italic {"Fine"} }
  }
  
  <c, d>8-1-2_. q_. q_. q_.|
  <b d>8-1-2_. q_. q_. q_.|
  <c d>8-1-2_. q_. q_. q_.|
  <<
    { \once \slurUp d4-1-2( g-5) }
    \new Voice {
      \stemDown b,2
    }
  >> |\break
  
  <c d>8-1-2_. q_. q_. q_.|
  <b d>8-1-2_. q_. q_. q_.|
  <c d>8-1-2_. q_. q_. q_.|
  <<
    { g'4-1-5 f-4 }
    \new Voice {
      \stemDown b,2
    }
  >> |\bar"||"\break
  
  \tag #'pdf
  {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    %\once \override Score.RehearsalMark.direction = #DOWN
    \once \override Score.RehearsalMark.font-size = #-1
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -9.5 )
    \mark \markup { \italic {"D.C. al Fine"} }
  }
  
  \tag #'midi {
    \upper_repeat
  }
}

lower_repeat = \relative c {
  c4_2 g_5 |
  c4_2 g_5 |
  b4_3 g_5 |
  c4_2 g_5 |\break
  
  c4_2 g_5 |
  c4_2 g_5 |
  b4_3 g_5 |
  c2_2 |\bar "||"
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \lower_repeat
  
  a4_4 d_1 |
  g,4_5 d'_1 |
  a4_4 d_1 |
  g,4_5 d'_1 |\break
  
  a4_4 d_1 |
  g,4_5 d'_1 |
  a4_4 d_1 |
  g,2_5 |\bar"||"\break
  
  \tag #'midi {
    \lower_repeat
  }
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "手腕断奏"
}

\markup { \vspace #1 }

\score {
  \header {
    title = "雪   橇"
  }
  \keepWithTag #'pdf
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
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
