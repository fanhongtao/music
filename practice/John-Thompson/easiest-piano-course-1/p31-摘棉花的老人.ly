\version "2.18.2"

\header {
  title = "摘 棉 花 的 老 人"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  R1 |
  R1 |
  r2 e,-3 |
  d4 c2 r4 |
  R1 |
  r2 r4 d-2 |
  c1~ |
  c1 |\break
  
  e2-3 e |
  c4 d2 c4 |
  e2 e |
  c4 d2 c4 |
  e2 e |
  d4 c d2 |
  c1~ |
  c1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  g'2_4 g |
  a4 c2 a4 |
  g2 r2 |
  r2 r4 a4_3 |
  g2 g |
  a4 c2 r4 |
  R1 |
  R1 |\break
  
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |\bar "|."
}

text = \lyricmode {
  Pick -- in' |
  cot -- ton, I've |
  \set associatedVoice = "uppervoice" not for -- |
  got- \set associatedVoice = "lowervoice" ten, The |
  hours I've |
  spent \set associatedVoice = "uppervoice" in the |
  sun. __ |\break
  
  Bend -- in' |
  o -- ver, you're |
  not in |
  col -- over, The |
  work is |
  no -- bod -- y's |
  fun. __ |
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" { \new Voice = "uppervoice" \upper }
    \new Staff = "lower" { \new Voice = "lowervoice" \lower }
    \new Lyrics \with { alignBelowContext = "upper" } \lyricsto "lowervoice" \text
  >>
  \layout { }
  \midi { }
}
