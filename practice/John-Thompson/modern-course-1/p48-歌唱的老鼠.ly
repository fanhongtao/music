\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P48

\markup { \vspace #1 }

keyTime = {
  \key g \major
  \time 6/8
}

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  g4-1 a-2 b-3 \bar "" c-4 d-5 \bar "||"
}

left_hand = \relative c {
  \clef bass
  \keyTime
  
  g'4_5 a_4 b_3 c_2 d_1
}

\markup { \fill-line { "G大调手位" } }
\markup {\fill-line {
  \score {
    \new PianoStaff <<
      \new Staff = "upper" \right_hand
      \new Staff = "lower" \left_hand
    >>
    \layout {
      \override Staff.TimeSignature #'stencil = ##f
    }
  }
} }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "M.M. " 4.=60-80
  
  \once \override DynamicText.X-offset = #-4.2
  b8-3\mp c-4 b-3 a8-2 b-3 a-2 |
  g4.-1~ g4 a8-2 |
  b8-3 c-4 b-3 a8-2 b-3 a-2 |
  g4.-1~ g4 b8-3( |\break
  
  d4-5) b8-3( d4-5) b8-3( |
  c4-4) b8-3 a8-2 b-3 c-4 |
  d4-5 b8-3( d4-5) b8-3 |
  c8-4 b-3 c-4 a-2 b-3 c-4 |\break
  
  b4.-3 a8-2 b-3 a-2 |
  g4.-1~ g4 r8 |
  b'8-3\p c-4 b-3 a-2_\markup { \italic "rit." } b-3 a-2 |
  g4.-1~ g4 r8 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  d'4._1 c_2 |
  b4._3 g_5 |
  d'4._1 c_2 |
  b4._3( g4_5) r8 |\break
  
  b4._3 g_5 |
  a4._4 c_2 |
  b4._3 g_5 |
  a4._4 c_2 |\break
  
  d4._1 c_2 |
  b4._3( g4_5) r8 |
  \clef treble d''4._1 c_2 |
  <g b>4._3_5~ q4 r8 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "歌 唱 的 老 鼠"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
