\version "2.18.2"

songName = "我和我的祖国"
\include "../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "秦咏诚 作曲"
  arranger = "黄 岑 改编"
}

keyTime = {
  \key c \major
  \time 6/8
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "深情地" 8=150
  \override Hairpin.to-barline = ##f
  
  \ottava #1
  c'4\( d8 e d c |
  b8 a e g4.\) |
  a8\( b c f e c |
  d2.\) |\break
  
  c4\( d8 e d c |
  b8 g e a4.\) |
  g8.\( a16 b c d4 e8 |
  f4.~ f8 e d |\break
  
  c2.~ |
  c2.\)\ottava #0 |
  \repeat volta 2 {
    g8\( a g f e d |
    c4. g\) |\break
    
    c8\( e c' b a e |
    g2.\) |
    a8\( b a g f e |
    d4. a\) |\break
    
    b8\( a g g' c,8. d16 |
    e2.\) 
    g8\( a g f e d |
    c4. g\) |\break\pageBreak
    
    c8\( e c' b e8. c16 |
    a2.\) |
    c8\( b a g4.\) |
    a8\( g f e4.\) |\break
    
    b4\( a8 g4 d'8 \bar "||"\mark \markup { \musicglyph #"scripts.segno" }
    c8 e f g a b\) |
    <c, c'>8\( <d d'> <e e'> <d d'> <c c'> <a a'> |
    <b b'>8 <a a'> <f f'> <g g'>16\) e f g a b |\break
    
    <c c'>8\( <d d'> <e e'> <d d'> <c c'> <a a'> |
    b'8 g8. e16 a4.\) |
    <b, d>4. q8 <c e> <d f> |
    <e g>4. <a, c>8 <b d> <c e> |\break
    
    <d f>4.\( <g, b d>4 c8 |
  }
  \alternative {
    {
      <e, g c>2.\) |
      q2. |
    }
    {
      q16 e16 f g a b c e f g a b |\break
    }
  }
  
  <b, d g>4. <g' b d>4\fermata <c, c'>8 |
  <c e g c>2. |
  f,16 gis c f gis c <c,, gis' c e gis c>4.\fermata
  |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  c4 g'8 c4. |
  e,4 b'8 d4. |
  <f, a f'>2. |
  g8 a g f d b |\break
  
  c4 g'8 c4. |
  e,4 b'8 f'4 \once \stemUp d,8~ |
  <g, d'>2. |
  <g d' f>4. <b' d f>4. |\break
  
  c,4 g'8 c4 g8 |
  c,4 g'8 c4 g8 |
  \repeat volta 2 {
    c,4 g'8 g, d' g |
    e8 g c e4 b8 |\break
    
    e,8 a e' a,4 e8 |
    g,4 a'8 b4 g8 |
    a,4 e'8 a4 a,8 |
    d8 a' d f4 a,,8 |\break
    
    g8 d' g b g d |
    c8 g' c e4 c8 |
    c,4 g'8 g, d' g |
    e8 g c e4 b8 |\break\pageBreak
    
    e,8 a  e' a,4 e8 |
    f,8 c' f a4 f8 |
    e,8 b' e g e b |
    a8 c e a e c |\break
    
    <g b d f>2.\arpeggio |\bar"||"
    c4 g'8~ \stemDown g <f, f'> <d d'> \stemNeutral |
    c16 g' c e g c e4. |
    g,,16 d' g b r8 g, f d |\break
    
    c16 g' c e g c e4. |
    g,,16 d' g b r8 a16 b a g f e |
    g'8\( f e d4.\) |
    b8\( a g e'4.\) |\break
    
    <g, d' g>4. <g, d' g> |
  }
  \alternative {
    {
      c,16 g' c e g c e c g e c g |
      c,16 g' c e g c e c g e c g |
    }
    {
      <c c'>8 <bes bes'> <a a'> <g g'> <f f'> <e e'> |
    }
  }
  <g' d' g>4. g,8 <d' g>~ q |
  c,16 g' c e g c c,, f gis c gis' c |
  s4. <c,, c' g'>4. |
  
  \bar "|."
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

\markup { \override #'(font-name . "楷体") \column {
  \fill-with-pattern #1 #RIGHT "" "" \line {
    \override #'(font-size . 4) {
      \with-url #"https://www.icourse163.org/u/mooc1464835902878" {黄岑}
    } 2019.9.10 沈阳 }
} }
\markup { \vspace #2 }
