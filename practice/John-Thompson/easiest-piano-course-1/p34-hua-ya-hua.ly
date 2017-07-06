\version "2.18.2"

\header {
  title = "划 呀 划"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  
  R2. |
  R2. |
  R2. |
  R2. |\break
  
  R2. |
  R2. |
  d,2.-2~ |
  d2. |\break
  
  g4-5 g g |
  d4-2 d d |
  R2. |
  R2. |
  d2-2 c4 |
  R2. |
  R2. |
  R2. |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  
  g'2._4 |
  g2. |
  g2 a4 |
  b2. |\break
  
  b2 a4 |
  b2 c4 |
  R2. |
  R2. |\break
  
  R2. |
  R2. |
  b4_2 b b |
  g2. |
  R2. |
  b2 a4 |
  g2.~ |
  g2. |\bar "|."
}

text = \lyricmode {
  Row, |
  row, |
  row, your |
  boat, |\break
  
  Gen -- tly |
  down \set associatedVoice = "uppervoice" the |
  stream, __ |\break
  
  Mer -- ri -- ly, |
  mer -- ri -- \set associatedVoice = "lowervoice" ly, |
  mer -- ri -- ly, |
  \set associatedVoice = "uppervoice" oh! |
  Life \set associatedVoice = "lowervoice" is |
  but a |
  dream. __ |
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
