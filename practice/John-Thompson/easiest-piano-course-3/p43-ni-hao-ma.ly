\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 6/8
  \tempo "Allegro animato 生气勃勃的快板"
  
  \override DynamicText.X-offset = #-5.2
  \set melismaBusyProperties = #'()
  
  \partial 4. d,8-1_.[\mf r d]( |
  g4.-4) g8_.[ r g8_.] |
  g8_.[ r g8]( fis8_3)[ r g]( |
  a4.) d,  8-1_.[ d_. d_.] |
  r4 r8 d-1_.[ r d]( |\break
  
  a'4.-4) a8_.[ r a_.] |
  a8_.[ r a]( g-3)[ r a]( |
  b4.) d,  8-1_.[ d_. d_.] |
  r4 r8 g-1_.[ r a-2]( |\break
  
  b8-3)[ r b-.] b-.[ r b-.] |
  b4. a8-2_.[ r b]( |
  c8)[ r c-.] c-.[ r c-.] |
  c4. b8-3-.[ r c]( |\break
  
  d4.) d8-.[ r d-.] |
  d8-.[ r c]( b)[ r a]( |
  g4.) d8-2_.[ d_. d_.] |
  r4 r8 \bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 6/8
  
  \partial 4. r4 r8 |
  <g' b>4._3_5 r4 r8 |
  q4. r4 r8 |
  <fis c>4._2_5 r4 r8 |
  d'4._1 r4 r8 |\break
  
  <fis, c'>4. r4 r8 |
  <fis c' d>4._1_2_5 r4 r8 |
  <g b d>4._1_3_5 r4 r8 |
  d'4._1 r4 r8 |\break
  
  <g, d'>4. r4 r8 |
  <g fis'>4._1_5 r4 r8 |
  <g e'>4._1_5 r4 r8 |
  <g ees'>4._1_5 r4 r8 |\break
  
  <fis d'>4._1_5 r4 r8 |
  <fis c' d>4._1_2_5 r4 r8 |
  <g b>4._3_5 r4 r8 |
  g8_5-. r r \bar"|."
}

text = \lyricmode {
  How d'ye |
  do, Mis -- ter |
  John -- son, how d'ye |
  do? _ _ _
  How d'ye |\break
  
  do, Mis -- ter |
  John -- son, how d'ye | 
  do? _ _ _
  We are |\break
  
  with you to a |
  man, we'll do |
  ev -- 'ry -- thing we |
  can. How d’ye |
  do, Mis -- ter |
  John -- son, how d'ye |
  do? 
}

\header {
  title = "你 好 吗？"
}
\markup { \vspace #1 }

\score {
  \new GrandStaff <<
    \new Staff = "upper" { \new Voice = "uppervoice" \upper }
    \new Staff = "lower" { \new Voice = "lowervoice" \lower }
    \new Lyrics \with { alignBelowContext = "upper" } \lyricsto "uppervoice" \text
  >>
  \layout { }
  \midi { }
}

