\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P17

keyTime = {
  \key c \major
  \time 3/4
}

upper_hand_one = \relative c'' {
  \clef treble
  \keyTime
  
  c,4-1 d-2 e-3 \bar "" f-4 g-5 \bar "||"
}

lower_hand_one = \relative c {
  \clef bass
  \keyTime
  
  g'4_5 a_4 b_3 c_2 d_1
}

\markup {\fill-line {
  \score {
    \new PianoStaff <<
      \new Staff = "upper" \upper_hand_one
      \new Staff = "lower" \lower_hand_one
    >>
    \layout {
      \override Staff.TimeSignature #'stencil = ##f
    }
  }
} }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "M.M. " \note-by-number #2 #0 #UP "= 80 - " \note-by-number #1 #1 #UP " = 60" }
  
  \partial 4 g4-5( |
  e4-3) r g-5( |
  e4-3) r g-5( |
  f2.-4~) |
  f4 r g'-5( |\break
  
  f4-4) r g-5( |
  f4-4) r g-5( |
  e2.-3~) |
  e4 r g,-5( |\break
  
  e4-3) r g-5( |
  e4-3) r g-5( |
  f2.-4~) |
  f4 r g'-5( |\break
  
  f4-4) r e-3( |
  d4-2) r e-3( |
  c2.-1~) |
  c4 r \bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \partial 4 r4 |
  c'2._2 |
  g2._5 |
  b2._3 |
  g2._5 |\break
  
  b2._3 |
  g2._5 |
  c2._2 |
  g2._5 |\break
  
  c2._2 |
  g2._5 |
  b2._3 |
  g2._5 |\break
  
  b2._3 |
  g2._5 |
  c2._2~ |
  c4 r \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "知 更 鸟"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
