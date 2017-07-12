\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P18

keyTime = {
  \key c \major
  \time 3/4
}

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  <f, g>4-2-3 r4 r |
  <e g>4-1-3 r r \bar "||"
}

left_hand = \relative c {
  \clef bass
  \keyTime
  
  \partial 4 c'4_1( |
  b4_2) r a_1( |
  g4_2) r f_1( |
  e4_2) r d_1( |
  c4_2)
}

\markup {\fill-line {
  \hspace #1
  \column {
    \line { \halign #-10 左手 }
    \score {
      \new Staff = "lower" \left_hand
      \layout { }
    }
  }
  \hspace #2
  \column {
    \line { \halign #-10 右手 }
    \score {
      \new Staff = "upper" \right_hand
      \layout { }
    }
  }
  \hspace #1
} }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "M.M. " 4=80
  
  \partial 4 r4 |
  <f, g>4-2-3_. r4 r |
  R2. |
  R2. |
  <e g>4-1-3_. r r |\break
  
  <f g>4-2-3_. r4 r |
  R2. |
  R2. |
  <e g>2-1-3 \bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \partial 4 c'4_1( |
  b4_2) r a_1( |
  g4_2) r f_1( |
  e4_2) r d_1( |
  c4_2) r c'-1( |\break
  
  b4_2) r a4_1( |
  g4_2) r f_1( |
  e4_2) r d_1( |
  c2_2) \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "快 乐 的 小 丑"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
