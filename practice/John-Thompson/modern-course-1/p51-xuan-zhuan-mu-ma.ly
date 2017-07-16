\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P51

\markup { \vspace #1 }

keyTime = {
  \key g \major
  \time 6/8
  
}

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  g4-1_\markup { \box " 第一位置 " } a-2 b-3 \bar "" c-4 d-5 \bar "||"
  
  d,4-1_\markup { \box " 第二位置 " } \bar "" e-2 fis-3 g-4 \bar "" a-5 \bar "||"
}

left_hand = \relative c {
  \clef bass
  \keyTime
  
  g'4_5 a_4 b_3 c_2 d_1
  
  d,4_5 e_4 fis_3 g_2 a_1
}

\markup { \fill-line { "两种手位" } }
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


upper_repeat = \relative c'' {
  \once \override DynamicText.X-offset = #-5.2
  \set Timing.measurePosition = #(ly:make-moment 5/8)
  d8-5\f_\markup { \halign #-0.75 \box " 第一位置 " } |
  b4.-3->( g4-1) d'8-5 |
  b4.-3->( g4-1) d'8-5 |
  c8-4 b-3 a-2 d4-5 c8-4 |
  b8-3 a-2 g-1 a4-2 d8-5 |\break
  
  b4.-3->( g4-1) d'8-5 |
  b4.-3->( g4-1) a8-2 |
  b8-3 c-4 b-3 a4-2 d8-5 |
  
  \set Timing.measurePosition = #(ly:make-moment 1/8)
  g,4.-1~ g4 |\bar "||"
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "M.M. " 4.=60-80
  
  \upper_repeat
  
  \tag #'pdf
  {
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.font-size = #-0.5
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -8 )
    \mark \markup { \italic {"Fine"} }
  }
  
  \set Timing.measurePosition = #(ly:make-moment 5/8)
  a8-5_\markup { \box " 第二位置 " } |
  fis4.-3^>( d4-1) a'8-5 |
  fis4.-3^>( d4-1) a'8-5 |\break
  
  g8-4 fis-3 e-2 a4-5 g8-4 |
  fis8-3 e-2 d-1 e4-2 a8-5 |
  fis4.-3^>( d4-1) a'8-5 |
  fis4.-3( d4-1) e8-2 |
  fis4-3 fis8-3 e-2[ fis-3 e-2] |
  \set Timing.measurePosition = #(ly:make-moment 1/8)
  d4.-1~ d4 |\bar"||"\break
  
  \tag #'pdf
  {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    %\once \override Score.RehearsalMark.direction = #DOWN
    \once \override Score.RehearsalMark.font-size = #-1
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -9.5 )
    \mark \markup { \italic {"D.C. al Fine"} }
  }
  
  \tag #'midi {
    \upper_repeat
  }
}

lower_repeat = \relative c {
  \set Timing.measurePosition = #(ly:make-moment 5/8)
  r8 |
  <g' d'>4._1_5( b4_3) r8 |
  q4._1_5( b4_3) r8 |
  a4._4 d_1 |
  g,4._5 d'_1 |\break
  
  q4._1_5( b_3) |
  q4._1_5( b_3) |
  d4._1 c_2 |
  
  \set Timing.measurePosition = #(ly:make-moment 1/8)
  b4._3 g4_5 |\bar "||"
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \lower_repeat
  
  \set Timing.measurePosition = #(ly:make-moment 5/8)
  r8 |
  <d a'>4._1_5( fis4_3) r8 |
  q4._1_5( fis4_3) r8 |\break
  
  e4._4 a_1 |
  d,4._5 a'_1 |
  q4._1_5( fis4_3) r8 |
  q4._1_5( fis4_3) r8 |
  a4._1 g_2 |
  
  \set Timing.measurePosition = #(ly:make-moment 1/8)
  fis4._3~ fis4 |\bar"||"\break
  
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
    title = "旋 转 木 马"
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
