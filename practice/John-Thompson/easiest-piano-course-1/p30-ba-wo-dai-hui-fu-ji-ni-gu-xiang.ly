\version "2.18.2"

\header {
  title = "把我带回弗吉尼故乡"
  composer = "勃兰德"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  e,4-3 e2 f4 |
  e2. d4 |
  c2 r |
  R1 |\break
  
  r2 c4 d |
  e4 e f e |
  e4 c s2 |
  d1 |
  e2 f4 e |
  e2 d4 c |\break
  
  d2 r |
  R1 |
  r2 c4 d |
  e2 f4 e |
  e4 d r2 |
  c1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  R1 |
  R1 |
  r2 a'2_3 |
  g4 c2. |\break
  
  g2 r |
  R1 
  r2 b4 c |
  R1 |
  R1 |
  R1 |\break
  
  r2 c4 a |
  g4 c2. |
  g2 r |
  R1 |
  r2 c4 b |
  R1 |\bar "|."
}

text = \lyricmode {
  Car -- ry me |
  back to |
  \set associatedVoice = "lowervoice" old Vir -- |
  gin -- ny, |\break
  
  \set associatedVoice = "uppervoice" There's where the |
  cot -- ton and the |
  corn \set associatedVoice = "lowervoice" and 'ta -- \set associatedVoice = "uppervoice" toes |
  grow, |
  There's where the |
  birds war- ble |\break
  
  \set associatedVoice = "lowervoice" sweet in the |
  spring- time, |
  \set associatedVoice = "uppervoice" There's where the |
  old wea -- ry |
  heart \set associatedVoice = "lowervoice" am longed \set associatedVoice = "uppervoice" to |
  go. |
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
