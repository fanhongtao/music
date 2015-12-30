\version "2.18.2"

\header {
  title = "嘎达梅林"
  composer = "内蒙民歌"
}

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
  \tempo "悲壮"

  r1 |
  d,4-2 e-3 r2 |
  \slurDown
  a,4-2( b8 a r2 |
  a4.\<-1 b8-2 d4-3 g\!-5 |
  e1-5) |\break
  
  r1 |
  d4-2 e-3 r2 |
  r1 |
  a,4.-2-> b8-3 d4-5 r4 |
  r1 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 4/4

  e4_5(\f b'_1 b_1 a8 b |
  r2 g4_2 e_4) |
  r2 g4_2 e_4 |
  r1 |
  r1 |\break
  
  d'4_2( e_1\> d_2 b8_4 d_2 |
  r2\! g,4_2 e_4) |
  g4_2( e8_4\< g d4_5 e\! |
  r2 r4 g_2 |
  e1_4) |\bar "|."
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markuplist {
  注：1、歌词：南方飞来的小鸿雁，不落长江不呀不起飞，要说起义的嘎达梅林，是为了蒙古人民的土地。
  　　2、为使乐句连贯与指法方便，手的位置在此曲中经常要移动。
  　　3、谱号后面一个＃记号为G大调的调号，即此曲中如出现F音都要升半音。
  　　4、第四小节3~5指的跨度是四度，弹奏时要保持音的连贯。
}

% 《钢琴基础教材 修订版 第一册》 P7