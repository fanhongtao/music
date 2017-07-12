\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P15

keyTime = {
  \key g \major
  \time 4/4
  \numericTimeSignature
}

upper_hand_one = \relative c'' {
  \clef treble
  \keyTime
  
  \partial 2 g4-1 b-3 | a2-2 \bar "||"
}

upper_hand_two = \relative c'' {
  \clef treble
  \keyTime
  
  d4-5 c-4 b-3 a-2 | b2-3 \bar "||"
}

\markup {\fill-line {
  \hspace #1
  \column {
    \line { \halign #-10 第一 }
    \score {
      \new Staff = "upper" \upper_hand_one
      \layout {
        \override Staff.TimeSignature #'stencil = ##f
      }
    }
  }
  \hspace #2
  \column {
    \line { \halign #-12 第二 }
    \score {
      \new Staff = "upper" \upper_hand_two
      \layout {
        \override Staff.TimeSignature #'stencil = ##f
      }
    }
  }
  \hspace #1
} }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andante M.M. " 4=60-120
  
  \partial 2 g4-1\mp b-3 |
  a2-2 g4-1 b-3 |
  a2-2 g4-1 b-3 |
  d4-5 c-4 b-3 a-2 |
  b2-3 g4-1 b-3 |\break
  
  a2-2 g4-1 b-3 |
  a2-2 g4-1 b-3 |
  d4-5 c-4 b-3 a-2 |
  g2-1 g4-1 b-3 |\break
  
  a2-2 g4-1 b-3 |
  a2-2 g4-1 b-3 |
  d4-5 c-4 b-3 a-2 |
  b2-3 g4-1\pp b-3 |\break
  
  a2-2 g4-1 b-3 |
  a2-2 g4-1 b-3 |
  d4-5^\markup { \italic { "rit."} } c-4 b-3 a-2 |
  g2-1 \bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \partial 2 r2 |
  c'2_2 b_3 |
  c2_2 b_3 |
  a2_4 d_1 |
  g,2_5 b_3 |\break
  
  c2_2 b_3 |
  c2_2 b_3 |
  a2_4 d_1 |
  b2_3 r |\break
  
  c2_2 b_3 |
  c2_2 b_3 |
  a2_4 d_1 |
  g,2_5 b_3 |\break
  
  c2_2 b_3 |
  c2_2 b_3 |
  a2_4 d_1 |
  <g,_5 b_3>2 \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "聚    会"
    composer = "古老的法国童谣"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
