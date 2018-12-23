\version "2.18.2"
% 《中国音乐学院 社会艺术水平考级全国通用教材 钢琴 （一级~六级） 第二套》 P14

songName = "卖 报 歌"
\include "../../../lib/markups.ily"

\header {
  title = \songName
  composer = "聂耳 曲"
}

keyTime = {
  \key f \major
  \time 2/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto"
  \override Hairpin.to-barline = ##f
  
  c'8-.\mp c-. c4-. |
  c8-. c-. c4-. |
  a8 c d c16 a |
  g8-. a-. c4-. |\break
  
  c8 a c a16 g |
  f8-. a-. g4-. |
  a8-. a-. g4-. |
  d8-. f-. g4-. |\break
  
  <f, a d>4\f^\( q8 <f a c> |
  <f a>8 d' <f, a c>4\) |
  q8^\( <c f a> <c e g> <c f a> |
  <e g c>2\) |\break
  
  c'8\mf[ a g a] |
  c8[ a g a] |
  d,^\(_\rit[ f_\dimin g a] |
  <c, f>2\)\mp |\bar "|."
}

lower = \relative c {
  \clef treble
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  <f'' a>8-. <f aes>-. <f a>4-. |
  <f a>8-. <f aes>-. <f a>4-. |
  f8 c f c |
  e8-. c-. <f a>4-. |\break
  
  f8 c f c |
  <a d>8-. f'-. <c e>4-. |
  <c f>8-. q-. <c e>4-. |
  <f, a>8-. d'-. <c e>4-. |\break
  
  \clef bass 
  << 
    { 
      \voiceOne r4 a,8 c |
      r4 f,8 g |
      r4 g8 a |
      r8 e[ g c] |
    }
    \new Voice { 
      \stemDown <\parenthesize f,, f'>2 |
      <\parenthesize c c'>2 |
      <\parenthesize f f'>2 |
      <\parenthesize c c'>2 |
    }
  >> \break
  
  \stemDown f'8[ c' a c] |
  f,8[ c' a c] |
  <g b>8[ d <g bes> c,] |
  <f a>2 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
