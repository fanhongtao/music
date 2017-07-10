\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  \numericTimeSignature
  \tempo "Moderato 中板"
  \set melismaBusyProperties = #'()
  
  \partial 4 r4 |
  r4 r c,-1( |
  d4-2) r d-2 |
  e4-3 g-5 e |
  c2 r4 |\break
  
  r4 r c( |
  d4) r f-4 |
  e2.-3( |
  c4) r r |\break
  
  r4 r c-1( |
  d4-2) r d |
  e4 g e |
  c2. |\break
  
  \stemDown
  \once \override DynamicText.X-offset = #-2.6
  <gis' a>4_2_3->-.\f
  r4 r |
  \stemNeutral
  d4-2_. r4 f-4_. |
  e2.-3( |
  c4) r \bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  \numericTimeSignature
  \set melismaBusyProperties = #'()
  
  \partial 4 g'4_5( |
  c4_2) r r |
  R2. |
  R2. |
  r4 r g_5( |\break
  
  c4_2) r r |
  R2. |
  R2. |
  r4 r g_5( |\break
  
  c4_2) r r |
  R2. |
  R2. |
  R2. |\break
  
  s2.^左手跨越过去 |
  R2.|
  R2. |
  r4 r \bar"|."
}

text = \lyricmode {
  Now |
  \set associatedVoice = "uppervoice"  all a- |
  round the |
  cob - bler's |
  \set associatedVoice = "lowervoice" bench, The |
  
  \set associatedVoice = "uppervoice" mon- key |
  chased the |
  wea- | \set associatedVoice = "lowervoice" sel; The |
  
  
  \set associatedVoice = "uppervoice" mon- key |
  thought 'twas |
  all - in |
  fun. |
  
  Pop! |
  goes the |
  wea- sel. |
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "二 音 连 线"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \header {
    title = "黄鼠狼逃跑了"
    subtitle = ##t
    
  }
  \new GrandStaff <<
    \new Staff = "upper" { \new Voice = "uppervoice" \upper }
    \new Staff = "lower" { \new Voice = "lowervoice" \lower }
    \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "lowervoice" \text
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

\markup { 参考 \with-url #"http://lsr.di.unimi.it/LSR/Snippet?id=308" {
    Dashed slurs indicating optional slurs between lyric lines
  }
}
