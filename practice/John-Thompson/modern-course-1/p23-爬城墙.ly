\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P23

\include "../../../lib/brackets.ly"

bracket = \squareBracket #'(0.0 . -0.0)  #'1.0
bracketDown = \squareBracketDown #'(0.0 . -9.0)  #'1.0

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  \bracket g4-2\startTextSpan^\markup { \halign #-2.5 \rotate #10 右手 } a-3 b-4( c-5)\stopTextSpan \bar "||"
}


left_hand = \relative c' {
  \clef treble
  \keyTime
  
  \bracketDown c4_5_\markup{ \lower #5.5 \halign #-2.5 { \rotate #10 左手 } }\startTextSpan d_4 \slurUp e_3( f_2)\stopTextSpan
}

\markup { \vspace #1 }
\markup {\fill-line {
  \score {
    \new PianoStaff <<
        \new Staff = "upper" \right_hand
        \new Staff = "lower" \left_hand
      >>
    \layout {
      \override TextSpanner.style = #'solid-line
      \override Staff.TimeSignature #'stencil = ##f
    }
  }
} }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegro M.M. " 4=60-120
  
  R1 |
  \bracket g4-2\startTextSpan a-3 b-4 c-5\stopTextSpan |
  g4-2 a-3 g-2 a-3 |
  g2-2( c4-5) r |\break
  
  R1 |
  \clef bass \bracket g,4-2\startTextSpan a-3 b-4 c-5\stopTextSpan |
  b4-4 g-2 a-3 b-4 |
  c1-5 |\bar"|."
}

lower = \relative c {
  \clef treble
  \keyTime
  \dynamicUp
  
  \once \override DynamicText.Y-offset = #4
  \bracketDown c'4_5\mf\startTextSpan d_4 e_3 f_2\stopTextSpan |
  R1 |
  f1_2 |
  e2._3 r4 |\break
  
  \clef bass \bracketDown c,4_5\startTextSpan d_4 e_3 f_2\stopTextSpan |
  R1 |
  f1_2 |
  e1_3 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "C 大调音阶 —— 上行"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "爬 城 墙"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
    \override TextSpanner.style = #'solid-line
  }
  \midi { }
}
