\version "2.18.2"

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

\paper {
  print-all-headers = ##t
}

\header {
  title = "八 分 音 符"
  subtitle = "三四拍子"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "穿过树林"
    subtitle = ##f
    composer = "威尔士民歌"
  }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markuplist {
  注：1、这首小曲是从第三拍开始的。
  　　2、最后一个小节只有两拍，因为这首小曲是从第三拍开始的。
  　　3、第一小节是“不完全小节”，三四拍子，对应于“强，弱，弱”，所以是弱起，即开始的G需要弹得轻一些。
}