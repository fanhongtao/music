\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P09

keyTime = {
  \key c \major
  \time 4/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Lively"
  %\override Hairpin.to-barline = ##f
  
  c4-4\mf c8( b a4) a |
  g4-1 g8-4( f e4) e8-2( f |
  g4)\< c,4-1^( d-2 f-4\! |
  e4.-3\> d8 c4)\! r |\break
  
  c'4-4 c8( b a4) a |
  g4-1 g8-4( f e4) e8-2(\< f |
  g4-4) c,4-1\!^( d-2 f-4\> |
  e4.-3 d8 c4\!) r |\break
  
  c'4-4\f c8([ a] b-3[ a] g4) |
  c8([ d] c[ a] b-3[ a]) g4 |
  c4-4 c8( b a4-2 d |
  b4.-3 a8 g4) a8(\mf b |\break
  
  c4-4) c8( b a4) a |
  g4-1 g8-4( f e4) e8-2(\< f |
  g4-4\!) c,4-1^( d f-4\> |
  e4.-3 d8 c4\!) r |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  c4_4( e_2 f2_1) |
  g4_4( b_2 c2_1) |
  r4 bes_2( a_1 aes_2 |
  g4_1 f_2 e_3) r |\break
  
  c4_4( e f2) |
  g4_4( b c2) |
  r4 bes_2( a_1 aes_2 |
  g4_1 f e) r |\break
  
  \clef treble r4 <c' e>_3_5 r <c f>_2_5 |
  r4 <c e> r <c f> |
  r4 <c e> r4 <c fis>_2_5 |
  r4 d_2( b_4) r |\break
  
  \clef bass c,4_4( e f2) |
  g4_4( b c2) |
  r4 bes_2( a_1 aes_2 |
  g4 f <c e>_3_5) r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "乡 村 庭 园"
    composer = "英格兰莫利斯舞"
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
