\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P47

\markup { \vspace #1 }

keyTime = {
  \key f \major
  \time 6/8
}

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  f,4-1 g-2 a-3 \bar "" bes-4 c-5 \bar "||"
}

left_hand = \relative c {
  \clef bass
  \keyTime
  
  f4_5 g_4 a_3 bes_2 c_1
}

\markup { \fill-line { "F大调手位" } }
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
  \tempo "Allegretto M.M. " 4.=60-80
  \override Hairpin.to-barline = ##f
  
  \partial 8 c8-5(\mp |
  a8-3)[ r c-5]( a-3)[ r c-5]( |
  a8-3)[ r c-5]( a-3)[ r c-5]( |
  bes8-4)[ r a-3]( g-2)[ r a-3]( |
  f8-1)[ r a-3]( c-5)[ r c-5]( |\break
  
  a8-3)[ r c-5]( a-3)[ r c-5]( |
  a8-3)[ r c-5]( a-3)[ r c-5]( |
  bes8-4)[ r a-3]( g-2)[ r a-3]( |
  f4.-1) r4 a'8-3( |\break
  
  f4.-1) r4 a8-3( |
  f4.-1) r4 a,8-3(\< |
  g8-2)[ r\! a-3]( bes-4)[ r g-2](\> |
  f4.-1)\! r4 \bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \partial 8 r8 |
  f4.-5 c'-1 |
  f,4.-5 c'-1 |
  f,4.-5 c'-1 |
  f,4.-5 c'-1 |\break
  
  f,4.-5 c'-1 |
  f,4.-5 c'-1 |
  f,4.-5 c'-1 |
  f,4.-5 r4 r8 |\break
  
  R2. |
  R2. |
  bes4.-2 c-1 |
  <f, a>4._3_5 r4 \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "布 谷 钟"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
