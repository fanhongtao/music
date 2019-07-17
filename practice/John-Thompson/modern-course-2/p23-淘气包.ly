\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P23

songName = "淘气包"
% \include "../../../lib/paper-footer.ily"

\header {
  title = \songName
}

keyTime = {
  \key c \major
  \time 4/4
  % \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto" 4=108
  \override Hairpin.to-barline = ##f
  
  R1 |
  R1 |
  g8-1\<(a-2 g a b4-.-3) d-.-5\! |
  c4-4\>( a8-2 b-3 g2)\! |\break
  
  R1 |
  R1 |
  g'4-.-5 d-.-2 c8-1( b-3 a-2 g-1 |
  c4-.) r \clef bass c,,2^>-2 |\break
  
  \clef treble e'8-1\pp( f-3 e-1 f-3 e4-.-1) r |
  e'8-1( f-3 e-1 f-3 e4-.-1) r |
  <g a>4-.-2-3\pp r <g, a>-.-2-3\> r |
  \clef bass <g, a>1-2-3\! |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  c4-._5\mf^\markup { \halign #-2 \italic "scherzando" } e-._3 g_1( a8_3 b_2 |
  c4-._1) g-._5 e'2->_1 |
  f4_1( g,_5 f' g,) |
  e'4_1( dis_2 e2_1) |\break
  
  c,4_._5 e-._3 g( a8 b |
  c4-._1) g-._5 e'2->_1 |
  f4_1( g,_5 f' g,) |
  e'4-._1 g,-._5 r2 |\break
  
  g8_1( aes_3 g_1 aes_3 g4-.) r |
  \clef treble g'8_1 aes_3 g_1 aes_3 g4_._1 r |
  <c e>4-._2_4 r <c, e>_._2_4 r |
  \clef bass <c, e>1_2_4 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
  \midi { }
}
