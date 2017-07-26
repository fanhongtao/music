\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P16

keyTime = {
  \key g \major
  \time 6/8
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Moderato"
  \override Hairpin.to-barline = ##f
  
  r4_\markup { \italic { dolce leggiero } } r8 g'-5( d b) |
  r4 r8 fis'-4( d c) |
  r4 r8 a'-5( d, c) |
  r4 r8 g'-5( d b) |\break
  
  r4 r8 b'-5( g d) |
  r4 r8 a'-4( g e) |
  r4 r8 a\>( g e) |
  r4 r8 a-5( fis d)\! |\break
  
  r4\p r8 g8-5( d b) |
  r4 r8 fis'8-4( d c) |
  r4 r8 a'8-5( d, c) |
  r4\< r8 g'8-5( d b)\! |\break
  
  r4\mf r8 b'8-5( g d) |
  r4\> r8 a'8-5( e c) |
  r4 r8 a'8-5(_\markup { \italic { poco rit. } } fis d) |
  g4.\! r4 r8 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \set Staff.pedalSustainStyle = #'bracket
  \override Staff.PianoPedalBracket.shorten-pair = #'(0 . -3)
  
  g'8_5\sustainOn( b d) r4 r8\sustainOff |
  a8_4\sustainOn( c d) r4 r8\sustainOff |
  fis,8_5\sustainOn( a d) r4 r8\sustainOff |
  g,8_5\sustainOn( b d) r4 r8\sustainOff |\break
  
  b,8_5\sustainOn( d g) r4 r8\sustainOff |
  c,8_5\sustainOn( e a) r4 r8\sustainOff |
  cis,8_5\sustainOn( e a) r4 r8\sustainOff |
  d,8_5\sustainOn( fis a) r4 r8\sustainOff |\break
  
  g8_5\sustainOn( b d) r4 r8\sustainOff |
  a8_4\sustainOn( c d) r4 r8\sustainOff |
  fis,8_5\sustainOn( a d) r4 r8\sustainOff |
  g,8_5\sustainOn( b d) r4 r8\sustainOff |\break
  
  b,8_5\sustainOn( d g) r4 r8\sustainOff |
  c,8_5\sustainOn( e a) r4 r8\sustainOff |
  d,8_5\sustainOn( a' c) r4 r8\sustainOff |
  <g b>4.\sustainOn r4 \sustainOff r8 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "踏板与琶音组"
}
\markup { \vspace #1 }
\markup { 按照踏板记号学会准确地使用踏板。 }
\markup { 转动地弹琶音，并使两手的衔接自然无间。 }
\markup { 注意表情记号，努力把这首练习曲演奏成富有色彩的小品。 }
\markup { \vspace #1 }

\score {
  \header {
    title = "练 习 曲"
    composer = "杜弗诺伊"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
  \midi { }
}
