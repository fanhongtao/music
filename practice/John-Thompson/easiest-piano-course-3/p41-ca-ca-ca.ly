\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 6/8
  \tempo "Vivace 快而活泼"
  
  b8-5-.\f r r b-. r r |
  b8_.[ r \set melismaBusyProperties = #'() a-4]( g-3)[ r e-2]( |
  d4.)~ \unset melismaBusyProperties d4. |
  g4.-3~ g4. |\break
  
  a8_. r r a-. r r |
  b8_.[ r \set melismaBusyProperties = #'() a]( g)[ r b]( |
  a4.~) \unset melismaBusyProperties a4.~ |
  a8 r r r4 r8 |\break
  
  r8 r \set melismaBusyProperties = #'() d,-1( g-4)[ r a]( |
  g4.) g8-4_.[ r fis]( |
  e8)[ r fis-3]( g)[ r e]( |
  d4.) b'8-5[ r a]( |\break
  
  g8-3)[ r fis]( g)[ r e-1]( |
  fis8-2[) r d]( fis)[ r a]( |
  g4.)~ \unset melismaBusyProperties g4.~ |
  g8 r r r4 r8 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 6/8
  
  <d'_1 b_3 g_5>8-. r r q-. r r |
  q8-. r r q-. r r |
  <b_3 g_5>8-. r r q-. r r |
  q8-. r r q-. r r |\break
  
  << d8_1-. c8_2 fis,8_5 >> r8 r <d' c fis,>8-. r r |
  <d_1 b_3 g_5>8-. r r q-. r r |
  <d c fis,>8-. r r q-. r r |
  q8-. r r d_1[ r \set melismaBusyProperties = #'() c_2]( |\break
  
  <b_3 g_5>8-.) r r r4 r8 |
  q4. r4 r8 |
  <c_2 g_5>8-. r r r4 r8 |
  <b g>4. r4 r8 |\break
  
  <d b g>8-. r r q-. r r |
  <c g>8-. r r q-. r r |
  <b g>8-. r r q-. r r |
  q8-. r r r4 r8 |\bar"|."
}

text = \lyricmode {
  Tramp! Tramp! |
  Tramp! The boys are |
  match- |
  ing, |\break
  
  Cheer up |
  com -- rades they will |
  \set associatedVoice = "lowervoice"
  come. __ _ _  
  And be- |\break
  
  \set associatedVoice = "uppervoice" -neath the star -- ry |
  flag, we shall |
  breathe the air a -- |
  gain, Of the |\break
  
  free land in our |
  own be -- lov -- ed |
  home. __ 
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "六 八 拍 子"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \header {
    title = "嚓，嚓，嚓"
    subtitle = ##t
    composer = "乔治•鲁特"
  }
  \new GrandStaff <<
    \new Staff = "upper" { \new Voice = "uppervoice" \upper }
    \new Staff = "lower" { \new Voice = "lowervoice" \lower }
    \new Lyrics \with { alignBelowContext = "upper" } \lyricsto "uppervoice" \text
  >>
  \layout { }
  \midi { }
}
