\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P12

upper_hand = \relative c'' {
  \clef treble
  \key c \major
  
  c,4-1 d-2 e-3 f-4 \bar "" g-5 \bar "||"
}

lower_hand = \relative c {
  \clef bass
  \key c \major
  
  c'4_1 b_2 a_3 g_4 \bar "" f_5
}

\markup {\fill-line {
\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper_hand
    \new Staff = "lower" \lower_hand
  >>
  \layout {
    \override Staff.TimeSignature #'stencil = ##f
  }
}
} }

keyTime = {
  \key c \major
  \time 3/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "Moderato M.M. " \note-by-number #2 #0 #UP "= 60 - " \note-by-number #1 #1 #UP " = 54" }
  \override DynamicText.X-offset = #-4.2
  
  e,2-3\mp g4-5 |
  d2.-2 |
  e2-3 g4-5 |
  d2.-2 |\break
  
  e2-3 g4-5 |
  d2-2 g4-5\< |
  c,4-1 g'-5\! fis-4 |
  g2-5\> f4-4\! |\break
  
  e2-3\p g4-5 |
  d2.-2 |
  e2-3 g4-5 |
  d2.-2 |\break
  
  e2-3\< g4-5\! |
  c,2-1 f4-4 |
  e2-3\> d4-2 |
  e2.-3\! |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  c'2._1 |
  b4_2 a_3 g_4 |
  c2._1 |
  b4_2 a_3 g_4 |\break
  
  c2._1 |
  b2._2 |
  a2._3 |
  g2._4 |\break
  
  c2._1 |
  b4_2 a_3 g_4 |
  c2._1 |
  b4_2 a_3 g_4 |\break
  
  bes2._2 |
  a2._3 |
  g2_4 b4_2 |
  c2._1 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "磨 刀 匠"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
