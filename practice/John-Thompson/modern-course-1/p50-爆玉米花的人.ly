\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P50

\markup { \vspace #1 }

keyTime = {
  \key g \major
  \time 4/4
  \numericTimeSignature
}

right_hand = \relative c'' {
  \clef treble
  \keyTime
  
  e,4-1_\markup { \box " 第一位置 " } fis-2 g-3 a-4 \bar "" b-5 \bar "||"
  
  \key d \major
  b,4-1_\markup { \box " 第二位置 " } cis-2 d-3 \bar "" e-4 fis-5 \bar "||"
}

left_hand = \relative c {
  \clef bass
  \keyTime
  
  g'4_5 a_4 b_3 c_2 d_1
  
  \key d \major
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
  \key g \major
  
  g4-3_._\markup { \halign #0.5 \box " 第一位置 " } b-5-. r e,8-1( fis-2 |
  g4-3_.) b-5-. r e,8-1( fis-2 |
  g4-3_.) b-5-. g-3_. b-5-. |
  a4-4_. fis-2_. r e8-1( fis-2 |\break
  
  g4-3_.) b-5-. r e,8-1( fis-2 |
  g4-3_.) b-5-. r e,8-1( fis-2 |
  g4-3_.) b-5-. a-4_. b-5-. |
  g2-3~ g4 r |\bar "||"\break
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "M.M. " \note-by-number #2 #0 #UP "= 72 - " \note-by-number #1 #0 #UP " = 72" }
  
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
  
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key d \major
  d,4-3_._\markup { \halign #0.5 \box " 第二位置 " } fis-5_. r b,8-1( cis-2 |
  d4-3_.) fis-5_. r b,8-1( cis-2 |
  d4-3_.) fis-5_. d-3_. fis-5_. |
  e4-4_. cis-2_. r b8-1( cis-2 |\break
  
  d4-3_.) fis-5_. r b,8-1( cis-2 |
  d4-3_.) fis-5_. r b,8-1( cis-2 |
  d4-3_.) fis-5_. e4-4_. fis-5_. |
  d2-3~ d4 r |\bar"||"\break
  
  \tag #'pdf
  {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    %\once \override Score.RehearsalMark.direction = #DOWN
    \once \override Score.RehearsalMark.font-size = #1
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -9 )
    \mark \markup { \italic {"D.C. al Fine"} }
  }
  
  \tag #'midi {
    \upper_repeat
  }
}

lower_repeat = \relative c {
  \key g \major
  
  <g' b>4_3_5-. r d'_1-> r |
  q4_3_5-. r d_1-> r |
  b4_3-. r b_3-. r |
  c4_2-. r d_1-> r |\break
  
  q4_3_5-. r d_1-> r |
  q4_3_5-. r d_1-> r |
  b4_3-. r c_2-. r |
  b2_3( g4_5) r |\bar "||"\break
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \lower_repeat
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key d \major
  <d fis>4_3_5-. r a'_1-> r |
  q4_3_5-. r a4-> r |
  fis4_3-. r fis_3-. r |
  g4_2-. r a_1-> r |\break
  
  q4_3_5-. r a_1-> r |
  q4_3_5-. r a_1-> r |
  fis4_3-. r g_2-. r |
  fis2_3( d4_5) r |\bar"||"\break
  
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
    title = "爆 玉 米 花 的 人"
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
  \midi { \tempo 4=72 }
}


\markup { \italic {"D.C.(Da Capo) al Fine"}意指再从乐曲的开始弹到 Fine 终止。}
\markup { \vspace #1 }
\markup { 参考: }
\markup { 1、 \with-url #"http://lsr.di.unimi.it/LSR/Item?id=124" {
    Removing the key signature at the end of a line
  }
}
