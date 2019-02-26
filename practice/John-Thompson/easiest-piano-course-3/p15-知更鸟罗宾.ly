\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4
  \numericTimeSignature
  \tempo "Allegretto 小快板"
  
  \once \override DynamicText.X-offset = #-5.2
  \partial 2 f,4-1\mf g-2 |
  a8-3( c-5) r4 a-3 |
  g8( c) r4 a-3( |
  f4) r r |
  r4 r f8 g |\break
  
  a8-3(\< c) r4 a\! |
  \override Hairpin.to-barline = ##f
  g8-2( c) r4 a-3\> |
  f2.~\! |
  f4 f\< g\! |\break
  
  a8-3( f) r4 g |
  a8( f) r4 g |
  a8( f) r4 g |
  aes4-3\fermata r4 f8 g |\break
  
  a8-3( c) r4_\markup { \italic "cresc." } a |
  g8-2( c) r4 a\> |
  f2.~ |
  f4\! \bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 3/4
  \numericTimeSignature
  
  r4 r |
  f4_5-. r r |
  bes4_2-. r r |
  a4_3-. r c-. |
  c2 r4 |\break
  
  f,4-. r r |
  bes4-. r r |
  a2.~ |
  a4 r r |\break
  
  bes2._1 |
  cis2._2 |
  c!2._3 |
  b4_4\fermata r r |\break
  
  c4_1-. r r |
  bes4_2-. r r |
  a2.~ |
  a4 \bar"|."
}

\header {
  title = "知 更 鸟 罗 宾"
}
\markup { \vspace #1 }

\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup { 参考 \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/writing-pitches#accidentals" {
    Accidentals
  }
}
