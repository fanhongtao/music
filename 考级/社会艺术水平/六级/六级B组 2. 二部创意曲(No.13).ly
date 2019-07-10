\version "2.18.2"
% 《中国音乐学院 社会艺术水平考级全国通用教材 钢琴 （一级~六级） 第二套》 P141~142

songName = "二部创意曲"
\include "../../../lib/markups.ily"
\include "../../../lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "(No.13)"
  composer = "巴赫 曲"
}

keyTime = {
  \key c \major
  \time 4/4
  %\numericTimeSignature
}



upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegro" 4=132
  \override Hairpin.to-barline = ##f
  
  r16 e,-1\mf( a-3 c b e, b'-2 d c8-.) e-. gis,-.-2 e' |
  a,16-.-2(e a c b e, b'-2 d c8-.->) a-.-> r4 |
  r16 e'-5 c e a,-2 c-4 e, g-3 f8-.-2^\< a-.-1 d-.-3\! f->~ |\break
  
  f16 d b d-5 g,-2 b-4 d, f-3 e8-.-2^\<  g-.-1 c-.-3\! e^>~ |
  e16 c-4 a c f,8_. d'_>~ d16 b-4 g b e,8_. c'_>^~ |
  c16 a-4 f a d,8_. b'_.-4 c-.\p r r4 |\break
  
  r16 g-1( c-2 e d g, d'-2 f e8-.) g-.\f b,-. g'-. |
  c,16-.-2 g^\f( c-2 e d g, d'-2 f e8-.->)[ c-.->] g'-.^\p e-.-1 |
  c'16->-4 a e a-5 c,-2 e a, c d8-.-1^\< fis-.-2 a-.\! c-. |\break
  
  b16->-4 g d g-5 b,-2 d g, b c8-.-1^\< e-.-2 g-.\! b-. |
  a16->-5 fis-3 dis fis b, dis-5 fis,-2 a-3 g8-.-1 g'->~_\crescendo g16 e-4 c e |\break\pageBreak
  
  a,8-. fis'->-5~ fis16 d-4 b d g,8-. e'->~ e16 c-4 a c |
  fis,16 g' fis e dis-2 fis-4 b, dis-3 e8-.\f r r4 |\break
  
  r16\p g-2_\markup { \italic "legg." } bes g e g-5 cis,-2 e-3 g e cis e a, r r8 |
  r16 f'-2 a f d f-5 b,-2 d-4 f d b d g, r r8 |
  r16 e'-2 g e c e-5 a,-2 c-4 dis-5 c a c fis,-1 r r8 |\break
  
  r16 d'!-2 f d b d-5 gis,-2 b-3 d b gis b e, r r8 |
  r16 e-1\p_( a-2 c b e, b'-2 d c8_.) a_. gis_.-2 e_. |
  a16-2 c-4 e-5 c-3 a-1 c-5 fis,-2 a-3 c a fis a dis,-1 c'-5 b a |\break
  
  gis16-2 b-3 d! b gis b-4 d, f!-2 gis-4 f d f-4 b, f'-4 e d |
  c16 e a e c e-4 a, c dis c a c-5 fis, c' b a |
  gis8_. b'-.[ gis-. e-.] r16 e-2(_\crescendo a c b e, b'-2 d |\break
  
  c16-.) a c-2 e d b d-2 f e-3 c e g f e d c |
  b!16-2 c-1 d e f-4 d-1 gis-3 d b'->\f d,-1 c-2 a' f d b d-5 |
  gis,-2 b-4 c a e a-3 b gis a-3 e-1 c-2 e-4 a,4\fermata \bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  a8-. a'4->_2( gis8-.)   a16-. e( a_3 c b_2 e, b' d |
  c8-.) a-._1 gis-._3 e-. a16-. e( a_3 c b e, b' d |
  c8-.->_2)[ a-.->] c-. a-. d16->_1 a_2 f_4 a d,_5 f_1 a,_5 c |\break
  
  b8-._4_\< d-._2 g-._1 b->_2~\! b16 g_4 e_5 g_1 c,_3 e_2 g,_5 b_3 |
  a8_._4 c_._1 d16_2 f b, d g,8_. b_. c16_2 e a, c_1 |
  f,8_._3 d_. g16_._2 g'_1_( f g \once \stemDown c,-.) g'_5([ c_3 e] d_2 g, d' f |\break
  
  e8-.) c-._1 b-. g-. c16-._1 g_5( c_3 e d_2 g, d' f |
  e8-.->) c-.-> r4 r16\p g'_2 e_4 g c,_5 e_1 g,_5 b_3 |
  a8-._4_\< c-._2 e-. g-._2\! fis16->_3 a d,_4 fis a, d fis, a |\break
  
  g8-._3_\< b-. d-._4 fis-.\! e16->_3 g_1 c,_4 e_2 g,_5 c_1 e,_4 g_2 |
  fis8-._3_\< a-. b-._4 dis-.\! r16 e_1 c_4 e_2 a, c e g |\break\pageBreak
  
  fis16_2 d!_4 b d_1 g,_5 b d fis_1 e_2 c_4 a c_1 fis,_4 a c8->~ |
  c16 b c a b8-. b,-. e16-._3 e'_1([ b g] e_1 b g b |\break
  
  e,8_.^^) e'-._3[ g-. bes-.] cis,_. r r16 g'' f e |
  d8-._1 d,-.[ f-._3 aes-._2] b,-. r r16 f'' e d |
  c8-._1 c,-._5[ e-. fis-.] a,_. r r16 e'' dis cis |\break
  
  b8-._1 b,-._5[ d!-. f-._1] gis,_._4 r r16 d''_1 c b |
  c8-. a-._1[ gis-._3 e-.] a16-._2 e( a_3 c b e, b' d |
  c16_4) e_2 a_1 e c e_2 a,_5 c_1 fis,_3 a c a fis a dis,_5 fis_3 |\break
  
  e8-._4 gis-. b-. gis-. e-._1 b-. gis-. e-. |
  a8-._3 c-._2 e-. c-. a-.[ c-._1] dis,_._4 r |
  r16 b''_1( gis_2 e_4 d! b' gis_2 d_4 c8-.) e-. gis,-._4 e'-._1 |\break
  
  a,8-._5 fis'-._2 b,-._5 gis'-._2 c,-._5 a'-._1 d,-._5 bes'-._2 |
  gis8-._3 f!-._1 d-._2 b!-._1 gis-. a-._1 d,-._5 e-. |
  f8-._3 dis-._4 e-._5 e'-. a,2\fermata \bar "|."
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
