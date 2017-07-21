\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P05

keyTime = {
  \key c \major
  \time 3/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Moderato"
  
  \repeat volta 2 {
    c,8-1(\mp b-2 c-1 d-2 e-3 f-4 |
    <e g>2.-3-5) |
    <dis g>2.-2-5 |
    <e g>2. |\break
    
    a8-1(\p gis-2 a-1 b c d |
    <c e>2.-3-5) |
    <b e>2.-2-5 |
    <c e>2. |\break
    
    R2. |
    r4 <a f'>-1-5 q |
    R2. |
    r4 <f d'>-1-5 q |\break
    
    R2. |
    r4 <e c'>_\markup {\italic{ "dim." } } q |
    r4 <ees c'>_\markup {\italic{ "poco rit." } } q |
    <e! c'>2.-1-5\pp
  }
  %\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \dynamicUp
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2 {
    R2. |
    c'2_2\< g4 |
    b2_3\! g4\> |
    c2._2\! |\break
    
    R2. |
    \clef treble
    a'2_2\< e4 |
    gis2_3\! e4\> |
    a2.\! |\break
    
    a8_1( bes_2 a_1 g_2 f_3 e_4 |
    d2._5) |
    d8_1\mp( e_2  d_1 c_2 \clef bass b_3 a_4 |
    g2._5) |\break
    
    g8_1( a_2 g_1 f e d |
    c2._5) |
    aes'2._2 |
    <c, g'>2._1_5
  }
  %\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "第二指（白键或黑键）越过拇指"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "越过我的大拇指了"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
}

\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}
