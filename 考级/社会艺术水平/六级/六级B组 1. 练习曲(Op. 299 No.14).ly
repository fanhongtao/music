\version "2.18.2"
% 《中国音乐学院 社会艺术水平考级全国通用教材 钢琴 （一级~六级） 第二套》 P139

songName = "练习曲"
\include "../../../lib/markups.ily"
\include "../../../lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "(Op.299    No.14)"
  composer = "车尔尼 曲"
}

keyTime = {
  \key f \major
  \time 2/4
  \numericTimeSignature
}



upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Molto vivo e velocissimo" 4=116
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2 {
    \partial 16 c16-2\p |
    f32-5 c-1 b-2 c-3 d c b c-1 g'-5 c,-1 b-2 c-3 d c b c-1 |
    a'32-5 c,-1 b-2 c-3 d c b c-1 bes'!-5 c,-1 b-2 c-3 d c b c-1 |\break
    
    c'32 c, b c d c b c a' c, b c d c b c |
    fis32-5 c-1 b-2 c-3 d c b c-1 g' c, b c d c b c-1 |
    f!32-4_\crescendo e dis e-1 a-4 g fis g-1 \ottava #1 d'!-4 c b c-1 f!-4 e dis e-1 |\break
    
    g32-4\f f e f-1 d'-5 c bes! a g-1 f-4 e d c-1 bes-4 a g \ottava #0 |
    f32-1 e-3 d c bes-4 a g f e-2 f-1 g a bes c-1 d e |
    f32-1\ff g a bes c-1 d e f r8 r16 \break
  }
  
  a,,16-2\p |
  g32-1 c-3 b c d c b c f,-1 b-3 ais b c b ais b |
  g32-1 f'-4 e f g f e f g,-1 e'-3 dis e f e dis e |\break \pageBreak
  
  c32-1_\crescendo g'-3 fis g a g fis g-1 b-4 a gis a-1 d-4 c b c-3 |
  e,-1_\diminuendo g-3 fis g d-1 g-4 fis-3 g-5 e-3 c-1 b-2 c-3 d c b c-1 |\break
  
  g'32-5\p c,-1 b-2_\crescendo c-3 d c b c-1 c' c, b c d c b c |
  bes'!32 c, b c d c b c a' c, b c d c b c-1 |\break
  
  fis32-3\f c ees fis \ottava #1 a-1 c ees fis-4 g-1 a bes c d a-2 bes g |
  c32-5 bes a g f-1 e-3 d c bes-4 a g f e-2 bes'-5 g-4 e-2 |\break
  
  f32-1_\diminuendo c'-3 b c d c b c-1 a'-5 c,-1 b-2 c-1 g'-5 c,-1 b-2 c-1 |
  f32-5 c-1 b-2 c-3 d c b c a-1 c-3 b c g-1 c-3 b c |
  f,32-1\p c'-3 b c <g e'>-1-5 c-3 b c <f, f'> c'-3 b c  <g e'> c b c |\break
  
  <a f'>32_\crescendo c-3 b-2 c-1 <e g>-3-5 c-1 b-2 c-1 <f a>-3-5 c-1 b-2 c-1 <e g>-3-5 c-1 b-2 c-1 |
  <f a>32-3-5 c-1 b-2 c-1 <e c'>-2-5 g-3 e c <f c'>-2-5 a-4 f c <g' e'>-2-5 c g e |
  <a f'>32-2-5 c-3 a-2 f-1 c-3 a f f' \ottava #0 r8 r16
  \bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \repeat volta 2 {
    \partial 16 r16 |
    \clef treble a''8_.-1[ f_.-2 e_. c_.] |
    f8_.[ c_. g'_. c,_.] |\break
    
    a'8_.[ c,_. f_. c_.] |
    dis8_.[ c_. e_.-1 c_.-3] |
    bes8_.-4 <c e g>_. g_. <bes c g'>_. |\break
    
    a8_. <c f>_. \clef bass bes,-. <d g>-. |
    c8-. <f a>-. c-. <g' bes>-. |
    f8-. <a c>-. <f, f'>-. r16 \break
  }
  
  r16 |
  e'8-. <g e'>-._1_5 d-. <g d'>-._1_2 |
  b,8-. <g' d'>-. c,-. <g' c>-. |\break
  
  e8-. <c' e>-. <f, c' f>-. <a c f>-. |
  \clef treble <g c g'>_. <g b f'>_. <c e>_. r |\break
  
  bes!8-3 <c e> a-4 <c f> |
  g-5 <c e> f, <c' f> |\break
  
  \clef bass a,8 <c ees a> bes <d g bes> |
  c8 <f a c> c <g' bes c> |\break
  
  <f a>8 r \clef treble <f' a>_._1_2 <c e bes'>_. |
  <f a>8_. r <f a>_. <c e bes'>_. |
  <f a>_._1_2[ <c bes'>_._1_5 <f a>_. <c bes'>_.] |\break
  
  <f a>8_.[ <c bes'>_. <f a>_. <c bes'>_.] |
  <f a>8-. \clef bass <c, g' bes>-.[ <f a>-. <c g' bes>-.] |
  <f a>8-. <f, f'>-. <f, f'> r16 \bar "|."
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
