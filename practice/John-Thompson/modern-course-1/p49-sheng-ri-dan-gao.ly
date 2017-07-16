\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P49

\markup { \vspace #1 }

keyTime = {
  \key f \major
  \time 3/4
}

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  f,4-1 g-2 a-3 \bar "" bes-4 c-5 s \bar "||"
}

left_hand = \relative c {
  \clef bass
  \keyTime
  
  c4_5 d_4 e_3 f_2 g_1
  <\parenthesize a>4-\parenthesize \tweak ParenthesesItem.font-size #-2 _1
}

\markup { \fill-line { "手 位" } }
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
  a4-3 a-3 c-5 |
  bes4-4 bes8-4[ c-5] bes-4[ a-3] |
  g4-2 g-2 bes-4 |
  a4-3 a8-3[ bes-4] a-3[ g-2] |\break
  
  f4-1 a-3 c-5 |
  bes4-4 bes8-4[ c-5] bes-4[ a-3] |
  g4-2 g8-2[ a-3] bes-4[ g-2] |
  f2-1 \bar "||"\break
}

upper = \relative c'' {
  \clef treble
  \keyTime
  % \tempo "M.M. " 4.=60-120
  \tempo \markup {
    \center-column {
      \line{"M.M. " \note-by-number #2 #0 #UP "= 60 - 120"}
      \line { " " }
      \line { " " }
    }
  }
  
  \partial 4 f,8-1[\mf g-2] \bar "||"
  
  \tag #'pdf {
    \once \override Score.RehearsalMark.font-size = #-1
    \mark \markup { \musicglyph #"scripts.segno" }
  }
  
  \upper_repeat
  
  \tag #'pdf
  {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    % \once \override Score.RehearsalMark.direction = #DOWN
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.font-size = #1
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -8 )
    \mark \markup { \italic {"Fine"} }
  }
  
  \set Timing.measurePosition = #(ly:make-moment 2/4)
  f8-1[ a-3] |
  g4-2 g-2 g8-2 bes-4 |
  a4-3 a-3 a8-3 c-5 |
  bes8-4[ a-3] g-2[ a-3] bes-4[ g-2] |
  a4-3 a-3 f8-1 a-3 |\break  
  
  g4-2 g-2 g8-2 bes-4 |
  a4-3 a-3 a8-3 c-5 |
  b4-4 a-3 b-4 |
  c2-5 f,8-1[ g-2] \bar"||"
  
  \tag #'pdf
  {
    %\once \override Score.RehearsalMark.direction = #DOWN
    \once \override Score.RehearsalMark.font-size = #1
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -9 )
    \mark \markup { \italic {"D.S. al Fine"} }
  }
  
  \tag #'midi {
    \break
    \upper_repeat
  }
}

lower_repeat = \relative c {
  f2_2 c4_5 |
  g'2_1 c,4_5 |
  e2_3 c4_5 |
  f2_2 c4_5 |\break
  
  a'2_1 c,4_5 |
  g'2_1 c,4_5 |
  e2_3 c4_5 |
  f2_2 \bar "||"\break
}
  
lower = \relative c {
  \clef bass
  \keyTime
  
  \partial 4 r4 \bar "||"
  
  \lower_repeat
  
  \set Timing.measurePosition = #(ly:make-moment 2/4)
  r4 |
  e2_3 c4_5 |
  f2_2 c4_5 |
  g'2_1 c,4_5 |
  f2_2 c4_5 |\break
  
  e2_3 c4_5 |
  f2_2 d4_4 |
  g2_1 f4_2 |
  e2_3 r4 |\bar"||"
  
  \tag #'midi {
    \break
    \lower_repeat
  }
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "生 日 蛋 糕"
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

\markup { \italic {"D.S.(Dal Segno) al Fine"}意指再从 \musicglyph #"scripts.segno" 记号开始弹到 Fine 终止。}
\markup { \vspace #1 }
\markup { 参考: }
\markup { 1、在乐曲中间实现不完全小节（第三行第一小节） \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/special-rhythmic-concerns#time-administration" {
    Time administration
  }
}
\markup { 2、\with-url #"http://lsr.di.unimi.it/LSR/Item?id=636" {
    Printing marks at the end of a line
  }
}



