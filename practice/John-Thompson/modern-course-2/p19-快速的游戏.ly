\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P19

keyTime = {
  \key g \major
  \time 4/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegro"
  \set fingeringOrientations = #'(left)
  \override Fingering.staff-padding = #'()
  \override DynamicText.X-offset = #-3
  <b-1 d-2 g-5>4\f_\markup { \italic { legato } } r r <c-1 d-2 fis\finger "4   ">( |
  <b d g-5>4) r r <c d fis>( |\break
  
  <b d g>4) <c d fis>->( <b d g>) <c d fis>->( |
  <b d g>4) r r2 |\break
  
  g16-1\f_\markup { \italic { legato } } a b c d\< c b c d c\! b\> c d c b a\! |
  g16 a b c d\< c b c d c\! b\> c d c b a\! |\break
  
  g16 b d b a d c a g b d b a d c a |
  g16 a b c d c b a g8 r r4 |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \dynamicUp
  
  g'16_5 a b c d_1\< c b c d c\! b\> c d c b a\! |
  g16 a b c d\< c b c d c\! b\> c d c b a\! |
  
  g16_5 b_3 d_1 b a_4 d c a g b d b a d c a |
  g16 a b c d c b a g8 r r4 |\break
  
  \set fingeringOrientations = #'(left)
  <g-2 b-1>4 r r <d-5 fis-3 c'-1>( |
  <g-2 b-1>4) r r <d fis c'>( |\break
  
  <g b>4) <d fis c'>->( <g b>) <d fis c'>->( |
  <g b>4) r r2 |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }
\markup { 卡尔•车尼尔 1791年2月21日 生于维也纳。}
\markup { \vspace #1 }
\markup { 注意和弦进行中的连奏。 }
\markup { 用干净的手指连奏弹十六分音符的段落。 }
\markup { \vspace #1 }

\score {
  \header {
    title = "快 速 的 游 戏"
    composer = "据 车尼尔 改编"
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
