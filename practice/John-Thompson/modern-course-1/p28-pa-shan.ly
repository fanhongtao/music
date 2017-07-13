\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P28

keyTime = {
  \key c \major
  \time 3/4
}

\markup { \fill-line { \huge "C大调手位" } }

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  c,4-1 d-2 e-3 \bar "" f-4 g-5 \bar "||"
}

left_hand = \relative c {
  \clef bass
  \keyTime
  \stemDown
  c4_5 d_4 e_3 f_2 g_1
}

\markup {\fill-line {
  \score {
    \new PianoStaff <<
      \new Staff = "upper" \right_hand
      \new Staff = "lower" \left_hand
    >>
    \layout {
      \context {
        \Staff
        \remove "Time_signature_engraver"
      }
    }
  }
} }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "M.M. " \note-by-number #2 #0 #UP "= 60 - " \note-by-number #1 #1 #UP " = 50" }
  
  R2. |
  c,4-1 e-3 g-5 |
  f4-4 e-3 d-2 |
  c2.-1 |\break
  
  R2. |
  c4-1 e-3 g-5 |
  f4-4 e-3 d-2 |
  c2.-1 |\break
  
  r4 d-2 e-3 |
  f4-4 e-3 d-2 |
  r4 e-3 f-4 |
  g4-5 f-4 e-3 |\break
  
  R2. |
  c4-1 e-3 g-5 |
  f4-4 e-3 d-2 |
  c2.-1 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  c4_5 e_3 g_1 |
  R2. |
  r4 g_1 f_2 |
  e2._3 |\break
  
  c4_5 e_3 g_1 |
  R2. |
  r4 g_1 f_2 |
  e2._3 |\break
  
  g2._1 |
  R2. |
  g2._1 |
  R2. |\break
  
  c,4_5 e_3 g_1 |
  R2. |
  r4 g_1 f_2 |
  e2._3 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "爬  山"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
