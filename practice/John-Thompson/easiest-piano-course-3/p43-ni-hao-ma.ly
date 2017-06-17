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
  <b'_3 g_5>4. r4 r8 |
  q4. r4 r8 |
  <c_2 fis,_5>4. r4 r8 |
  d4._1 r4 r8 |\break
  
  <c fis,>4. r4 r8 |
  << d4._1 c4._2 fis,4._5 >> r4 r8 |
  <d'_1 b_3 g_5>4. r4 r8 |
  d4._1 r4 r8 |\break
  
  <d g,>4. r4 r8 |
  <fis_1 g,_5>4.r4 r8 |
  <e_1 g,_5>4. r4 r8 |
  <ees_1 g,_5>4. r4 r8 |\break
  
  <d_1 fis,_5>4. r4 r8 |
  << d4._1 c4._2 fis,4._5 >> r4 r8 |
  <b_3 g_5>4. r4 r8 |
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

