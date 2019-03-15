\version "2.18.2"

songName = "传奇"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "李健 作曲"
}

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=63
  \override Hairpin.to-barline = ##f
  
  <d e g>4.\arpeggio e8 d e g a |
  a,1 |
  <g b d>4.\arpeggio e'8 <d f>4 e8 d |
  <g, e'>1 |
  <d' e g>4.\arpeggio e8 d e g a |
  a,1 |\break
  
  d4. e8 f4 e16 f e b |
  <g c>1 |
  \repeat volta 2 {
    r8 c16-2 c c8 e-5 d-4 d16 d~ d16 c8 d16 |
    d8 d d16 c8 a16 a2 |
    r8 b16 b b8 c16 d~ d16 b8. a16 g8. |\break
    
    e1 |
    r8 e'16 d e8. d16~ d8 d16 c c4 |
    d8-5 a a16 d8. c2-4 |
    r8 b16 b b8 c16 d~ d d8. a16 g8. |\break
    
    e1 |
    <d'e g>8.\arpeggio d16~ d8 e g8. d16~ d8 c |
    <e, a>1 |
    <g a d>8.\arpeggio a16~ a8 e' d8. c16~ c8 a16 b |\break
    
    g1 |
    <d'e g>8.\arpeggio d16~ d8 e g8. d16~ d8 c |
    <e, a>1 |
    <g a d>8.\arpeggio a16~ a8 e' d8. c16~ c8 a16 b |\break
    
    <g d'>1 |
    r8 <g c>16 q q8 g16 c~ c8 <e g> <d f> <c e> |
    d8. c16 c2 r16 c e g |\break
    
    <f a>8 <e g>16 <f a>~ q g8. a8 g e16 g8. |
    e1 |
    r8 <g, c>16 q q8 g16 c~ c8 <e g> <d f> <c e> |
    d8. c16~ c2 r16 c e g |\break
    
    <f a>8 <e g>16 <f a>~ q g8. a8 g e16 g8. |
    g1 |
  }
  \alternative {
    {
      g4. e8 d e g a |
      c,1 |\break
      d4. e8 f4 e16 f e d |
      e1 |
      g4. e8 d e g a |
      c,1 |\break
      
      d4. e8 f4 e16 f e d |
      c1 |
    }
    {
      r8 <g c>16 q q8 g16 c~ c8 g' f e |
      d8. c16~ c2 r16 c e g |\break
      
      <f a>8 <e g>16 <f a>~ q g8. a8 g e16 g8. |
      e1 |
      r8 <g, c>16 q q8 g16 c~ c8 g' f e |
      d8. c16~ c2 r16 c e g |\break
      
      <f a>8 <e g>16 <f a>~ q g8. a8 g e16 g8. |
      g1 |
      r8 c,16 c c8 e d d16 d~ d c8 d16 |
      d8 d d16 c8 a16 a2
    }
  }
  |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  c8-5 g' c d e d c g |
  f,8 c'f a c a f c |
  g8 d' g b d b g d |
  c8-3 g' c d e d c g |
  c,8 g' c d e d c g |
  f,8 c' f a c a f c |\break
  
  g8 d' g b d b g d |
  c8 g' c d e d c g |
  \repeat volta 2 {
    c,8-5 g' c d~ d g, c d |
    f,,8 c' f a~ a c, f a |
    g,8 d' g b~ b d, g b |\break
    
    c,8 g' c d~ d g, c d |
    c,8 g' c d~ d g, c d |
    f,,8 c' f a~ a c, f a |
    g,8 d' g b~ b d, g b |\break
    
    c,8 g' c d~ d g, c d |
    c,8 g' c g d' g, c g |
    a,8 e' a e c' e, a e |
    d8 a' c a d a c a |\break
    
    g,8 d' g d b' d, g d |
    c8 g' c g d' g, c g |
    a,8 e' a e c' e, a e |
    d8 a' c a d a c a |\break
    
    g,8 d' g d b' d, g d |
    c8 g' c g d' g, c g |
    a,8 e' a e c' e, a e |\break
    
    f,8 c' f c a' c, f c |
    c8 g' c g d' g, c g |
    c,8 g' c g d' g, c g |
    a,8 e' a e c' e, a e |\break
    
    f,8 c' f c a' c, f c |
    g8 d' g d b' d, g d |
  }
  \alternative {
    {
      a8 g' c d e d c g |
      f,8 c' f a c a f c |\break
      
      g8 d' g b d b f d |
      c8 g' c d e d c g |
      c,8 g' c d e d c g |
      f,8 c' f a c a f c |\break
      
      g8 d' g b d b f d |
      c8 g' c d e d c g |
    }
    {
      c,8 g' c g d' g, c g |
      a,8 e' a e c' e, a e |\break
      
      f,8 c' f c a' c, f c |
      c8 g' c g d' g, c g |
      c,8 g' c g d' g, c g |
      a,8 e' a e c' e, a e |\break
      
      f,8 c' f c a' c, f c |
      g8 d' g b <b d g>2\arpeggio |
      <g c e>1\arpeggio |
      <a c f>1\arpeggio |
    }
  }
  |\bar "|."
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
