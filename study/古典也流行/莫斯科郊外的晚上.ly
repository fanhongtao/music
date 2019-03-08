\version "2.18.2"

songName = "莫斯科郊外的晚上"
\include "../../lib/brackets.ly"
\include "../../lib/markups.ily"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "谢多伊 曲"
  arranger = "李晓平 编曲"
}

keyTime = {
  \key g \major
  \time 2/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andante" 4=80
  \override Hairpin.to-barline = ##f
  
  e,8-1\mp g-3 b-5 g-3 |
  a4-4 g8-3 fis-2 |
  b4-5 a-4 |
  e2-1 |\break
  
  g8-1 b-2 d-4 d |
  e4-5 d8-4 c |
  b2 |
  cis4-2\< dis-3\! |\break
  
  fis8-4\mf e-3 b4-1~ |
  b8\mp fis_2~ fis e_1 |
  b'8_3 a_2 c4-4~ |
  c4 <b d>8-3-5 <a c>-2-4 |\break
  
  <g b>4-1-3 <fis a>8-2-4 <e g>-1-3 |
  <dis fis b>4-1-2-5 <fis a>-2-4 |
  e2-1 |
  <e cis'>4-1-3\< <fis dis'>-1-4\! |\break\pageBreak
  
  <g fis'>8-1-5\f e'-4 b4-1~ |
  b8\mp fis-2~ fis e-1 |
  b'8-3 a-2 c4-4~ |
  c4 <b d>8-3-5 <a c> |\break
  
  <g b>4-1-3 <fis a>8-2-4 <e g> |
  <dis fis b>4-1-2-5 <fis a>-2-3 |
  <g e'>2-1-5~_\markup { \bold \concat { \rit "        " \dimin } } |
  \stemUp q2 |
  <g' e'>2-1-5 \bar "|."
}

sustainMark = \markup { \musicglyph #"pedal.Ped" }
simile = \markup { \italic \bold "simile" }
bracketDown = \squareBracketDown #'(0.0 . -22.0)  #'3.0

lower_one = \relative c {
  <b-5 e-2 g-1>4_\sustainMark\arpeggio r |
  <a-5 e'-2 a-1>4_\sustainMark\arpeggio r |
}

lower_one_midi = \relative c {
  \set tieWaitForNote = ##t
  \grace { b16~[ e~ g~] } <b,-5 e-2 g-1>4_\sustainMark\arpeggio r |
  \grace { a16~[ e'~ a~] } <a,-5 e'-2 a-1>4_\sustainMark\arpeggio r |
  \unset tieWaitForNote
}

lower_two = \relative c {
  <b-5 e-2 g-1>4_\sustainMark\arpeggio r |
  <a-5 e'-2 a-1>4_\simile\arpeggio r |
}

lower_two_midi = \relative c {
  \set tieWaitForNote = ##t
  \grace { b16~[ e~ g~] } <b,-5 e-2 g-1>4_\sustainMark\arpeggio r |
  \grace { a16~[ e'~ a~] } <a,-5 e'-2 a-1>4_\simile\arpeggio r |
  \unset tieWaitForNote
}


lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  e8_4_\sustainMark <g b>4_1_2 q8 |
  c,8_5_\sustainMark <e a>4_1_3 q8 |
  b8_5_\sustainMark <dis fis>4_2_3 q8 |
  e8_4_\sustainMark <g b>4_1_2 q8 |\break
  
  d8_5_\sustainMark <g b>4_1_2 q8 |
  c,8_5_\sustainMark <e a>4_1_3 q8 |
  b8_5_\sustainMark <dis fis>4_2_3 q8 |
  a8_5_\sustainMark <e' a>_1_2 b_5_\sustainMark <dis fis>_2_3 |\break
  
  e8_4_\sustainMark <g b>4_1_2 q8 |
  \set fingeringOrientations = #'(right)
  \tag #'pdf  \lower_one
  \tag #'midi \lower_one_midi
  <b,-5 dis-3 fis-2 a-1>4_\sustainMark r |\break
  
  e,8_5_\sustainMark[ b'_2 e_1 g_2] |
  b,8_5_\simile[ fis'_2 b_1 dis_2] |
  e,,8_5[ e'_1 g_2 b_1] |
  a,8_5_\sustainMark <e' a>_1_2 b_5_\sustainMark <dis fis>_2_3 |\break
  
  e,8_5_\sustainMark e'_1 g_2 b_1 |
  \tag #'pdf  \lower_two
  \tag #'midi \lower_two_midi
  <b,-5 dis-3 fis-2 a-1>4 r |\break
  
  e,8_5[ b'_2 e_1 g_2] |
  b,8_5[ fis'_2 b_1 dis_2] |
  e,,8_5_\sustainMark[ b'_1 <e fis>_3_4 g_2] |
  \change Staff="upper" 
  \stemDown \bracketDown b8_1_\markup{ \lower #7.5 \halign #-3.5 { \rotate #10 "M.G." } }\startTextSpan[ <e fis>_3_4 g_2 b_1] |
  <e fis>2_2_3\stopTextSpan |\bar "|."
  \once \override Score.RehearsalMark.direction = #DOWN
  \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3.5 )
  \mark \markup { \musicglyph #"pedal.*" }
}

\score {
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
    \override TextSpanner.style = #'solid-line
  }
  % \midi { }
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

