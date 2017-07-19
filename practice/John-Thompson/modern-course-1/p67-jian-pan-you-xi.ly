\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P67

\include "../../../lib/brackets.ly"
bracket = \squareBracket #'(0.0 . -0.0)  #'1.0
bracketDown = \squareBracketDown #'(0.0 . -9.0)  #'1.0

left_hand = \markup{ \lower #5.5 \halign #-2.5 { \rotate #10 左手 } }
right_hand = \markup { \halign #-2.5 \rotate #10 右手 }

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegro M.M." 4 = 120
  
  \once \override DynamicText.Y-offset = #-4.2
  s1\f |
  s2 <a, c>4-3-5_. r |
  <g c>4-2-5_. r <a c>-3-5_. r |
  <g c>2-2-5 r |\break
  
  s2 s8 \bracket d'-2^\right_hand\startTextSpan e-3 fis-4 |
  g4-5_.\stopTextSpan r <e g>-3-5_. r |
  <d g>4-2-5_. r <e g>-3-5_. r |
  <d g>2-2-5 r |\break
  
  s2 s8 g-2 a-3 b-4 |
  c4-5-. r <g c>-2-5_. r |
  s2 s8 c-2 d-3 e-4 |
  f4-5-. r <c f>-2-5-. r |\break
  
  s2 s8 d-2 e-3 fis-4 |
  g4-5-. r <d g>-2-5-.\ff r |
  <e g>4-3-5-. r <d g>-2-5-. r |
  <e g>2-3-5 r |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \bracketDown \stemDown c4_5_\left_hand\startTextSpan \stemNeutral d8_4[ e_3] f_2[\stopTextSpan \bracket g-2^\right_hand\startTextSpan a-3 b-4] |
  c4-5-.\stopTextSpan r4 f,_2-. r |
  e4_3-. r f_2-. r |
  e2_3 r |\break
  
  \bracketDown g4_5_\left_hand\startTextSpan a8_4[ b_3] c_2\stopTextSpan s4. |
  r2 c4_2-. r |
  b4_3-. r c_2-. r |
  b2_3 r |\break
  
  \clef treble c4_5 d8_4[ e_3] f_2 s4. |
  r2 e4_3-. r |
  f4_5 g8_4[ a_3] \stemUp bes_2 s4. |
  r2 a4_3_. r |\break
  
  g4_5 a8_4[ b_3] c_2 s4. |
  r2 \stemNeutral b4_3-. r |
  c4_2-. r g_5-. r |
  c2_2 r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "键 盘 游 戏"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
    \override TextSpanner.style = #'solid-line
  }
  \midi { }
}
