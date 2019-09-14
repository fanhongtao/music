\version "2.18.2"

songName = "我和我的祖国"
\include "../lib/paper-footer.ily"
\include "../lib/repeat.ily"

\header {
  title = \songName
  composer = "秦咏诚 作曲"
  arranger = "黄 岑 编曲"
}

keyTime = {
  \key c \major
  \time 6/8
  \numericTimeSignature
}


upper_repeat = \relative c'' {
  <c c'>8\f\( <d d'> <e e'> <d d'> <c c'> <a a'> |
  <b b'>8 <a a'> <f f'> <g g'>16\) e'-3\< f g a-1 b\! |\break
  
  <c, c'>8\ff\( <d d'> <e e'> <d d'> <c c'> <a a'> |
  b'8-5 g8. e16 a4.-4\) |
  <b, d>4.\p q8-1-2 <c e>-1-3 <d f>-2-4 |
  <e g>4.-3-5 <a, c>8 <b d> <c e> |\break 
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "深情地" 8=150
  \override Hairpin.to-barline = ##f
  \set fingeringOrientations = #'(right)
  
  \ottava #1
  c'4\p\( d8 e-3 d c |
  b8-4 a e g4.\) |
  a8-1\( b c f-5 e c-2 |
  d2.-3\) |\break
  
  c4\( d8 e d c |
  b8-4 g-2 e-1 a4.\) |
  g8.\(\< a16 b c-1 d4-2 e8\! |
  f4.-4~\> f8 e d\! |\break
  
  c2.~\p |
  c2.\)\ottava #0 |
  \repeat volta 2 {
    g8-4\( a g f e d-1 |
    c4.-4 g\) |\break
    
    c8-1\( e-2 c' b a e |
    g2.-2\) |
    a8-4\( b a g f e-1 |
    d4.-3 a\) |\break
    
    b8-3\( a g g' c,8. d16 |
    e2.-3\) 
    g8-4\( a g f e d |
    c4. g\) |\break\pageBreak
    
    c8-1\( e-2 c'-5 b-2 e8.-5 c16-3 | % 我在其他人的谱子中看到的是 d8，不过黄老师认为 e 更好听，所以这里按照她的意见写成 e8.
    a2.-1\) |
    c8-4\( b a g4.\) |
    a8-4\( g f e4.\) |\break
    
    b4-3\( a8 g4 d'8 |
    c8-1\< e-2 f-3 g-1 a-3 b-4\!\) |\bar "||"\mark \markup { \musicglyph #"scripts.segno" }
    \upper_repeat
    \toCoda-mark
    
    <d, f>4.\( <g, b d>4 c8 |
  }
  \alternative {
    {
      <e, g c>2.\)~ |
      q2. |
    }
    {
      q16 e16\< f g a b c e f g a b\! |\bar"||" \once \override Score.RehearsalMark.direction = #DOWN \dsalCoda-mark \break
      \tag #'midi {
        \upper_repeat
      }
    }
  }
  
  <b,-1 d-2 g-5>4.->\coda <g'-1 b-2 d-4>4->\fermata <c, c'>8-> |
  <c-1 e-2 g-3 c-5>2.-> |
  s4. <c, gis' c e gis c>4.\ff\fermata^\markup{\translate #'(3 . 1)"l.h."}
  |\bar "|."
}

% 因为本首曲子大量使用踏板，为了减少代码量，定义缩写
On=\sustainOn
Off=\sustainOff
Switch=\sustainOff\sustainOn

lower_repeat = \relative c {
  c,16_5 g'_2 c_1 e_4 g_2 c_1 e4. |
  g,,16_5 d'_2 g_1 b_4 d_2 r16 <g,, g'>8 <f f'> <d d'> |\break
  
  c16 g' c e g c e4. |
  g,,16 d' g b d r a16_2 b a g f e |
  g'8_1\( f e d4._4\) |
  b8_3\( a g e'4._1\) |\break
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  \set fingeringOrientations = #'(right)
  
  c4\On g'8 c4. |
  e,4\Switch b'8 d4. |
  <f, a f'>2.\Switch |
  g8_1\Switch a_2 g_1 f_2 d_3 b_5 |\break
  
  c4_4\Switch g'8 c4. |
  e,4\Switch b'8 f'4 \once \stemUp d,8_2~ |
  <g, d'>2.\Switch |
  <g d' f>4.\Switch <b' d f>4. |\break
  
  c,4\Switch g'8 c4 g8 |
  c,4\Switch g'8 c4 g8 |
  \repeat volta 2 {
    c,4_5\Switch g'8_1 g,_5 d'_2 g_1 |
    e8_5\Switch g_4 c_2 e4_1 b8_2 |\break
    
    e,8_5\Switch a_2 e'_1 a,4_2 e8_5 |
    g,4_5\Switch a'8_2 b4_1 g8_2 |
    a,4_5\Switch e'8_2 a4_1 a,8_5 |
    d8_5\Switch a' d f4 a,,8_4 |\break
    
    g8_5\Switch d'_2 g_1 b_2 g_1 d_2 |
    c8_5\Switch g'_2 c_1 e4_2 c8_1 |
    c,4_5\Switch g'8_1 g, d' g |
    e8\Switch g c e4 b8 |\break\pageBreak
    
    e,8_5\Switch a_2  e'_1 a,4_2 e8_5 |
    f,8_5\Switch c' f a4 f8 |
    e,8_5\Switch b'_2 e_1 g_2 e b |
    a8_5\Switch c_4 e_2 a_1 e c |\break
    
    <g-5 b-4 d-2 f-1>2.\Switch\arpeggio |
    c4 g'8\Switch~ \stemDown g <f, f'> <d d'> \stemNeutral |\bar"||"
    \lower_repeat
    
    <g' d' g>4.\Switch <g, d' g> |
  }
  \alternative {
    {
      c,16_5_\<\Switch g'_2 c_1 e_4 g_2 c_1\! e-2_\> c-1 g-2 e-4 c-1 g-2\! |
      c,16_\<\Switch g' c e g c\! e_\> c g e c g\! |
    }
    {
      <c c'>8\Switch <bes bes'> <a a'> <g g'> <f f'> <e e'> |
      \tag #'midi {
        \lower_repeat
      }
    }
  }
  <g' d' g>4.\Switch g,8 <d' g>~ q |
  c,16_5_\<\Switch g'_2 c_1 e_4 g_2 c_1 c,,_5 f_3 gis_2 c_1 f_3 gis_2 |
  \change Staff = "upper" c16_1^\markup {"l.h."} f_3 gis_2 c-1^\markup {"r.h."} f-2 gis-3\!
  \change Staff = "lower" <c,,,, c' g'>4.\Off |
  
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
