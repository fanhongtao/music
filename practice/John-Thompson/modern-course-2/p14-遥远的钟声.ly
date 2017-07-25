\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P14

keyTime = {
  \key c \major
  \time 4/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andante"
  
  <e, g>8-2-4\p( c-1 q c q c q c) |
  <f g>8-3-4( d-1 q d q d q d ) |
  q8( d q d q d q d ) |\break
  
  <e g>8( c q c q c q c) |
  q8( c q c q c q c) |
  <f g>8-3-4( d q d q d q d) |\break
  
  q8 ( d q d q d q d) |
  <e g>8( c q c q c q c) |
  b8-1\mf(d-2 b d g2) |\break
  
  c,8-1( d-2 c d fis2) |
  c8( d c d fis2) |
  b,8( d b d g2) |\break
  
  b,8( d b d g2) |
  c,8( d c d fis2) |
  c8-1( cis-2 d-1 fis-2 b-5 a-4 fis-2 d-1 |\break
  
  g4-3)\> g-4 g-3 g-2\! |
  <e g>8-2-4\p( c q c q c q c) |
  <f g>8-3-4( d q d q d q d ) |\break
  
  q8( d q d q d q d) |
  <e g>8( c q c q c q c) |
  q( c q c q c q c) |\break
  
  <f g>8-3-4( d q d q d q d ) |
  q8( d q d q d q d) |
  <e g>8-2-4( c q c q c q c) |\break
  
  q( c q c q c q c) |
  q( c q c q c q c) |
  q(\pp^\markup { \italic { poco rit. } } c q c q4) r |\bar"|."
}


lower = \relative c {
  \clef bass
  \keyTime
  \set Staff.pedalSustainStyle = #'bracket
  \override Staff.PianoPedalBracket.shorten-pair = #'(0 . -13)
  
  c4_5\sustainOn r \clef treble c''2_2^^\sustainOff |
  \clef bass g,,4_5\sustainOn r \clef treble b''2_2^^\sustainOff |
  \clef bass g,,4_5\sustainOn r \clef treble f'''2_2^^\sustainOff |\break
  
  \clef bass c,,4_5\sustainOn r \clef treble e''2_2^^\sustainOff |
  \clef bass c,,4_5\sustainOn r \clef treble c''2_2^^\sustainOff |
  \clef bass g,,4_5\sustainOn r \clef treble b''2_2^^\sustainOff |\break
  
  \clef bass g,,4_5\sustainOn r \clef treble g'''2_2^^\sustainOff |
  \clef bass c,,,4_5\sustainOn r \clef treble c''4_2^^\sustainOff r |
  
  \override Staff.PianoPedalBracket.shorten-pair = #'(0 . -9)
  \clef bass g,,4\sustainOn r \clef treble b''2^^\sustainOff |
  
  \clef bass d,,4\sustainOn r \clef treble a''2^^\sustainOff |
  \clef bass d,,4\sustainOn r \clef treble c''2^^\sustainOff |
  \clef bass g,,4\sustainOn r \clef treble b''2^^\sustainOff |\break
  
  \clef bass g,,4\sustainOn r \clef treble b''2^^\sustainOff |
  \clef bass d,,4\sustainOn r \clef treble a''2^^\sustainOff |
  \override Staff.PianoPedalBracket.shorten-pair = #'(0 . -13)
  \clef bass d,,2\sustainOn <fis c'>2\sustainOff |\break
  
  <g b>4 r r2 |
  c,4_5\sustainOn r \clef treble c''2_2^^\sustainOff |
  \clef bass g,,4_5\sustainOn r \clef treble b''2_2^^\sustainOff |\break
  
  \clef bass g,,4\sustainOn r \clef treble f'''2^^\sustainOff |
  \clef bass c,,4\sustainOn r \clef treble e''2^^\sustainOff |
  \clef bass c,,4\sustainOn r \clef treble c''2^^\sustainOff |\break
  
  \clef bass g,,4\sustainOn r \clef treble b''2^^\sustainOff |
  \clef bass g,,4\sustainOn r \clef treble g'''2^^\sustainOff |
  \override Staff.PianoPedalBracket.shorten-pair = #'(0 . -0)
  \clef bass g,,,4_5\sustainOn r \clef treble c''2_2^^ |
  
  \clef bass c,,4_5^\markup { \italic { dim. } } r \clef treble e''2_2^^ |
  \clef bass c,,4_5 r \clef treble g'''2_2^^ |
  \clef bass c,,,4_5 r \clef treble c'''4_2^^ r\sustainOff |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "遥 远 的 钟 声"
    composer = "斯特雷布格"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
  \midi { }
}

\markup { \vspace #1 }
\markup { 参考： }
\markup { 1. \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/piano#piano-pedals" {
    "Piano pedals"
  }
}
\markup { 2. \with-url #"http://lsr.di.unimi.it/LSR/Item?id=510" {
    "Fine-tuning pedal brackets"
  }
}
