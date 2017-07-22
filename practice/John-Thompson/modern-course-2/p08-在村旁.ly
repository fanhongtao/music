\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P08

keyTime = {
  \key f \major
  \time 4/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Con moto"
  \override Hairpin.to-barline = ##f
  
  c,8-1\mf\< cis-2 d-1 dis-2 e4-1 a-5\! |
  g4-4 f-3 c-1 r |
  c8-1\p cis-2 d-1\< dis-2 e4-1 a\!\> |
  f2. r4 \! |\break
  
  f8-1 fis-2 g-1 gis-2\< % Fix: 原谱此处显示 “cresc.”
  a4-1 d-5\! |
  c4-4 bes f r
  g8-1 gis-2 a-1\< bes-2 b!4-1 e-5\! |
  c2.-2\f r4 |\break
  
  c8-1\f cis-2 d-1 dis-2 e4-1 a-5 |
  g4-4 f c r |
  a8-1\mf bes-2 b!-1 c-2 cis4-3 f-5 |
  e4-4 d-3 a-1 r |\break
  
  f8-1 fis-2 g-1\< gis-2 a4-1 d-5\! |
  c4-4 bes-3 f-1 g-2 |
  a4-3(\> c) g-2( c) |
  f,2\! r |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  bes'2_1 c,_5 |
  a'2._1 r4 |
  bes2 c, |
  a'2. r4 |\break
  
  ees'2_1 f,_5 |
  d'2._1 r4 |
  f2_1 g,_5 |
  e'2._1 r4 |\break
  
  \clef treble bes'2_1 c,_5 |
  a'2._1 r4 |
  g2_1 a,_5 |
  f'2._1 r4 |\break
  
  \clef bass ees2_1 f,_5 |
  d'2_1 des_2 |
  c2_1 bes_2 |
  <f a>2_3_5 r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "在 村 旁"
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
