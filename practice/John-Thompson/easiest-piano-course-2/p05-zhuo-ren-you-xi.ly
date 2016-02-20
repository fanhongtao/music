\version "2.18.2"

\header {
  title = "捉人游戏"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4

  c,8-1 d e d |
  c4 r |
  r1*1/2 |
  r1*1/2 |\break
  
  c8 d e f |
  g4 c, |
  e8-3 d r4 |
  r1*1/2 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 2/4

  r1*1/2 |
  r4 g'_4 |
  a4_3 c |
  g2 |\break
  
  r1*1/2 |
  r1*1/2 |
  r4 c8_1 b_2 |
  c2 |\bar "|."
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

\markuplist {
  注：1、八分音符。
  　　2、二四拍子。
}