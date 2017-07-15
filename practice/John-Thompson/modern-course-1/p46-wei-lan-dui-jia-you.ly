\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P46

keyTime = {
  \key c \major
  \time 6/8
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto M.M. " 4.=60-80
  
  c,8-1 d-2 e-3 g-5 e-3 d-2 |
  c8-1 d-2 e-3 g4.-5 |
  e4.-3 d8-2 e-3 d-2 |
  c4.-1~ c4 r8 |\break
  
  R2. |
  R2. |
  e4.-3 d8-2 e-3 d-2 |
  c4.-1~ c4 r8 |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  R2. |
  R2. |
  g'4._1 f_2 |
  e4._3~ e4 r8 |\break
  
  c8_5 d_4 e_3 g_1 e_3 d_4 |
  c8_5 d_4 e_3 g4._1 |
  g4._1 f8_2 g_1 f_2 |
  e4._3 c4_5 r8 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "6/8 拍"
}
\markup { \vspace #1 }
\markup { 6/8 拍中，一小节有六拍，八分音符作一拍，每小节有两个重音，主重音在第一拍，次重音在第四拍。 }
\markup { 6/8 拍中，附点八分音符当然占三拍。 }
\markup { \vspace #1 }

\score {
  \header {
    title = "为 蓝 队 加 油"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
