\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P11

keyTime = {
  \key g \major
  \time 2/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Cheerfully"
  \override Hairpin.to-barline = ##f
  \set fingeringOrientations = #'(left)
  
  <b,-1 g'-5>4\mf q8_. <a-1 fis'>_. |
  <b g'>4 <b-1 d-2> |
  <d-1 b'-5> q8_. <cis ais'>_. |
  <d b'>4 <b g'> |\break
  
  <g'-1 b-2>4\< <fis-1 c'-3 e-5>\! |
  <g-1 b-2 d-4>2\f |
  \ottava #1 <g' b>4\pp <fis c' e>\> |
  <g b d>2\!\ottava #0 |\break
  
  <b,-1 d-3>4\mf q8-. <c e>-. |
  <b d>4 <g-1 b-3> |
  <a-2 c-4>4 <a-1 c-3>8-. <b d>-. |
  <a c>4 <fis-2 a-4> |\break
  
  <g-3 b-5>4\< <d-1 a'-4>\! |
  <b'-3 d-5>2 |
  \once \set fingeringOrientations = #'(right)
  <cis,-1 b'-5>4\p\> <c! a'>^\markup { \italic { poco rit. } } |
  <b g'>2\! |\bar"|."
}


left_one = \relative c { g8_.[ d'_. g,_. d'_.] }
lower = \relative c {
  \clef bass
  \keyTime
  
  g8_5_.[ d'_1_. g,_. d'_.] |
  \left_one |
  \left_one |
  \left_one |\break
  
  \left_one |
  \left_one |
  \left_one |
  \left_one |\break
  
  \left_one |
  \left_one |
  \left_one |
  \left_one |\break
  
  \left_one |
  \left_one |
  g,8_5_.[ e'_1_. g,_5_. fis'_1_.] |
  <g, d'>2 | \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "圣 诞 歌"
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
