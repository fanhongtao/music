\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4
  \numericTimeSignature
  \tempo "Andante 行板"
  
  
  \once \override DynamicText.X-offset = #-5.2
  c4-5\mp_"legato" a-3 g-2 |
  f4-1 g a |
  c4\mf a g |
  f4 g a |\break
  
  c4\p a f |
  g4-2 a g |
  f4\< g a-3\! |
  <e g>2.-1-2\>\! |\break
  
  c'4-5\mp a g |
  f4 g a |
  c4\mf a8[ bes] a[ g] |
  f4 g a |\break
  
  c4\p a f |
  g4-2\< a\!\> g\! |
  \override Hairpin.to-barline = ##f
  f4\p a\> g |
  f2.\!|\bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 3/4
  \numericTimeSignature
  
  f2._5 |
  a2._3 |
  f2. |
  a2. |\break
  
  f2. |
  bes2._2 |
  a2_3 f4 |
  c2. |\break
  
  f2._5 |
  a2. |
  f2. |
  a2. |\break
  
  f2. |
  bes4_2 c bes |
  a4 c bes | 
  a2. |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "日    出"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \header {
    title = ##t
    subtitle = ##t
    
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup { 新的表情记号 }
\markup { < 表示逐渐加大音量，即渐强(crescendo)。 }
\markup { > 表示逐渐减小音量，即渐弱(decrescendo)。 }
\markup { \vspace #1 }
\markup { 为了让 LilyPond 将"渐强"或"渐弱"记号绘制到指定的音符下，可能还需要设置 "to-barline" 属性 }
\markup { 参考 \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/expressive-marks-attached-to-notes.en.html#new-dynamic-marks" {
    Setting hairpin behavior at bar lines
  }
}
