\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P62

\markup { \vspace #1 }

keyTime = {
  \key f \major
  \time 3/4
}


upper_repeat = \relative c'' {
  <f, a>4-1-3\p q-1-3 q-1-3 |
  q2.-1-3 |
  q4-1-3 q q |
  q2.-1-3 |\break
  
  g4-2 g8-2[ a-3] g-2 a-3 |
  f4-1 a-3 c-5 |
  g4-2 g8-2[ a-3] g-2 a-3 |
  f2.-1 |\break
  
  <f a>4-1-3 q q |
  q2.-1-3 |
  q4-1-3 q q |
  q2.-1-3 |\break
  
  g4-2 g8-2[ a-3] g-2 a-3 |
  f4-1 a-3 c-5 |
  g4-2 a-3 g-2 |
  f2.-1 |\break\bar "||"
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andante  M.M. " 4=60-96
  
  \upper_repeat
  
  \tag #'pdf
  {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.font-size = #-0.5
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -8 )
    \mark \markup { \italic {"Fine"} }
  }
  
  <e, bes'>4-1-4 q-1-4 q-1-4 |
  q2.-1-4 |
  <f a>4-1-3 q-1-3 q-1-3 |
  q2.-1-3 |\break
  
  <e g>4-1-2 q-1-2 q-1-2 |
  q4-1-2 a-3 g-2 |
  f4-1 f f |
  f4-1 a-3 c-5 |\break
  
  <e, bes'>4-1-4 q q |
  q2.-1-4 |
  <f a>4-1-3 q q |
  q2.-1-3 |\break
  
  <f g>4-1-2 q q |
  q4-1-2 a-3 g-2 |
  <e g>2.-1-2 |
  c'2.-5 |\bar"||"\break
  
  \tag #'pdf
  {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    %\once \override Score.RehearsalMark.direction = #DOWN
    \once \override Score.RehearsalMark.font-size = #-1
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -8 )
    \mark \markup { \italic {"D.C. al Fine"} }
  }
  
  \tag #'midi {
    \upper_repeat
  }
}

lower_repeat = \relative c {
  <f c'>4_1_5 q_1_5 q_1_5 |
  q2._1_5 |
  q4_1_5 q q |
  q2._1_5 |\break
  
  bes2._2 |
  a2._3 |
  bes2._2 |
  a2._3 |\break
  
  <f c'>4_1_5 q q |
  q2._1_5 |
  q4_1_5 q q |
  q2._1_5 |\break
  
  bes2._2 |
  a2._3 |
  bes4_2 c_1 bes_2 |
  <f a>2._3_5 |\bar "||"
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \lower_repeat
  
  <g' c>4_1_4 q_1_4 q_1_4 |
  q2._1_4 |
  <f c'>4_1_5 q_1_5 q_1_5 |
  q2._1_5 |\break
  
  <bes c>4_1_2 q_1_2 q_1_2 |
  q2._1_2 |
  <a c>4_1_3 q_1_3 q_1_3 |
  q2._1_3 |\break
  
  <g c>4_1_4 q q |
  q2._1_4 |
  <f c'>4_1_5 q q |
  q2._1_5 |\break
  
  b4_2 b b |
  b2._2 |
  c2._1 |
  R2. |\bar"||"\break
  
  \tag #'midi {
    \lower_repeat
  }
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "晚  钟"
  }
  \keepWithTag #'pdf
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}
