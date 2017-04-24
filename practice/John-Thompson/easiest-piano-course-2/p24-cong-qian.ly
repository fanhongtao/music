\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4

  e,4-3 e e |
  g4-5 g g |
  f4 f f |
  d2. |\break
  
  e4 e e |
  g4 g g |
  fis4 e d |
  g2 f!4 |
  e4 f e |
  g4 g g |\break
  
  f4 e f |
  d2. |
  e4 c e |
  g4 g g |
  f4 e d |
  c2. | \bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4

  c2._5 |
  e2. |
  d2. |
  g2. | \break
  
  c,2. |
  e2. |
  d4 e fis |
  g2. |
  c,2. |
  e2. | \break
  
  d2. |
  g2. |
  c,2. |
  e2. |
  d4 g f |
  e2. | \bar "|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "还 原 记 号"
  subtitle = \markup { \natural }
}
\markup { \vspace #1 }

\score {
  \header {
    title = "从  前"
    subtitle = ##f
  }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markuplist {
  本文演示了：
  1、在标题中显示特殊字符。"http://lilypond.org/doc/v2.18/Documentation/notation/formatting-text#music-notation-inside-markup"  
  2、强制显示还原记号。http://lilypond.org/doc/v2.18/Documentation/notation/
  \wordwrap { 
    Normally accidentals are printed automatically, but you may also print them manually.
    A reminder accidental can be forced by adding an exclamation mark ! after the pitch. 
    A cautionary accidental (i.e., an accidental within parentheses) can be obtained by adding the question mark ? after the pitch. These extra accidentals can also be used to produce natural signs. 
  }
}

