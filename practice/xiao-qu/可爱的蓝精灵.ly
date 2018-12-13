\version "2.18.2"

keyTime = {
  \key c \major
  \time 2/4
  \numericTimeSignature
}


upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto"
  \override Hairpin.to-barline = ##f
  
  g'16_4( c, a' c, g'8) e16( f |
  g16 c, a' c,  g'8) e16( f |
  g16\< g-1 a b c-1 d e fis\! |
  <b, d g>4->\sf) r8 e,,16-1\mf( f |\break
  
  g8-.) f-. e-. f-. |
  g8-. f-. e-. f-. |
  g8-. g16( fis g8_1-.) e'-. |
  c4. d,16( e |\break
  
  f8-.) e-. f-.-1 d'-. |
  b4. d,16( e |
  f8-.) e-. f-. a-. |
  g4. e16( f |\break
  
  g8-.) f-. e-. f-. |
  g8-. f-. e-. f-. |
  g8-. g16( fis g8-.) e'-. |
  d4. d,16( e |\break
  
  f8-.) e-. f-. d'-. |
  c8-. b-. a-. b-. |
  <e, g c>2-1-2-5~ |
  q4 <e g>4-1-3( |\break
  
  <f a> <c' e>8-3-5 q |
  <g c>4 <e g>-2-4 |
  <c e>2~ |
  q4) <e g>-2-4( |\break
  
  q4 <b' d>8 q |
  <g b>4 <d f>-2-4 |
  <b d>2~ |
  q4.) e16-2( f |\break
  
  <e g>8-.) <d f>-. <c e>-.-1-2 <d f>-. |
  <e g>8-. <d f>-. <c e>-. <d f>-. |
  <e g>8-. g16-3( fis_\markup { \bold \italic "rit." } <e g>8-.)\< <g c>-.-1-4 |
  <g c e>4.-1-3-5\! d16-2(_\markup { \bold \italic "a tempo" } e |\break
  
  <d f>8-.) <c e>-. <d f>-. <f d'>-. |
  <e c'>8-. <d b'>-. <c a'>-. <d b'>-. |
  <e g c>2~ |
  q8 c'16(_1\mp[ d] e8-.) f-. |\break
  
  g16-5( c, f c e8) e16( f |
  g16 c, f c e8) e16-1( f |
  g16 a g fis g8-.-1) <c e>-. |
  <e, g c>4. d16-1( e |\break
  
  f16 e d e f e f-1 d' |
  b4.) d,16-1( e |
  f e d e f e f a |
  g4.) e16( f |\break
  
  g16 c, f c e8) e16( f |
  g16 c, f c e8) e16( f |
  g16 a g fis g8-.) <c e>-. |
  <f, a d>4. d16( e |\break
  
  f16 e d e f e f-1 d' |
  c16 f, b f  a f b f |
  <e g c>2)~ |
  q2 |\break
  
  r16 g-1(a b  c-1 d e f |
  g8) g,( <c e>-3-5 g) |
  r16 g( a b c d e f |
  g8) g,( <c e> g) |\break
  
  r16 g( a b c d e f |
  g8) g,( <b d>-2-4 g) |
  r16 g( a b c d e f |
  g8-.) g,-. r e16-2 f |\break
  
  g16\mf c, f c e c e f |
  g16 c, f c e c e f-1 |
  g16-3 a g fis g g-1 e' g, |
  c16-5 g e-1 g-4 e c d e |\break
  
  f16 e d e f e f-1 d' |
  b16-4 f-2 d-1 f-4 d b-1 d-2 e |
  f16 e d e f e f-1 a-4 |
  g16-3 e-2 c-1 e-4 c g e'-3 f |\break
  
  g16 c, f c e c e f |
  g16 c, f c e c e f-1 |
  g16-3 a g fis g g-1 c-3 g |
  e'16 c g-1 c-5 g e-1 d-2 e |\break
  
  f16 e d e f e f-1 d'-5 |
  c16 f, b f a f b f |
  c'8 r \set Staff.ottavation = #"8" g16-2(\ff a g a |
  <e g c>4->) \unset Staff.ottavation r |\bar "|."
}


lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  
  <c' e>8_1_2-. q-. q-. r |
  <bes c e>8-. q-. q-. r |
  <a cis e>8-> r <fis a c d>->_1_2_3_5 r |
  <g b d>4->_1_2_4 g,_>-5 |\break
  
  c'8-1 r g r |
  c8 r g r |
  c8 r g r |
  c8 r g r |\break
  
  b8 r g r |
  d'8 r g, r |
  b8 r g r |
  b8 r g r |\break
  
  c8 r g r |
  c8 r g r |
  c8 r g-2 r |
  f8 r e r |\break
  
  d8 r f r |
  g8 r g, r |
  c8-1 r g r |
  c,4 r |\break
  
  c'8_5([ g'_2 c_1 g_4] |
  e'8[ g, c_1 g_2]) |
  c,8([ g' c g] |
  e'8[ g, c g]) |\break
  
  d8([ g b_1 g_4] |
  d'8_1[ g, b_2 g_1]) |
  g,8([ g' b_2 g] |
  d'8[ g, b g]) |\break
  
  c8 r g r |
  c8 r g r |
  c8 r g r |
  e8 r c r |\break
  
  d8 r f r |
  g8 r g, r |
  c8 r g r |
  c,4 r |\break
  
  c'8-. g'-. c4-. |
  c,8-. g'-. c4-. |
  c,8-. g'-. c4-. |
  c,8-. g'-. c4-. |\break
  
  g,8-.-5 g'-.-1 b4-.-2 |
  g,8-. g'-. b4-. |
  g,8-. g'-. b4-. |
  c,8-. g'-. c4-. |\break
  
  c,8-. g'-. c4-. |
  c,8-. g'-. c4-. |
  c,8-. g'-. c4-. |
  d,8-. a'-. d4-. |\break
  
  d,8-. a'-. d4-. |
  g,,8-. g'-. b4-.-2 |
  c,8-.-1[ g-. a-. b-.] |
  c8-. d-.-3 e( f |\break
  
  g4-4 e'8-1 e |
  c4-2 g-4 |
  e2~ |
  e4) g4-3( |\break
  
  f4-4 d'8-1 d |
  b4-2 f-4 |
  d2_~ |
  d4) g'8-. g,-. |\break
  
  c,8-.[ g'-. c-. g-.-1] |
  c,8-.[ g'-. c-. g-.] |
  c,8-.[ g'-. c-. g-.] |
  c,8-.[ g'-. c-. g-.] |\break
  
  g,8-.[ g'-.-1 b-.-2 g-.-1] |
  g,8-.[ g'-. b-. g-.] |
  g,8-.[ g'-. b-. g-.] |
  c,8-.[ g'-. c-. g-.] |\break
  
  c,8-.[ g'-. c-. g-.] |
  c,8-.[ g'-. c-. g-.] |
  c,8-.[ g'-. c-. g-.] |
  c,8-.[ g'-. c-. g-.] |\break
  
  d8-.[ a'-. d-. a-.] |
  g,8-.[ g'-.-1 b-.-2 g-.] |
  c8 r g, r |
  c,4-> r |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "可爱的蓝精灵"
    subtitle = "—— 美国动画片《蓝精灵》主题歌"
    composer = "郑秋枫   曲"
    arranger = "伍正文改编"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
  \midi { }
}

\markup { \vspace #1 }
\markup { 《孩子们喜爱的儿童民歌钢琴曲》 许民 主编 P112~115 }
\markup { 长春出版社 2013.08    ISBN 978-7-8060-4208-3  }