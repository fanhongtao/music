\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  c,4-1 c8 c c4 c8 c |
  e4-3 g8-5 g e4 c |
  r1 |
  r1 | \break
  
  c4 c8 c c4 c8 c |
  e4 g8 g e4 c |
  r1 |
  r1 | \bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature

  r1 |
  r1 |
  d'4_1 d8 d d4 d8 d |
  b4_3 d8 d b4 g | \break
  
  r1 |
  r1 |
  d'4 d8 d g,4 g |
  c1 | \bar"|."
}

text = \lyricmode {
  One lit -- tle, Two lit -- tle, |
  Three lit -- tle In -- \set associatedVoice = "lower" dians, |
  Four lit -- tle, Five lit -- tle, |
  Six lit -- tle In -- \set associatedVoice = "singer" dians, |
  
  Seven lit -- tle, Eight lit -- tle, |
  Nine lit -- tle In -- \set associatedVoice = "lower" dians, |
  Ten lit -- tle In -- dian |
  boys.
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "复    习"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "十个小印第安人"
    subtitle = ##f
    composer = 民歌
  }
  \new GrandStaff <<
    \new Staff = "upper" { \new Voice = "singer" \upper }
    \new Staff = "lower" { \new Voice = "lower" \lower }
    \new Lyrics \with { alignBelowContext = "upper" } \lyricsto "singer" \text
  >>
  \layout {
    \context {
      \GrandStaff
      \accepts "Lyrics"
    }
    \context {
      \Lyrics
      \consists "Bar_engraver"
    }
  }
  \midi { }
}
