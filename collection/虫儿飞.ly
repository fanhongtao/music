\version "2.18.2"

songName = "虫 儿 飞"
\include "../lib/paper-footer.ily"
\include "../lib/markups.ily"

\header {
  title = \songName
  composer = "作曲： 陈光荣"
  arranger = "编制： 容中秋"
}

keyTime = {
  \key f \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=100
  \override Hairpin.to-barline = ##f
  
  a'2 f |
  a2 f |
  r4 r8 f a2 |
  a2 f |\break
  
  a4 a8 a bes4 c |
  a2 g |
  f4 f8 f g4 a a2 e |\break
  
  d4 a' g2 |
  d4 a' g2 |
  d4 a' g4. f8 |
  f1 |\break
  
  f2 f |
  a4 a8 a bes4 c |
  a2 g |
  f4 f8 f g4 a |\break
  
  a2 e |
  d4 a' g2 |
  d4 a' g2 |
  d4 a' g4. f8 |\break
  
  f1 |
  f2 a4 g |
  c2. bes8 a |
  g2. c8 bes |\break
  
  a4 bes8 c r4 a |
  g2 r4 r8 f |
  d4 a' g4. f8 |
  c4 g' f2 |\break
  
  bes8 a bes a f2 |
  bes8 a bes a f4. g8 |
  \ottava #1 <a a'>4 q8 q <bes bes'>4 <c c'> |
  <a a'>2 <g g'> |\break
  
  <f f'>4 q8 q <g g'>4 <a a'>
  q2 <e e'> |
  <d d'>4 <a' a'> <g g'>2 |
  <c, c'>4 <g' g'> <f f'>2 |\break
  
  <bes bes'>8 <a a'> <bes bes'> <a a'> <f f'>2 |
  <g g'>2. <f f'>4~ |
  q1 |
  R1\ottava #0 |\bar "|."
}

lower = \relative c {
  \clef treble
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  f8 c' f a f, c' f a |
  f,8 c' f a f c bes a |
  f'8 c f a f, c' f a |
  f,8 c' f a f c bes4 |\break
  
  \clef bass f8 c' f a f, c' f a |
  c,,8 g' c e c, g' c e |
  d,8 a' d f d, a' d f |
  a,,8 e' a c a, e' a c |\break
  
  bes,8 f' bes d c, g' c e |
  bes,8 f' bes d c, g' c e |
  bes,8 f' bes d c, g' c e |
  d,,8 a' d f d, a' d f |\break
  
  d,8 a' d f d, a' d e |
  f8 c' f a f, c' f a |
  c,,8 g' c e c, g' c e |
  d,8 a' d f d, a' d f |\break
  
  a,,8 e' a c a, e' a c |
  bes,8 f' bes d c, g' c e |
  bes,8 f' bes d c, g' c e |
  bes,8 f' bes d c, g' c e |\break
  
  d,,8 a' d f d, a' d f |
  d, a' d f \clef treble b,32 r4 r8. e''32 |
  \clef bass f,,8 c' f a c a f c |
  c,8 g' c e g e c g |\break
  
  d8 a' d f a f d a |
  c,8 g' c e g e c g |
  bes,8 f' bes d c, g' c e |
  a,,8 e' a c d, a' d f |\break
  
  bes,,8 f' bes d f, c' f a |
  bes,,8 f' bes d d, a' d f |
  f,8 c' f a f, c' f a |
  c,,8 g' c e c, g' c e |\break
  
  d,8 a' d f d, a' d f |
  a,,8 e' a c a, e' a c |
  bes,8 f' bes d c, g' c e |
  a,,8 e' a c d, a' d f |\break
  
  bes,,8_\rit f' bes d f,, c' f a |
  r2 r4 <c f a>\arpeggio~ |
  q1\arpeggio |
  R1 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup {
  原谱来自：
  \with-url #"http://www.gangqinpu.com/html/24203.htm" {
    虫虫钢琴（http://www.gangqinpu.com/html/24203.htm）
  }
}
