\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P06

keyTime = {
  \key g \major
  \time 3/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Moderato"
  \override Hairpin.to-barline = ##f
  
  d4-5\mp g,8-1( a b c |
  d4 g,) g-1( |
  e'4-5) c8-1(\< d e fis\! |
  g4-5 g,) g( |\break
  
  c4-4) d8-5( c b a |
  b4) c8-4( b a g |
  fis4-2) g8-1(\> a b g |
  b4-3 a2\!) |\break
  
  d4-5\mp g,8-1( a b c |
  d4 g,) g-1( |
  e'-5) c8-1(\< d e fis |
  g4-5 g,\!) g( |\break
  
  c4-4) d8-5( c b a |
  b4) c8-4( b a g |
  a4) b8-3(\> a_\markup { \italic { allarg. } } g fis-2 |
  g2.\!) |\bar"||"
}

lower = \relative c {
  \clef bass
  \keyTime
  
  <g' b>2_3_5 a4_4 |
  b2._3 |
  c2._2 |
  b2._3 |\break
  
  a2._4 |
  g2._5 |
  d'4_1 b_3 g_5 |
  d'2 c4 |\break
  
  <g b>2_3_5 a4 |
  b2. |
  c2._2 |
  b2. |\break
  
  a2._4 |
  g2._5 |
  c4_2 d_1 d,_5 |
  g2. |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "小 步 舞 曲"
    composer = \markup{ \column { "约 · 塞 · 巴 赫" "(1685 - 1750)"}}
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

\markup { \vspace #1 }
\markup { 小步舞曲是古老的法国舞曲，名称由法文的“小”(memu)而来，指小的舞步。 }
\markup { 弹奏小步舞曲时要不慌不忙，尽可能弹得优美。注意所有的乐句记号。 }

\markup { \vspace #1 }
\markup { 这个版本不完整。 详见 \with-url #"https://github.com/fanhongtao/music/blob/master/practice/gang-qin-ji-chu/1" {
    "《钢琴基础 1》"
  } p56-小步舞曲.ly
}
