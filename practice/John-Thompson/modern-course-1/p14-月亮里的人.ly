\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P14

keyTime = {
  \key g \major
  \time 3/4
}

upper_hand_one = \relative c'' {
  \clef treble
  \keyTime
  
  b2.-3 | g4 r r \bar "||"
}

lower_hand_one = \relative c {
  \clef bass
  \keyTime
  
  g'4_5 b_3 d_1 | g,4_5 b_3 d_1
}

upper_hand_two = \relative c'' {
  \clef treble
  \keyTime
  
  a4-2 b-3 a-2 | g4-1 b-3 d-5 \bar "||"
}

lower_hand_two = \relative c {
  \clef bass
  \keyTime
  
  c'2._2 | b2._3
}

\markup {\fill-line {
  \hspace #1
  \column {
    \line { \halign #-12 第一 }
    \score {
      \new PianoStaff <<
        \new Staff = "upper" \upper_hand_one
        \new Staff = "lower" \lower_hand_one
      >>
      \layout { }
    }
  }
  \hspace #2
  \column {
    \line { \halign #-12 第二 }
    \score {
      \new PianoStaff <<
        \new Staff = "upper" \upper_hand_two
        \new Staff = "lower" \lower_hand_two
      >>
      \layout { }
    }
  }
  \hspace #1
} }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "Andante M.M. " \note-by-number #2 #0 #UP "= 60 - " \note-by-number #1 #1 #UP " = 54" }
  
  b2.-3 |
  g4-1 r r |
  b2.-3 |
  g4-1 r r |\break
  
  a4-2 b-3 a-2 |
  g4-1 b-3 d-5 |
  a4-2 b-3 a-2 |
  g4-1 b-3 d-5 |\break
  
  b2.-3 |
  g4-1 r r |
  b2.-3 |
  g4-1 r r |\break
  
  a4-2 b-3 a-2 |
  g4-1 b-3 d-5 |
  a4-2^\markup { \italic { "rit." } } b-3 a-2 |
  g2.-1 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  g'4_5 b_3 d_1 |
  g,4_5 b_3 d_1 |
  g,4_5 b_3 d_1 |
  g,4_5 b_3 d_1 |\break
  
  c2._2 |
  b2._3 |
  c2._2 |
  b2._3 |\break
  
  g4_5 b_3 d_1 |
  g,4_5 b_3 d_1 |
  g,4_5 b_3 d_1 |
  g,4_5 b_3 d_1 |\break
  
  c2._2 |
  b2._3 |
  c4_2 d_1 c_2 |
  b2._3 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "月 亮 里 的 人"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
