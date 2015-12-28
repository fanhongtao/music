\version "2.18.2"

\header {
  title = "打夯歌"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 120

  r4 g8-2( a-3 g4) r |
  r4 g8-2( a g4) r |
  r4 a8-2( c) g4 e |
  e4-3 c-1 d-2 r |\break
   
  r4 g8-2( a-3 g4) r |
  r4 g8-2( a-3 g4) r |
  r4 g8-2( a-3 g4) e-1 |
  d4_>-3 r c2_>-2 \bar "|."  
}

lower = \relative c' {
  \clef bass
  \key c \major
  \time 4/4

  c4->_2 r r g->_5 |
  c4->_2 r r g->_5 |
  c4->_2 r r2 |
  r2 r4 g->_5 |\break

  
  c4->_2 r r g->_5 |
  c4->_2 r r g->_5 |
  c4->_2 r r2 |
  r4 g->_3 r2 \bar "|."
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

% 《钢琴基础教材 修订版》 P4