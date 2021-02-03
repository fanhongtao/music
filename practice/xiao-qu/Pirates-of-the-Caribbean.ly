\version "2.18.2"

songName = "Pirates-of-the-Caribbean （加勒比海盗）"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "（六手联弹）"
  poet = "微博：@文武贝MUSIC"
  composer = "Klaus Badlt 曲"
  meter = "速度：每分钟200拍"
  arranger = "文武贝 改编"
  piece = "提示：第一行谱要高八度演奏"
}

keyTime = {
  \key f \major
  \time 6/8
  \numericTimeSignature
}

On=\sustainOn
Off=\sustainOff
Switch=\sustainOff\sustainOn

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=100
  
  \ottava #1
  R2. |
  R2. |
  R2. |\break
  
  R2. |\bar"||"
  R2. |
  R2. |
  R2. |\break
  
  R2. |
  R2. |
  R2. |
  R2. |\break\pageBreak
  
  r4. r4 a'16 c |
  <<
    {
      \stemUp
      d8 d d16 e  f8 f f16 g |
      e8 e d16 c  c16 d8. a16 c |
      d8 d d16 e  f8 f f16 g |\break
      
      e8 e d16 c    d4 a16 c |
      d8 d d16 f    g8 g g16 a |
      bes8 bes a16 g  a16 d,8. d16 e |
      f8 f g        a16 d,8. d16 f |\break
      
      \time 3/8
      e8 e d16 cis |
      \time 6/8
      d8 d e  f8 f16 f g8 |\bar"||"
    }
    \new Voice \relative c'' {
      \stemDown
      f4. bes |
      g4. f |
      f4. a |\break
      
      g4. f |
      f4. bes |
      d4. c |
      bes4. c |\break
      
      \time 3/8
      g4. |
      \time 6/8
      a8 a a a a bes |
    }
  >>
  \stemNeutral
  <d f a>4-> f,16 d  a8 r4 |
  <d' f bes>4-> f,16 d  bes8 r4 |\pageBreak
  
  <<
    {
      \voiceOne \stemUp
      e'16 e8 e16  f8\rest e4  f8\rest |
      \repeat volta 2 {
        a8 a a       bes16 a c4\rest |
        g8 g g       g16 a a4\rest |
        a8 a a       bes16 a a4\rest |\break
        
        g8 f e       d4  d8\rest |
      }
      a'4.          bes4. |
      a8 a a       a16 g8. g8\rest |\break
      
      g4.          f4. |
      e8 f e       e16 d8. d8\rest |
      a'4.         bes |\break\pageBreak
      
      a8 a c       a16 g8.  g8\rest |
      g4.          f |
      \time 3/8
      e8 f e |\break
      
      \time 6/8
      d8 d e         f f16 f g8 |
      d16 d8 d16 e8  f16 f8 f16 g8 |
      a16 a8 d16 cis8  d4. |\break
    }
    \new Voice \relative c'' {
      \voiceTwo \stemDown
      a'16 a8 a16 e8\rest a4. |
      \repeat volta 2 {
        c8 c c        d16 c a4\rest |
        bes8 bes bes  bes16 c a4\rest |
        c8 c c        d16 c a4\rest |\break
        
        bes8 a g      f4 e8\rest |
      }
      c'4.          d |
      c8 c c        c16 bes8. g8\rest |\break
      
      bes4.         a |
      g8 a g        g16 f8. e8\rest |
      c'4.          d |\break
      
      c8 c f        c16 bes8. g8\rest |
      bes4.         a |
      \time 3/8
      a8 a a |\break
      
      \time 6/8
      a8 a a          a a16 a bes8 |
      f16 f8 f16 g8   a16 a8 a16 bes8 |
      cis16 cis8 f16 e8   f4. |\break
    }
  >>
  
  \stemNeutral
  \oneVoice
  r4. 
  \tag #'pdf {
    d4. \glissando |
    d,,,, 4.
  }
  \tag #'midi { 
    \relative c'' { \tuplet 29/24 { d''32 c b a g f e d c b a g f e d c b a g f e d c b a g f e d } }
  }
  s4. |
  \ottava 0
  |\bar "|."
}

middle = \relative c' {
  \clef treble
  \keyTime
  
  d8 d16 d8 d16 d8 d16 d d d |
  d8 d16 d8 d16 d8 d16 d d d |
  d8 d16 d8 d16 d8 d16 d d d |\break
  
  d8 d16 d8 d16 d8 d16 d a c |
  d8 d d16 e    f8 f f16 g | 
  e8 e d16 c    c16 d8. a16 c |
  d8 d d16 e    f8 f f16 g |\break
  
  e8 e d16 c    d4 a16 c |
  d8 d d16 f    g8 g g16 a |
  bes8 bes a16 g a16 d,8. d16 e |
  f8 f g        a16 d,8. d16 f |\break\pageBreak
  
  e8 e f16 d    e8. a16 a c |
  <<
    {
      \stemUp
      d8 d d16 e  f8 f f16 g |
      e8 e d16 c  c16 d8. a16 c |
      d8 d d16 e f8 f f16 g |\break
      
      e8 e d16 c    d4 a16 c |
      d8 d d16 f    g8 g g16 a |
      bes8 bes a16 g  a16 d,8. d16 e |
      f8 f g        a16 d,8. d16 f |\break
      
      \time 3/8
      e8 e d16 cis |
      \time 6/8
      d8 d e  f8 f16 f g8 |
    }
    \new Voice \relative c' {
      \stemDown
      f4. bes |
      g4. f |
      f4. a |\break
      
      g4. f |
      f4. bes |
      d4. a |
      bes4. a |\break
      
      \time 3/8
      g4. |
      \time 6/8
      a8 a a a a bes |
    }
  >>
  \stemNeutral
  <a, d a'>4-> f16 d a4 \tuplet 6/4 {a32 d f a d f} |
  <bes, d a'>4-> f16 d bes4 \tuplet 6/4 {f32 bes d f bes d} |\break
  
  <<
    {
      \voiceOne \stemUp
      e16 e8 e16  f8\rest  e8.[ a,32 b!] \tuplet 5/4 { cis d e f g } |
      \repeat volta 2 {
        a8 a a      bes16 a c4\rest |
        g8 g g      g16 a a4\rest |
        a8 a a      bes16 a a4\rest |\break
        
        g8 f e      d4 d8\rest |
      }
      a'4.        bes |
      a8 a a      a16 g8. g8\rest |\break
      
      g4.          f4. |
      e8 f e       e16 d8. d8\rest |
      a'8. d,16 e f bes8. d,16 e f |\break
      
      a8 a c       a16 g8.  g8\rest |
      g8. g,16 a bes  f'8. d16 e f |
      \time 3/8
      e8 f e |\break
      
      \time 6/8
      d8 d e         f f16 f g8 |
      d16 d8 d16 e8  f16 f8 f16 g8 |
      a16 a8 d16 cis8  d4. |\break
      
      a32 bes a bes a bes a bes a bes a bes bes4.\rest |
    }
    \new Voice \relative c'' {
      \voiceTwo \stemDown
      <d, e>16 q8 q16 d8\rest <cis e>8. c16\rest c8\rest |
      \repeat volta 2 {
        f8 f f   g16 f e4\rest |
        e8 e e   e16 f e4\rest |
        f8 f f   g16 f e4\rest |\break
        
        g8 f e   f4 e8\rest |
      }
      <a c>4.  <bes d> |
      <a c>8 q q  q16 <g bes>8. g8\rest |\break
      
      <g bes>4.  <f a> |
      <e g>8 <e a> <e g>   q16 <d f>8. e8\rest |
      <a c>4.    <bes d> |\break
      
      <a c>8 q <c f>   <a c>16 <g bes>8. g8\rest |
      <g bes>4.        <f a> |
      \time 3/8
      cis'8 cis cis |\break
      
      \time 6/8
      a8 a a          a a16 a bes8 |
      f16 f8 f16 g8   a16 a8 a16 bes8 |
      cis16 cis8 f16 e8   f4. |\break
      
      d16 d d d d d a4.\rest |
    }
  >>
  \oneVoice
  R2. |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \dynamicUp
  
  R2. |
  R2. |
  d,,8 d'16 d,8 d'16  d,8 d'16 d,8 d'16 |\break
  
  d,8 d'16 d, 8 d'16  d,8 d'16 d, 8 d'16 |
  <<
    { \stemDown
      d4. bes |
      a4. d |
      bes4. f |\break
      
      c'4. d |
      d4.  bes |
      g4.  d' |
      bes4. d |\break\pageBreak
      
      a4. a |
      <d d'>8 q q16 <c c'>   <bes bes'>8 q q16 <c c'> |
      <a a'>8 q q16 <c c'>   <d d'>8 q <g, g'>16 <a a'> |
      <bes bes'>8 q q16 <c c'> <f, f'>8 q q16 <g g'> |\break
      
      <c c'>8 q q            <d d'>8 q q |
      <a a'>8 q q16 <c c'>   <bes bes'>8 q q |
      <g g'>8 q q16 <a a'>   <d d'>8 q <g, g'>16 <a a'> |
      <bes bes'>8 q q16 <c c'> <d d'>8 q <g, g'>16 <gis gis'> |\break
      
      \time 3/8
      <a a'>8 q q16 <g g'> |
      \time 6/8
      \stemUp
      <a a'>8 q q   <d d'>8 <c c'> <bes bes'> |
    }
    \new Voice \relative c {
      \stemUp
      f8\rest <d f a>4 f8\rest <d f bes>4 |
      f8\rest <c e g>4 f8\rest <d f a>4 |
      f8\rest <d f bes>4 f8\rest <f a c>4 |\break
      
      f8\rest <c e g>4 f8\rest <d f a>4 |
      f8\rest <d f a>4 f8\rest <d f bes>4 |
      f8\rest <d g bes>4 f8\rest <d f a>4 |
      f8\rest <d f bes>4 f8\rest <d f a>4 |\break\pageBreak
      
      f8\rest <d e a>4 f8\rest <cis e a>4 |
      g'8\rest <f a d>4 f8\rest <f bes d>4 |
      g8\rest <e g c>4 a8\rest <f a d>4 |
      g8\rest <f bes d>4 f8\rest <f a c>4 |\break
      
      g8\rest <e g c>4 a8\rest <f a d>4 |
      g8\rest <f a d>4 g8\rest <f bes d>4 |
      g8\rest <g bes d>4 a8\rest <f a d>4 |
      g8\rest <f bes d>4 a8\rest <f a d>4 |\break
      
      \time 3/8
      f8\rest <e a cis>4 |
      \time 6/8
      s4. s |
    }
  >>
  \stemNeutral
  <a a'>4_> r8 r4. |
  <g g'>4_> r8 r4. |\break
  
  <<
    {
      \voiceOne \stemDown
      <a a'>16 q8 q16  a8\rest q4 a8\rest |
      \repeat volta 2 {
        <d d'>8 q q      q q q |
        <c c'>8 q q      q16 <d d'> q8 q |
        <d d'>8 q q      q q q |\break
        
        <bes bes'>8 q <a a'>  <d d'> q q |
      }
      d4.    bes |
      f4.    c' |\break
      
      g4.    d' |
      a4.    d |
      d4.    bes |\break
      
      f4.    c' |
      g4.   d' |
      \time 3/8
      a8. a'16 a, a' |\break
      
      \time 6/8
      a,8. a'16 a, a'  <d, d'>8 <c c'> <bes bes'> |
      <f' f'>16 q8 q16 <e e'>8   <d d'>16 q8 q16 <c c'>8 |
      <a a'>16 q8 q16 q8       <d, d'>4. |\break
    }
    \new Voice \relative c {
      \voiceTwo \stemUp
      a'16 a8 a16 a8\rest  a4. |
      \repeat volta 2 {
        d8 d d   bes16 d d4\rest |
        c8 c c   c16 d d4\rest |
        <a d>8 q q   q8 d4\rest |\break
        
        <f, bes>4 <a cis>8  <a d>4 d8\rest |
      }
      a16\rest a, d f a d   a16\rest d, f bes d f |
      a,16\rest c, f a c f   a,16\rest g, c e g c |\break
      
      a16\rest bes, d g bes d  a16\rest a, d f a d |
      a16\rest a, cis e a cis  a16\rest a, d f a d |
      a16\rest a, d f a d      a16\rest f bes d f bes |\break
      
      a,16\rest c, f a c f     a,16\rest g, c e g c |
      a16\rest d, g bes d g    a,16\rest a, d f a d |
      \time 3/8
      a8\rest <g cis e>4 |\break
      
      \time 6/8
      a8\rest q4  s4. |
      d16 d8 d16 e8   f16 f8 f16 g8 |
      a,16 a8 d16 cis8  <f, d'>4. |\break
    }
  >>
  
  \stemNeutral
  \oneVoice
  R2. |
  <d d'>4_> r8 r4. |
  |\bar "|."
}


On=\sustainOn
Off=\sustainOff

pedal = {
  s2.\On | s2.\On | s2.\On |\break
  s2.\On | s4.\On s4.\On | s4.\On s4.\On | s4.\On s4.\On |\break
  s4.\On s4.\On | s4.\On s4.\On | s4.\On s4.\On | s4.\On s4.\On |\break
  
  s4.\On s4.\On | s4.\On s4.\On | s4.\On s4.\On | s4.\On s4.\On |\break
  s4.\On s4.\On | s4.\On s4.\On | s4.\On s4.\On | s4.\On s4.\On |\break
  s4.\On | s4.\On s4.\On | s4\On s8\Off s4. | s4\On s8\Off s4. |\break
  
  s4\On s8\Off s4.\On |
  \repeat volta 2 {
    s4.\On s4.\On | s4.\On s4.\On | s4.\On s4.\On |\break
    s4\On s8\Off s4.\On |
  }
  s4\On s8\Off s4\On s8\Off | s4\On s8\Off s4\On s8\Off |\break
  s4\On s8\Off s4\On s8\Off | s4\On s8\Off s4\On s8\Off | s4\On s8\Off s4\On s8\Off |\break
  
  s4\On s8\Off s4\On s8\Off | s4\On s8\Off s4\On s8\Off | s8.\On  s8.\Off |\break
  s4.\On s8\On s8\On s8\On | s4\On s8\Off s4\On s8\Off | s4\On s8\Off s4.\On |\break
  s2.\On | s8\On s8\Off s8 s4. |
}

\score {
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" { \new Voice = "singer" \upper }
    \new Staff = "middle" \middle
    \new Staff = "lower" \lower
    \new Dynamics = "pedal" \pedal
  >>
  \layout {
    % indent = 0\cm
    \context {
      \Lyrics
      \override LyricText.font-name = #"楷体"
    }
  }
  % \midi { }
}

\score {
  \unfoldRepeats
  \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "middle" \middle
    \new Staff = "lower" \lower
  >>
  \midi { }
}

\markup { \override #'(font-name . "楷体") \column {
  \line { 来自 \with-url #"http://www.tan8.com/yuepu-53986.html" { http://www.tan8.com/yuepu-53986.html } }
} }
