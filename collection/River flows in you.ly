\version "2.18.2"

keyTime = {
  \key a \major
  \time 4/4
  \numericTimeSignature
}

rit = \markup { \bold \italic { "rit." } }
a-tempo = \markup { \bold \italic { "a tempo" } }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=88
  \override Hairpin.to-barline = ##f
  
  a'8-5\mp gis a gis a e a_\rit d,-1~ |
  d2~ d4. a16-1 cis-2 |
  a'8_\a-tempo gis a gis a e a_\rit d,~ |
  d2~ d4. a16 cis |\break
  
  \repeat volta 2 {
    a'8\mf_\a-tempo gis16 a~ a a, gis'-4 a~ a a, e'-3 a~ a a, d-2 a |
    \acciaccatura b8 cis8-3 d <a e'> cis <gis b>4.-1-2 a16-3 gis |
    a4~ a16 e-1 a b cis4. cis16-3 d |\break
    
    e4. d16 cis b2 |
    <a cis a'>8\arpeggio gis'16 a~ a a, gis' a~ a a, e' a~ a a, d a |
    \acciaccatura b8 cis8-3 d-1 e-2 cis'-5 b e, \acciaccatura { e'16 cis } b8-2 a16-1 gis-3 |\break
    
    \set fingeringOrientations = #'(right) <e-1 a-4>4. \set fingeringOrientations = #'() a,16-2 b cis8 e, a cis16-3 d |
    e8 e, cis'-4 d16 cis b4 a'16-4\mp b-5 a-4 gis-3 |
    a16-5 a, e' a, a'-4 b a gis a a, e' a, a' b a gis-3 |\break
    
    a16-1 b cis d e cis b a gis8-3 b, a'16-4\mf b a gis |
    a16 a, e' a, a' b a gis a a, e' a, a' b a gis |\break
    
    \pageBreak
    
    a16 b cis d e cis b a gis8 b, a'16\f a32 b a16 gis |
    a16 a, e' a, a' a32 b a16 gis a a, e' a, a' a32 b a16 gis |\break
    
    a16 b cis d e cis b a gis8 b, a'16\ff a32 b a16 gis |
    a16 a, e' a, a' a32 b a16 gis a a, e' a, a' b a gis |\break
    
    a16\> b cis d e cis b a gis8-3\! b,_\rit gis-3 e~ |
  }
  \alternative {
    {
      e2~ e4. a16 cis |
    }
    {
      <a cis a'>8\arpeggio gis'\mp a gis <a, cis a'>\arpeggio e' a d,-1 |\break
    }
  }
  
  cis8-3 d <a e'> cis <gis b>4 a8-4 gis |
  <cis, fis a>4\arpeggio e8 a16 b cis8 e, a cis16-3 d |
  e8 e, cis' d16 cis b2 |
  <a cis a'>8\arpeggio\p gis' a gis <a, cis a'>\arpeggio e' a d,-1 |\break
  
  \acciaccatura b8 cis8-3 d-1 e-2 cis' \set fingeringOrientations = #'(right) <e,-1 	b'-4>4. \set fingeringOrientations = #'() a,16-3 gis |
  <e a>4. a16 b cis8 e,_\rit a cis16 d |
  e8 e, a d16 cis b4 e,_1\fermata |
  a8-5 a, cis fis a2\fermata |\bar "|."
}


lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  
  fis8 cis' fis4 d,8 a' e'4~ |
  e1 |
  fis,8 cis' fis4 d,8 a' e'4~ |
  e1 |\break
  
  \repeat volta 2 {
    fis,8 cis' fis4 d,8 a' e'4 |
    a,,8 e' cis'4 e,8 b' e4 |
    d,8 cis' fis4 d,8 a' e'4 |\break
    
    a,,8 e' cis'4 e,8 b' gis'4 |
    fis,8 cis' fis4 d,8 a' e' d, |
    a8 e' cis' a, e' b'_1 e4_3 |\break
    
    fis,8 cis' fis4 d,8 a' e'4 |
    a,,8 e' cis'4 e,8 b' e4 |
    fis,8 cis' fis fis, d a' fis' d, |\break
    
    a8 e' cis' a, e' b' e e, |
    fis cis' fis fis, d a' e' d, |\break
    
    a8 e' cis' a, e' b' e e, |
    fis,8 cis' fis fis, d' a' e' d, |\break
    
    a8 e' cis' a, e b' gis' e, |
    fis8 cis' fis fis, d' a' e' d, |\break
    
    a8 e' cis' a, e b' gis'4~ |
  }
  \alternative {
    {
      gis1 |
    }
    {
      <fis cis'>2 r8 d'-2 fis fis,-4 |\break
    }
  }
    
  e8 cis'4. e2 |
  fis,,8 cis'4. d8 a' e'4 |
  a,,8 e' cis'4 e,8 b' <e gis>4 |
  fis,8 cis' fis4 d,8 a' e' d, |\break
  
  a8 e' cis'4 e,8 b' gis'4 |
  fis,,8 cis' fis4 d8 a' d4 |
  a,8 e' cis4 e,8 b' gis'4\fermata |
  fis,8 cis' fis4 cis'2\fermata |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }


\score {
  \header {
    title = "River flows in you"
    composer = "Yiruma  曲"
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


\markup { \vspace #1 }
\markup { 《最易上手流行钢琴超精选》 王球 主编 P248~249 }
\markup { 湖南文艺出版社 2011.01    ISBN 978-7-5404-4701-4  }