\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  \tempo "Allegro 快板"
  
  \repeat volta 2 { 
    \bar".|:" e,2-3\mf g-5 |
    e4 d2 c4 |
    e2 g |
    e4 d2 c4 |\break
    
    e2\mp e |
    d4 c d2 |
    c1~ |
    c4 r r2 |\break
    
    a'2-3\mf^变换手的位置 c-5 |
    a4 g2 f4 |
    aes2-3\p c |
    aes4 g2 f4 |\break
  }
  
  \alternative {
    {
      g2-2 g |
      c2-5 e,-1 |
      d1-2~ |
      d4 r r2 |\break
    }
    {
      g1-2\f |
      << { f1-1 } {g1-2} >> |
      <e^1 g^2>1~ |
      <e g>4 r r2 |\bar"|."
    }
  }
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  \repeat volta 2 {
    c1_5 |
    g'1_1 |
    c,1 |
    g'1 |\break
    
    c,1 |
    f1_2 |
    e1 |
    c4 r r2 |\break
    
    f1_5 |
    c'1_1 |
    f,1 |
    c'1 |\break
  }
  \alternative {
    {
      e,1_5 |
      g1_3 |
      b1_1 |
      g4_3 r r2 |\break
    }
    {
      g2_4 g |
      a4_3 g a2 |
      c1_1 |
      c,4_5 r r2 |\bar"|."
    }
  }
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "在 堤 岸 上"
  subtitle = ##t
}
\markup { \vspace #1 }

myStaff = \new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
>>

\score {
  \header {
    title = ##t
    subtitle = ##t
  }
  \myStaff
  \layout { }
}

\score {
  \unfoldRepeats
  \myStaff
  \midi { }
}
