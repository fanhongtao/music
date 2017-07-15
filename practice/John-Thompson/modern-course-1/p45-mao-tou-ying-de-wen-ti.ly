\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P45

\include "../../../lib/slurs.ly"

\markup { 夜曲，晚上唱的歌，它的抒情风格使人想起夜的安宁。 }
\markup { 乐曲用 \concat { \super \flat B } 大调写。 \concat { \super \flat B } 大调有两个降号： \concat { \super \flat B } , \concat { \super \flat E }。}
\markup { 右手的旋律要弹得流畅如歌。第2、第4行的乐句要有“呼吸”感。 }
\markup { 注意左手的触键不要影响右手如歌音调的主导地位。 }
\markup { \vspace #1 }

keyTime = {
  \key bes \major
  \time 4/4
  \numericTimeSignature
}

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  bes,4-1 c-2 d-3 ees-4 \bar "" f-5 \bar "||"
}

left_hand = \relative c {
  \clef bass
  \keyTime
  
  bes4_5 c_4 d_3 ees_2 f_1
}

\markup {\fill-line {
  \score {
    \new PianoStaff <<
      \new Staff = "upper" \right_hand
      \new Staff = "lower" \left_hand
    >>
    \layout {
      \override Staff.TimeSignature #'stencil = ##f
    }
  }
} }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "Andante M.M. " \note-by-number #2 #0 #UP "= 60 - " \note-by-number #1 #0 #UP " = 58" }
  \override Hairpin.to-barline = ##f
  
  \shapeSlur #'(1 0 2 6 3 6 0 -1)
  d,2-3^( ees-4 |
  f2-5 ees-4 |
  d2-3 c-2 |
  bes1-1) |\break
  
  \dynamicUp
  c2-2(\> bes4-1)\! r |
  c2-2(\> bes4-1)\! r |
  ees2-4(\> d-3 |
  c1-2)\! |\break
  
  %\once\override Slur.control-points =
  %      #'((2 . 0) (2 . 8) (75 . 8) (78 . -1))
  \shapeSlur #'(1 0 2 6 3 6 0 -1)
  d2-3^( ees-4 |
  f2-5 ees-4 |
  d2-3 c-2 |
  bes1-1) |\break
  
  c2-2(\> bes4-1)\! r |
  c2-2(\> bes4-1)\! r |
  ees2-4(\> c-2 |
  bes2-1~)\! bes4 r |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \dynamicUp
  
  \once \override DynamicText.X-offset = #-4.2
  bes4_5\mp f'_1 c_4 f_1 |
  d4_3 f_1 c_4 f_1 |
  bes,4_5 f'_1 ees_2 f_1 |
  d4_3 f_1 d_3 f_1 |\break
  
  ees4_2 f_1 d_3 f_1 |
  ees4_2 f_1 d_3 f_1 |
  c4_4 f_1 bes,_5 f'_1 |
  r4 f_1 ees_2 f_1 |\break
  
  bes,4_5 f'_1 c_4 f_1 |
  d4_3 f_1 c_4 f_1 |
  bes,4_5 f'_1 ees_2 f_1 |
  d4_3 f_1 d_3 f_1 |\break
  
  ees4_2 f_1 d_3 f_1 |
  ees4_2 f_1 d_3 f_1 |
  c4_4 f_1 ees_2 f_1 |
  d4_3 f_1 bes,_5 r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "猫头鹰的问题"
    subtitle = "（夜  曲）"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
