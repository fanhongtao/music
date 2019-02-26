\version "2.18.2"

\header {
  title = "扬 基 歌"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  c,4-1 c d e |
  c4 e d r |
  r4 c d e |
  c2 r |\break
  
  r4 c d e |
  f4 e d c |
  R1 |
  r2 c |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  R1 |
  r2 r4 g'_4 |
  c4_1 r r2 |
  r2 b4_2 g |\break
  
  c4 r r2 |
  R1 |
  b4 g a b |
  c2 r |\bar "|."
}

text = \lyricmode {
  Yan -- kee Doo -- dle |
  went to \set associatedVoice = "lowervoice" town _ |
  
  \set associatedVoice = "uppervoice" rid -- ing on a |
  \set associatedVoice = "lowervoice" po -- ny, _ |\break
  
  \set associatedVoice = "uppervoice" stuck a feath -- er |
  in his hat \set associatedVoice = "lowervoice" and |
  called him Mac -- a -- |
  \set associatedVoice = "uppervoice" ro -- ni. |
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" { \new Voice = "uppervoice" \upper }
    \new Staff = "lower" { \new Voice = "lowervoice" \lower }
    \new Lyrics \with { alignBelowContext = "upper" } \lyricsto "uppervoice" \text
  >>
  \layout { }
  \midi { }
}
