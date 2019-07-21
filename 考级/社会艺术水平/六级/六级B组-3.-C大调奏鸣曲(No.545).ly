\version "2.18.2"
% 《中国音乐学院 社会艺术水平考级全国通用教材 钢琴 （一级~六级） 第二套》 P143~145

songName = "C大调奏鸣曲"
\include "../../../lib/markups.ily"
\include "../../../lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "(No.545)"
}

keyTime = {
  \key c \major
  \time 2/4
  \numericTimeSignature
}



upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto grazioso" 4=104
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2 {
    \partial 4 <e g>8-.-3-5\p^\markup {\halign #2 \bold "P.T."} q-. |
    <c e>8-.-1-3\p r <d f>-.-2-4 q-. |
    <b d>8-.-1-2 r c16-3\( d e c |
    a16\< b c-1 cis d e f\! d-3 |
    c!16\> b a_2 g\) <e' g>8-.\p q-. |\break
    
    <c e>8-. r <f a>-.-\rfinger"3"-5_\crescendo q-. |
    <b, d>8-.-1-2 r^\mf a'16->-4\( g f e |
    cis16-2 d-\rfinger"3" e f a,-1 c!-\rfinger"3" b d |
    c8\) r
  }
  e16\mp-2\<( fis g-.) g-.-3\! |
  a16-4\>( g fis e\!) d-.-3\< d-.-2 d-.-1 d-.-2\! |\break
  
  e16-4\>( d c b\!) e'->-4_\crescendo\( d c b |
  gis16-2 a-\rfinger"3" b c e,-1 fis-3 g! a |
  g16\> fis e d-.\) <b' d>8-.-3-5\p q-. |
  <g b>8-.-1-3\p r <a c>-.-3-5 q-. |
  <fis a>8-.-2-4 r g16-3_\crescendo-\shape #'( ((0 . 0) (1 . 2) (0 . 2) (2 . 2)) ((0 . 3) (1 . 2) (0 . 2) (-1 . -1)) )\( a b g-4 |\break
  
  dis16-2 e g e-4 d! b-1 c-4 a-2 |
  g8-.\) r g16-1\p\( a-\rfinger"2" b-\rfinger"3" c-\rfinger"4" |
  d8-.\) r b16-1\<\( c d e\! |
  f!8-.\) r d16-1\<\( e f g\! |
  a8-.\)\>_\pocorit aes-.\( g-. fis-. |
  f!8--\)\! r <e g>-.\p^\atempo q-. |\break
  
  <c e>8-. r <d f>-. q-. |
  <b d>8-. r c16-\rfinger"3"\( d e c |
  a16\< b c cis d e f d\! |
  \stemDown c!16\> b a g-.\!\) \stemNeutral <e' g>8-.\p q-. |
  <c e>8-. r <f a>-._\crescendo q-. |\break\pageBreak
  
  <b, d>8-.-\rfinger"1"-\rfinger"2" r a'16->\mf-\rfinger"4"\( g f e |
  cis16\mf d e f a,\> c! b\! d |
  c8-.\) r^\markup { \bold "M.T."} r4 |
  e16-3^\p( dis f e-.) r4 |
  e16( dis f e-.) <e c'>8-.-2-5\mp q-. |\break
  
  <c a'-4>8-. r <d b'>-.-2-5 q-. |
  <b gis'-4>8-. r a'16-5\mp( e-3 c a-.) |
  c16-3_\crescendo( bes-.) bes-.-3 bes-.-2 d-3 cis-. cis-.-3 cis-.-2 |
  e16-3( d-.) f-3( e-.) g-3( f-.) f-3( e-.) |
  e16-3\f( dis-.) c'4-5-\shape #'((0 . 0) (1 . 2) (0 . 3) (2 . 4))\( d,8-2 |\break
  
  e8-.\)_\markup {\italic "sempre forte"} r b'16-5\( gis-4 e-2 d! |
  c16-2 e-3 a-5 gis a e-3 c a |
  gis16-2 b-1 e-2 gis-4 b gis-4 e-2 d |
  c16-2 e-3 a-5 gis a e-3 c a |
  e8-.-2\) r <c' e>-.\mp q-. |\break
  
  <a c>8-. r <b d-5>-. q-. |
  <gis b>8-.-2-3 r r4 |
  e16-3-\tweak X-offset #-1 ^\p( dis f e-.) r4 |
  e''16-3\mp( dis f e d!-1 cis-2 e-3 d-.) |
  d16-3_\crescendo( c!-.) c-3( b-.) b-3( a-.) a-3( g-.) |\break
  
  g16-3( f-.) f-3( e-.) e-3( d-.) d-3( c-.) |
  bes16-2(\> f'-5 d-4 bes-2\! a8-.\p)( gis-.-2) |
  a8 r gis16-2-\tweak X-offset #-2 ^\p\( d'-4 b!-3 gis-2 |
  a8-.-1\) r gis16\( d' b gis |
  a8-.\) r gis16_\crescendo-\shape #'((0 . 0) (1 . 2) (0 . 2) (2 . 2))\( d' b gis |\break\pageBreak
  
  a16-1 e'-4 c-2 a b-2 f'-5 d-3 b-1\) |
  r4\fermata <e g>8-.\p^\markup {\bold "P.T."} q-. |
  <c e>8-. r <d f>-. q-. |
  <b d>8-. r c16\( d e c |
  a\< b c cis d e\! f\> d |\break
  
  c!16 b a g\!\) <e' g>8-. q-. |
  <c e>8-. r <f a>-._\crescendo q-. |
  <b, d>8-. r a'16->-\rfinger"4"-\tweak X-offset #-4 ^\mf\( g f e |
  cis16 d e f a,\> c! b\! d |
  c8-.\) r b16-1-\tweak X-offset #-2 ^\p\( f'-4 d-2 b |\break
  
  a'16->-5 g f e d f-4 d-2 b |
  a'16 g f e d'->-5_\crescendo c b a-.\) |
  a16->-4( g f e-.) e->-4\( d c b |
  d8-3\)\> c-.\! b16\p-\rfinger"1"\( f'-\rfinger"4" d b |\break
  
  a'16-> g f e d f d b |
  a'16->-\rfinger"4" g f e d'->_\crescendo c b a-.\) |
  a16-\rfinger"4"( g f e-.) e->-\rfinger"4"( d c b-.) |
  \stemUp c16-2\f-\shape #'((0 . 0) (1 . 2) (0 . 2) (0 . 2))^\( e-4 g,-1 c-5 e,-2 g-3 c,-1 e-2 |\break
  
  <<
    { \stemUp g16^.-3\) c^.-1 e^.-1-3 g^.-3-5 g^.-2-4^( f^.) e^.-2-4 d^. }
    \new Voice { \stemDown s8 c16 e e d c b }
  >> |
  \stemNeutral c16-\rfinger"2"\( e-\rfinger"4" g,-\rfinger"1" c-\rfinger"5" e,-\rfinger"2" g-\rfinger"3" c,-\rfinger"1" e-\rfinger"2" |
  <<
    { \voiceOne g16\) c^. e^. g^. g^.^( f^.) e^. d^. }
    \new Voice { \voiceTwo s8 c16 e e d c b }
  >> |
  \oneVoice c8-.-\rfinger"1" <e g c>-.-\rfinger"1"-\rfinger"2"-\rfinger"5" <e, c'>-. q-. |
  q4-- r |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \set fingeringOrientations = #'(left)
  %\dynamicUp
  
  \repeat volta 2 {
    \partial 4 r4 |
    \once \set fingeringOrientations = #'(left)
    <a'-3 c-1>8-. q-. <f a>-.-5-3 r |
    <g b>8-.-3-1 q-. <e g>-.-5-3 r |
    f4._3\( d8 |
    g8-.\) r r4 |\break
    
    <a c>8-.-2-1 q-. <d, f>-.-5-4 r |
    <g b>8-.-2-1_\crescendo q-. <c, e>-.-5-4 r |
    <f a>4.-3-5\mf\(  <g-4 f'>8 |
    <c-2 e-1>8-.\) c,-.
  }
  \clef treble c'16-4\( g' e g |
  b,16-5 g' d g\) \clef bass fis, d' a d |\break
  
  g,16 d' b d b,_\crescendo g' d g |
  c,16 a' e a cis,-5 a' e a |
  d,8-. r r4 |
  \clef treble <e' g>8-._\rfinger"3"_\rfinger"1" q-. <c e>-._\rfinger"3"_\rfinger"5" r |
  <d fis>8-.-2-1 q-. <b d>-. r |\break
  
  \clef bass
  <<
    { \stemUp g4.-1\( fis8-2 |  
      \stemDown 
      g8-.\) g,-. r4
    } 
    \\
    { 
      \stemDown c4_5-\shape #'((0 . 0) (1 . -2) (0 . 2) (0 . 3))_\( d |
      \hideNotes g8-.\) s s4
    }
  >>
  
  <g b>8-.-2-1 g,-. r4 |
  q8-. g-. r4 |
  R2 |
  R2 |\break
  
  \stemNeutral <a' c>8-. q-. <f a>-. r |
  <g b>8-. q-. <e g>-. r |
  f4._\rfinger"3"\( d8 |
  g8-.\) r r4 |
  <a c>8-. q-. <d, f>-. r |\break\pageBreak
  
  <g b>8-._\rfinger"1"_\rfinger"2" q-. <c, e>-._\rfinger"3"_\rfinger"5" r |
  <f a>4._\rfinger"3"_\rfinger"5"\( <g f'>8_\rfinger"1"_\rfinger"4" |
  <c e>8-._\rfinger"1"_\rfinger"2"\) c,-. <c' e>-.-3-1\mp q-. |
  <a c>8-. r <b d>-.-2-1 q-. |
  <gis b>8-.-4-2 r r4 |\break
  
  e'16-2\p( dis f e-.) r4 |
  e16( dis f e-.) \clef treble <c e>4_3_5_\( |
  <d f>4 <e g>|
  <<
    { \stemDown f8_2[ cis_5 d e]\) }
    \new Voice { \stemUp a2-1 }
  >>
  \stemNeutral <f a>8 r q r |\break
  
  \clef bass e,16( e' gis,-3 e'b-2 e gis, e') |
  e,16 e' a,-3 e' c-2 e a, e' |
  e,16 e' gis, e' b e gis, e' |
  e,16 e' a, e' c e a, e' |
  e,8-. r r4 |\break
  
  e'16-2\p( dis f e-.) r4 |
  e16-\rfinger"2"( dis f e-.) <e, c'>8-.-4-1\mp q-. |
  <c a'>8-.-5-2 r <d b'>-.-4-1 q |
  <b gis'>8-._2_5 r <gis' b>4->_2_4_\( |
  <<
    { <a c!>8-\rfinger"3"-\rfinger"1"[ <b d>-4-2 <c-\rfinger"3"> cis_2]\) }
    \new Voice { s4 \stemUp e4-\rfinger"1" }
  >>|\break
  
  \clef treble 
  <<
    { \stemDown <d-4>8_\([ e f e] }
    \new Voice { \set fingeringOrientations = #'(left) \stemUp <a-1>2 }
  >> |
  \stemNeutral <d, f>4-4-2\) \clef bass 
  <<
    { \stemUp <c-1>8^.^( b!^.) }
    \new Voice { \set fingeringOrientations = #'(left) \stemDown <e,-5>4 }
  >> |
  \stemNeutral a16-4\pp( c e c e, b' d b) |
  a16-4 c e c e, b' d b |
  a16 c e c e,_\crescendo b' d b |\break\pageBreak
  
  \clef treble a16_\rfinger"4" c e c g! d' f d |
  r4\fermata r |
  \clef bass <a c>8-.\p q-. <f a>-. r |
  <g b>8-. q-. <e g>-. r |
  f4._\rfinger"3"\( d8 |\break
  
  g8-.\) r r4 |
  <a c>8-. q-. <d, f>-. r |
  <g b>8-._\crescendo q-. <c, e>-. r |
  <f a>4.\( <g f'>8 |
  <c e>8-.\) c,-. f16-4\pp\( b g b |\break
  
  e,16-5 c' g c\) f, b g b |
  e,16 c' g c f,-5_\crescendo d' b d |
  g,16-5 e' c e g, f'_\diminuendo d f |
  \clef treble c16-4 g' e g \clef bass f,\pp b g b |\break
  
  e,16 c' g c f, b g b |
  e,16 c' g c f,_\crescendo d' a d |
  g,16 e' c e g, f' d f |
  c16-3\f-\shape #'((0 . 0) (1 . 2) (0 . 2) (0 . 2))\( e-1 g,-4 c-1 e,-4 g-1 c,-4 e-2 |\break
  
  g8-.\) r g,-. r |
  c'16_2\( e g, c e,_\rfinger"4" g_\rfinger"1" c,_\rfinger"4" e_\rfinger"2" |
  g8-.\) r g, r |
  <c, c'>8-. <e e'>-. <g g'>-. <e e'>-. |
  <c c'>4-- r |\bar "|."
}

\paper{
  print-all-headers=##t
}
\markup { \vspace #0.5 }

\score {
  \header {
    title = "第三乐章"
    subtitle = ##f
    composer = "莫扎特 曲"
  }
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing.basic-distance = #13
  } <<
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

% README

% 低音谱第15~16小节，参见:
% http://lilypond.org/doc/v2.18/Documentation/notation/multiple-voices
% http://lilypond.1069038.n5.nabble.com/Polyphony-tp8474p8482.html

% 高音谱第69、71两节的写法略有不同
%   69节使用 \stemUp、\stemDown 和 \stemNeutral 来控制
%   71节使用系统担任的 \voiceOne \voiceTwo 和 \oneVoice 来控制
% 从效果来看，感觉没有区别。
% 关于 \voiceOne  命令，参考： http://lilypond.org/doc/v2.18/Documentation/notation/multiple-voices
