\version "2.18.2"

keyTime = {
  \key d \major
  \time 6/8
  \numericTimeSignature
}

toSegno = {
  % the align part, to the right, and below staff
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT 
  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark.direction = #DOWN 
  %prefered size, is about 1/3 smaller than normal
  \once \override Score.RehearsalMark.font-size = #-1
  % \mark \markup { { \lower #1 "D.S. al  " { \musicglyph #"scripts.segno"} } } 
  \mark \markup { { \lower #1 "D.S. al Coda" } }
}
toCoda = {
  % the align part
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT  
  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark.direction = #UP
  %prefered size
  \once \override Score.RehearsalMark.font-size = #-1
  \mark \markup { { \lower #1 "To Coda " { \musicglyph #"scripts.coda"} } } 
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 8=198
  \override Hairpin.to-barline = ##f
  
  % R2. |
  a'4.~ a4.~ |
  a4. fis8 g a |
  cis4. b4 b8 |
  a4.~ a8 e fis |\break
  
  g4.~ g~ |
  g4. g8 fis d |
  d4.~ d |
  e4.~ e |
  \repeat volta 2 {
    a8 a a a fis g |\break
    
    a4. cis |
    b8 b b b g b |
    a4.~ a |
    a8 a a a cis b |
    a8 g4 g4. |\break
    
    g8 g g g fis e |
  }
  \alternative {
    {
      d4.~ d |
    }
    {
      d4.~ d |
    }
  }
  d'8 d d d a b |
  d4 d8 fis4. |\break
  
  e8 e e \grace d16 e8 d cis |
  b4.~ b |
  cis8 cis cis cis cis d |
  e4. a, |
  \grace a16 cis8 cis d e d cis |\break
  
  d4. d,8 e fis |\bar"||"
  a4. a~ |
  a4. fis8 g a |
  cis4. b4 b8 |
  a4.~ a8 e fis |\break\pageBreak
  
  g4.~ g~ |
  g4. g8 fis d |
  d4.~ d |
  e4.~ e |
  a,8 a a a fis g |\break
  
  a4. cis |
  b8 b b b g b |
  a4.~ a |
  a8 a a a cis b |
  a8 g4 g4. |\break
  
  g8 g g g fis e |
  d4.~ d |\bar "||"
  a''8\segno a a a fis g |
  a4 a8 cis4. |
  b8 b b b g8. b16 |\break
  
  a4.~ a |
  a8 a a a cis b |
  a8 g4 g4. |
  g8 g g g fis8. e16 |
  d4. e,16( fis a d e fis) |\bar"||"\break
  
  d'8 <fis, d'> q q a b |
  q4 d8 <a fis'>4. |
  e'8 <g, e'>q q d'8. cis16 |
  <<
    {d,16 fis b, e fis, cis' b4.}
    \new Voice { \stemUp b'4.^~ b }
  >>|
  cis8 <fis, cis'> q q cis' d |\break
  
  <a e'>4. <e a> |
  <e cis'>8 cis' d <a e'> d cis\toCoda |
  <<
    { g16 cis b cis a cis g cis f,8 e }
    \new Voice {
      \stemUp d'4.^~ d
    }
  >>|
  d,16 a' gis a fis a e a d, cis b a |\break\pageBreak
  
  a16 b a8 fis  a16 b cis8 a |
  a16 b a8 fis a4. |
  <a cis>4 <b d>8~ q <cis e>4 |
  \grace fis16 fis8 d4 d4. |
  r8 \grace { e16 fis} e4 d4 ais8 |\break
  
  <a fis'>8 a'4 a8 g16 fis e8~ |
  e8 g,16( a b cis d e fis g a b) |\bar"||"
  <fis d'>4.\coda a,16( dis fis b cis dis) |\bar "||"
  \key e \major
  e8 <gis, e'> q q b cis |\break
  
  <gis e'>4 e'8 <b gis'>4 gis'8 |
  fis8 <a, fis'> q q e' dis |
  << 
    { fis,8 e dis cis4.}
    \new Voice {\stemUp cis'4.^~ cis}
  >>|
  dis8 <gis, dis'> q q dis' e |
  <b fis'>4. <fis b> |\break
  
  <fis dis'>8 dis' e <b fis'> e dis |
  <a fis'>4.~ q |
  <fis gis b e>4.\arpeggio~ q~ |
  q4.~ q |\bar "|."
}


lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  % R2. |
  d8\p a' d e d a |
  d,8 a' d e d a |
  fis8 a cis fis cis a |
  a,8 e' a b a e |\break
  
  g8 b d e d b |
  g8 ais d g d ais |
  a d e a e d |
  <a cis e>4.\arpeggio a,\fermata |
  \repeat volta 2 {
    d8\p a' d e d a |\break
    
    fis8 a cis fis cis a |
    g8 b d e d b |
    a8 d e a e d |
    d,8 a' d e d a |
    a,8 g' b d b g |\break
    
    g8 b d e, b' d |
  }
  \alternative {
    {
      d,8 a' d e d a |
    }
    {
      d,8\< a' d e fis a\! |
    }
  }
  d,,8\mf a' d e d a |
  b,8 fis' b fis' d b |\break
  
  g8 b e g e g, |
  fis8 b d fis d b |
  fis8 a cis fis cis fis, |
  a8 cis e a e cis |
  a8 d e a e a, |\break
  
  d,8\> a' d e d a\! |\bar "||"
  d,8\mp a' d e d a |
  d,8 a' d e d a |
  fis8 a cis fis cis a |
  a,8 e' a b a e |\break
  
  g8 b d e d b |
  g8 ais d g d ais |
  a d e a e d |
  <a cis e>4.\arpeggio a,\fermata |\bar "||"
  d8\mf a' d e d a |\break
  
  fis,8 fis' cis' fis cis a |
  g,8 d' b' d b g |
  a,8 e' d' a' e a, |
  d,8 a' d e d a |
  a,8 g' b d b g |\break
  
  g,8 b' d e, b' d |
  d,8 a' d e d a |
  d,8\mf a' d e d a |
  fis, fis' cis' fis cis a |
  g,8 d' b' d b g |\break
  
  a,8 e' d' a' e a, |
  d,8 a' d e d a |
  a,8 g' b d b g |
  g,8 b' d e, b' d |
  d,8\< a' d a d a\! |\bar"||"\break
  
  d,,8\f d' a' e' d a |
  b,8 fis' b fis d' e |
  e,,8 e' b' e b g |
  b,8 fis' b fis' d b |
  fis,8 fis' a fis' cis a |\break
  
  a,8 a' cis a' e cis |
  a,8 a' d a' e a, |
  <cis, g' c>4.~ q |
  d8 a' d\> e d a\! |\break
  
  d,8 a' d e d a |
  fis8 a cis fis cis a |
  a8 cis e a e cis |
  g8 b d e d b |
  g8 ais d g d ais |\break
  
  a8 d e a e d |
  <a cis e>4. a,8 e' a,\toSegno |\bar"||"
  d8\< a' d b, <fis' b> <b dis>\! |\bar"||"
  \key e \major
  e,,8\f e' b' fis' e b |\break
  
  cis,8 gis' cis gis e' gis |
  fis,,8 fis' cis' fis cis a |
  cis,8 gis' cis gis' e cis |
  gis,8 gis' b gis' dis b |
  b,8 b' dis b' fis dis |\break
  
  b,8^\markup {\italic "rit."} b' e b' fis b, |
  b,16 fis' dis' b' fis dis b dis fis b dis fis |
  <e,,, e'>4.~ q~ |
  q4.~ q |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "同 桌 的 你"
    composer = "高晓松  曲"
    arranger = "Blueman 编配"
  }
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
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}

\markup {
  原谱来自：
  \with-url #"http://www.gangqinpu.com/html/26317.htm" {
    虫虫钢琴（http://www.gangqinpu.com/html/26317.htm）
  }
}

