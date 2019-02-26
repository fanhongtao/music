\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P43

keyTime = {
  \key a \major
  \time 3/4
}

\markup { \fill-line { "新的手法" } }

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  a4-1 b-2 cis-3 \bar "" d-4 e-5 \bar "||"
}

left_hand = \relative c {
  \clef bass
  \keyTime
  \stemDown
  d4_5 e_4 fis_3 gis_2 a_1
}

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
  \tempo "M.M. " 4=138
  \override Hairpin.to-barline = ##f
  
  cis4.-3\mp d8-4 cis4-3 |
  e2-5 e4-5 |
  b4.-2 cis8-3 b4-2 |
  d2-4 d4-4 |\break
  
  a2-1 a4\< |
  b2-2 b4\! |
  cis2-3 d4-4\> |
  cis2-3 b4-2\! |\break
  
  cis4.-3\mp d8-4 cis4-3 |
  e2-5 e4 |
  b4.-2 cis8-3 b4-2 |
  d2-4 d4 |\break
  
  a2-1 b4-2 |
  cis2-3 d4-4 |
  cis2-3\> b4-2 |
  a2.-1\! |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  a'2._1 |
  e2._4 |
  gis2._2 |
  e2._4 |\break
  
  fis2._3 |
  gis2._2 |
  a2_1 d,4_5 |
  e2_4 gis4_2 |\break
  
  a2._1 |
  e2._4 |
  gis2._2 |
  e2._4 |\break
  
  fis2_3 gis4_2 |
  a2_1 d,4_5 |
  e2_4 gis4_2 |
  a2._1 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "莫扎特的“旋律”"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
