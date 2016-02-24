\version "2.18.2"

\header {
  title = "穿过树林"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4

  \partial 4 r4 |
  r4 e,-3 g8-5 f |
  e4 c r |
  d-2 f8[ e] d c |
  r1*3/4 |\break
  
  r4 e8-3 d r4 |
  r1*3/4 |
  r4 c r |
  c2 \bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4

  \partial 4 g'4_4 |
  c4_1 r r |
  r4 r c |
  r1*3/4 |
  b4_2 g g |\break
  
  c4 r c8_1 b |
  a4_3 f a |
  g4 r b |
  r4 r4 \bar "|."
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
  　　2、三四拍子。
  　　3、最后一个小节只有两拍，因为这首小曲是从第三拍开始的。
}