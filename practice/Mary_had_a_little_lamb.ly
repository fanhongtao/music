\version "2.18.2"

\header {
  title = "MARY HAD A LITTLE LAMB"
  poet = "Sarah Josepha Hale, 1830"
  composer = "Traditional"
}

upper = {
  \clef treble
  \time 4/4
  \tempo "Allegro" 4 = 120

  e'4-3 d'-2 c'-1 d'-2 |
  e'4-3 e' e'2 |
  d'4-2 d' d'2 |
  e'4-3 g'-5 g'2 |
  \break
  
  e'4-3 d'-2 c'-1 d'-2 |
  e'4-3 e' e' c'-1 |
  d'4-2 d' e'-3 d'-2 |
  c'1-1 \bar "|."
}

lower = {
  \clef bass
  \key c \major
  \time 4/4

  g1_1 |
  c_5 |
  g_1 |
  c_5 |
  
  g_1 |
  c_5 |
  g_1 |
  e_3 \bar "|."
}

text = \lyricmode {
  Ma- ry had a 
  lit- tle lamb,
  lit- tle lamb,
  lit- tle lamb,
  
  Ma- ry had a
  lit- tle lamb, it's
  fleece is white as snow.
}

\score {
  \new GrandStaff <<
    \new Staff = upper { \new Voice = "singer" \upper }
    \new Lyrics \lyricsto "singer" \text
    \new Staff = lower { \lower }
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