\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \numericTimeSignature
  \tempo "Allegretto 小快板"
  
  \once \override DynamicText.X-offset = #-5.2
  \partial 4 d,4_.-2\mp  |
  d4_. d_. d_. |
  e4_.-3 e_. b_. |
  d2._2 |
  r4 r d_. |
  d4_. r d_. |
  e4_. r b_. |\break
  
  d2. |
  r4 r d_.-2 |
  fis4_.-4 r fis_. |
  fis4_. r d8_. d_. |
  fis4_. fis_. fis_. |
  fis4_. r e_. |\break
  
  d4_. d_. d_. |
  e4_. r d_. |
  d2. |
  r4 r d_.-2 |
  d4_. r d_. |
  e4_. r b_. |\break
  
  d2. |
  r4 r d_. |
  d4_. d_. d_. |
  e4_. e_. b_. |
  d2. |
  r4 r d_. |
  fis4_. fis_. fis_. |\break
  
  fis4_. r d_. |
  fis4_. fis_. fis_. |
  fis4_. r e_. |
  d4_. r d_. |
  e4_.-3 d_. e_. |
  g4_.-5 r r |
  r4 r \bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4
  \numericTimeSignature
  
  \partial 4 r4 |
  <g' b>4_3_5-. r4 r |
  R2. |
  q2. |
  R2. |
  q4-. r r |
  R2. |\break
  
  q2. |
  R2. |
  <g c>4_2_5-. r r |
  R2. |
  q4-. r r |
  R2. |\break
  
  q4-. r r |
  R2. |
  <g b>2._3_5 |
  R2. |
  q4-. r r |
  R2. |\break
  
  q2. |
  R2. |
  q4-. r r |
  R2. |
  q2. |
  R2. |
  <g c>4_2_5-. r r |\break
  
  R2. |
  q4-. r r |
  R2. |
  q4-. r r |
  R2. |
  <g b>4_3_5-. r r |
  g,4_._5^\markup { \halign #-1 \rounded-box { "G" } } r \bar"|."
}

text = \lyricmode {
  I went to the An- i- mal Fair, The birds and beasts were
  there. The old ra- coon by the light of the moon was
  comb- ing his au- burn hair. The mon- key went key-
  plunk, Feel o- ver the el- e- phant's trunk. The el- e- phant
  sneezed, Fell down on his knees, So what be- came of the monk!
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "手 腕 断 奏 练 习"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \header {
    title = "动物展览会"
    subtitle = ##t
    composer = "传统歌曲"
  }
  \new GrandStaff <<
    \new Staff = "upper" { \new Voice = "singer" \upper }
    \new Lyrics \lyricsto "singer" \text
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup { 
   有歌词的模版参考： \with-url #"http://lilypond.org/doc/v2.18/Documentation/learning/piano-centered-lyrics" {
    Piano centered lyrics
  }
}