\version "2.18.2"
% 《中国音乐学院 社会艺术水平考级全国通用教材 钢琴 （一级~六级） 第二套》 P163~167

songName = "圆舞曲"
\include "../../../lib/markups.ily"
\include "../../../lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "(Op.69    No.2)"
  composer = "肖邦 曲"
}

keyTime = {
  \key d \major
  \time 3/4
  \numericTimeSignature
}

dimin = \markup { \italic { "(dimin.)" } }
riten = \markup { \italic "riten." }
pococresc = \markup { \italic { "poco cresc." } }

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Moderato" 4=152
  \override Hairpin.to-barline = ##f
  
  \partial 4 fis4->-4~( |
  fis8\p g fis cis-2 d-3 b-1 |
  ais2-2) fis'4->-4~( |
  fis8 g fis cis e d |
  b2) fis'4->-2~( |
  fis8\< g eis fis b-4 d-5\!) |
  d4-5\f( eis,-1) d'->-5~( | \break
  
  d4 e,!) cis'->-4~( |
  cis8 b ais g fis-4 cis-2 |
  d8) g-5( fis-4 cis-2 d b |
  ais2) fis'4->-4~( |
  fis8 g fis cis e d |
  b2) fis'4->-1~( |
  fis8 fis'-5 cis-3 d-4 ais-2 b\finger \markup \tied-lyric #"1~5" |\break %TODO: 最后一个音的指法，1-5之间连线是在数字上方、向上的弧线
  
  a!8-4 g b, cis d^\riten e | %TODO: 修改连线的位置，将 riten 放置在线的下方
  g8-5_\dimin fis b, d-4 cis fis, |
  b8-2)\> eis,-1( fis ais b-1 cis\! |
  d8-1\p^\atempo)( g fis cis d b |
  ais2) fis'4->~( |
  fis8 g fis cis e d |\break
  
  b2) fis'4->~( |
  fis8\< g eis fis b d\!) |
  d4\f( eis,) d'->~( |
  d4 e,!) cis'->~( |
  cis8\> b ais g fis cis\! |
  d8) g( fis cis d b |
  ais2) fis'4->~( |\break
  
  fis8 g fis cis e d |
  b2) fis'4->( |
  fis'8-5 cis-3 d-4 ais-2 b-5 fis-2 |
  a!8-4 g b,-1 cis e g-5^\riten |
  g8-4_\dimin fis b, d-4 cis fis, |
  b4.)  fis8-1^\atempo( b-4 bes-3 |\bar ".|:-||" \break\pageBreak
  
  \repeat volta 2 {
    bes4.-^_2 a8\< cis e\! |
    g4.-5\> fis8-4 cis-2 d-1\! |
    fis4.-4 e8 b-1 cis-2 |
    e4.-4 d8 cis b-1) |
    b4.-2( a8\< cis e\! |
    g4.-5\> fis8-4 cis-2 d-1\! |
    fis4.-4 e8-3 b-1 cis-4 |\break
    
    ais4.-2^\riten cis8-4 g-1 cis-5 |
    fis,4.-2^\atempo)( ais8-1\< cis e\! |
    g4.\> fis8 cis d\! |
    fis4.\> e8 b cis\! |
    e4.\> d8 cis b\!) |
    b4.( a8\< cis e\! |
    g4.\> fis8 cis d\! |\break
    
    fis4.-^ e8-1 fis'-5\f e |
    d8-3 cis c-1 b-3 ais a_\dimin |
    gis8-2 g fis-4 cis-2 d b |
    ais4) r a'!-5\sf( |
    gis8-4 g-5 fis-4 cis-2 e d |
    b4) r a'4-5\sf( |\break
    
    gis8\< g eis fis b d\!) |
    d4\f( eis,) d'->~( |
    d4 e,!) cis'->-4( |
    c8-5_\dimin b ais a gis g |
    fis8 f e d cis b |
    ais2) g'4->( |\break
    
    fis8 g fis cis e d |
    b2) fis'4->( |
    fis'8\f cis d ais b fis |
    a!8 g b, cis e g^\riten |
    g8_\dimin fis b, d cis fis, |
  }
  \alternative {
    {
      b4.^\atempo) fis8( b bes | \break\pageBreak
    }
    {
      b4) r fis4^\atempo( |\bar "||" 
    }
  }
  
  \key b \major
  dis'8-3\mf e_\dolce dis cis dis e-1 |
  gis2-4\> fis4\!) |
  dis8-2( e dis cis dis e-1 |
  gis2\> fis4\!) |\break
  
  fis4-1( dis'8.-4) dis16-3 dis4->-4 |
  cis4-3( e,8.-1) e16-2 e4->-1 |
  dis4-2( b'8.-5) b16-4 b4->-5 |
  ais4-4( cis,8.-1) cis16-2 e4->-4 |
  dis8( e dis cis dis e |
  gis2\> fis4\!) |\break
  
  dis8( e dis cis dis e |
  gis2\> fis4\!) |
  dis4-2_\pococresc( b'8.-5) b16-4 b4->-5 |
  ais4-4( cis,8.-1) cis16-3 cis4->-2 |
  b4-1( gis'8.-4) gis16-3 gis4->-4 |
  fis4-3( ais,8.-1) ais16-2 e'4->-5 |\break
  
  <b dis>8-2-4( <cis e> <b dis> <fis cis'> <b dis> <cis e> |
  <ais gis'>2-1-4\> <ais fis'>4-1-3\!) |
  <b dis>8-2-4( <cis e> <b dis> <fis cis'> <b dis> <cis e> |
  <ais gis'>2\> <ais fis'>4\!) |
  <dis fis>4-1-2( <fis dis'>8.-2-5) q16-1-5 q4->-1-5 |
  <e cis'>4-2-5( <cis e>8.-1-2) q16 q4->-2-4 |\break
  
  <b dis>4-1-2( <dis b'>8.-2-5) q16-1-5 q4->-1-5 |
  <cis ais'>4-2-5( <ais cis>8.-1-2) q16-1-3 <cis e>4->-2-5 |
  <b d!>8-2-4_\crescendo( <cis e> <b d> <fis cis'> <b d> <cis e> |
  <ais g'>2\> <ais fis'>4\!) |
  <b d!>8-2-4( <cis e> <b d> <fis cis'> <b d> <cis e> |
  <ais g'>2\> <ais fis'>4\!) |\break\pageBreak
  
  <d fis>4-2-5_\diminuendo( <fis, e'>8-1-4)[ r16 q16-1-5]( <b d>4-2-4) |
  <b d>4-2-5( <eis, cis'>8-1-4)[ r16 q16-1-5~] q4 |
  <<
    {
      \once \override ParenthesesItem.font-size = #0
      \stemUp ais4-3-\parenthesize \p cis2^\sf^~^( |
      cis4 fis,-1) \stemNeutral fis'->~( |
    }
    \new Voice {
      \stemDown fis,2._2_~ |
      fis4 s2 |
    }
  >> \bar "||"
  \key d \major
  fis'8\f g fis cis d b |\break
  
  ais2) fis'4->~( |
  fis8 g fis cis e d |
  b2) fis'4->~( |
  fis8\< g eis fis b d\!) |
  d4\f( eis,) d'->~( |
  d4 e,!) cis'->~( |\break
  
  cis8\> b ais g fis cis\! |
  d8)( g fis cis d b |
  ais2) fis'4->~( |
  fis8 g fis cis e d |
  b2) fis'4->~( |
  fis8 fis' cis d ais b |\break
  
  a!8 g b, cis d^\riten e |
  g_\dimin fis b, d cis fis, |
  b4.^\atempo) fis8( b bes |
  bes4.^^^\markup \italic { "con anima" } a8\< cis e\! |
  g4.\> fis8 cis d\! |\break
  
  fis4. e8 b cis |
  e4. d8 cis b) |
  b4.( a8\< cis e\! |
  g4.\> fis8 cis d\! |
  fis4. e8 b cis |\break\pageBreak
  
  ais4. cis8^\rit g cis |
  fis,4.^\atempo)( ais8\< cis e\! |
  g4.\> fis8 cis d\! |
  fis4.\> e8 b cis\! |
  e4.\> d8 cis b\!) \break
  
  b4.( a8\< cis e\! |
  g4.\> fis8 cis d\! |
  fis4.-^ e8 fis'\f e |
  d8 cis! c b ais a_\dimin |
  gis g fis cis d b |\break
  
  ais4) r a'!\sf( |
  gis8 g fis cis e d |
  b4) r a'\sf( |
  gis8\< g eis fis b d\!) |
  d4\f( eis,) d'->~( |\break
  
  d4 e,!) cis'->( |
  c!8_\markup \italic "(dim. e rit.)" b ais a gis g |
  fis f e d cis b |
  ais2) g'4->( |
  fis8 g fis cis e d |\break
  
  b2) fis'4->( |
  fis'8\f cis d ais b fis |
  a!8_\markup \italic "catando" g b, cis e g |
  g8 fis b, d cis fis, |
  b4) r r |\bar "|."
}

% 因为本首曲子大量使用踏板，为了减少代码量，定义缩写
On=\sustainOn
Off=\sustainOff

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \partial 4 r4 |
  b4\sustainOn <fis' b d> q\sustainOff |
  cis4\On <fis cis' e> q\Off |
  ais,4\On q q\Off |
  b4\On <fis' b d> q\Off |
  b,4\On q q\Off |
  b4\On <gis'b d> q\Off |\break
  
  b,4\On <g'! b e> q\Off |
  b,4\On <fis' cis'e> <fis ais e'>\Off |
  b,4\On <fis' b d> q\Off |
  b,4\On <fis' cis' e> q\Off |
  fis,4\On <fis' ais e'> <fis cis' e>\Off |
  b,4\On <fis' b d> q\Off |
  d4\On q q\Off |\break
  
  e4\On <b' cis g'> r\Off |
  <<
    fis2.
    \new Voice { \stemUp c'4\rest <b d> <ais e'> }
  >> |
  <b d>4\On b, r\Off |
  b4\On <fis' b d> q\Off |
  cis4\On <fis cis' e> q\Off |
  ais,4\On q q\Off |\break
  
  b4\On <fis' b d> q\Off |
  b,4\On q q\Off |
  b4\On <gis' b d> q\Off |
  b,4\On <g'! b e> q\Off |
  b,4\On <fis' cis' e> <fis ais e'>\Off |
  b,4\On <fis' b d> q\Off |
  cis4\On <fis cis' e> q\Off |\break
  
  fis,4\On <fis' ais e'> <fis cis' e>\Off |
  b,4\On <fis' b d> q\Off |
  d4\On q q\Off |
  e4\On <g cis> r\Off |
  <<
    fis2.
    \new Voice { \stemUp c'4\rest <b d> <ais e'> }
  >>
  b,4 <fis' d'> d |\break\pageBreak
  
  \repeat volta 2 {
    cis4\On <g' a e'> q\Off |
    d4\On <fis a d> q\Off |
    a,4\On <a' cis g'> <a e' g>\Off |
    d,4\On <a' d fis> q\Off |
    cis,4\On <a' e' g> q\Off |
    d,4\On <a' d fis> q\Off |
    g,4\On <g' b e> q\Off |\break
    
    <fis, fis'>4 <fis' cis' e> <fis b e> |
    <fis, fis'>4\On <fis' cis' e> <fis ais e'>\Off |
    b,4\On <fis' b d> q\Off |
    a,4\On <a' cis g'> <a e' g>\Off |
    d,4\On <a' d fis> q\Off |
    cis,4\On <a' e' g> q\Off |
    d,4\On <a' d fis> q\Off |\break
    
    g,4\On <g' e'> r\Off |
    fis,4\On <fis' e'> ais,\Off |
    b4\On <fis' d'> q\Off |
    cis4\On <fis cis'e> q\Off |
    ais,4\On <fis' cis' e> q\Off |
    b,4\On <fis' b d> q\Off |\break
    
    b,4\On q q\Off |
    b4\On <gis' b d> q\Off |
    b,4\On <g'! b e> q\Off |
    b,4\On <fis' ais e'> q\Off |
    b,4\On <fis' b d> q\Off |
    cis4\On <fis cis' e> q\Off |\break
    
    ais,4\On <fis' cis' e> q\Off |
    b,4\On <fis' b d> q\Off |
    d4\On q q\Off |
    e4\On <g cis> r\Off |
    <<
      fis2.
      \new Voice { \stemUp c'4\rest <b d> <ais e'> }
    >> |
  }
  \alternative {
    {
      b,4 <fis' d'> d-4 |\break\pageBreak
    }
    {
      <b' d>4 b, r |\bar"||"
    }
  }
  
  \key b \major
  b4\On <fis' b dis> q\Off |
  ais,4\On <fis' cis' e> q\Off |
  b,4\On <fis' b dis> q\Off |
  ais,4\On <fis' cis' e> q\Off |\break
  
  b,4\On <fis' b dis> q\Off |
  fis,4\On <fis' ais e'> q\Off |
  b,4\On <fis' b dis> q\Off |
  fis,4\On <fis' ais e'> q\Off |
  b,4\On <fis' b dis> q\Off |
  ais,4\On <fis' cis' e> q\Off |\break
  
  b,4\On <fis' b dis> q\Off |
  ais,4\On <fis' cis' e> q\Off |
  b,4\On <fis' b dis> q\Off |
  cis4\On <ais' cis fis> q\Off |
  cis,4\On <gis' cis eis> q\Off |
  fis,4\On <fis' cis' e!> q\Off |\break
  
  b,4\On <fis' b dis> q\Off |
  fis,4\On <fis' cis' e> q\Off |
  b,4\On <fis' b dis> q\Off |
  fis,4\On <fis' cis' e> q\Off |
  b,4\On <fis' b dis> q\Off |
  fis,4\On <fis' ais e'> q\Off |\break
  
  b,4\On <fis' b dis> q\Off |
  fis,4\On <fis' cis' e> q\Off |
  b,4\On <fis' b d> q\Off |
  fis,4\On <fis' cis' e> q\Off |
  b,4\On <fis' b d> q\Off |
  fis,4\On <fis' e'> q\Off |\break
  
  b,4\On <fis' d'> b,\Off |
  g4\On <cis b'> g\Off |
  fis4\On <cis' ais'> q\Off |
  fis,4\On <fis' ais e'!> q\Off |
  \key d \major
  b,,4\On <fis'' b d> q\Off |\break
  
  cis4\On <fis cis' e> q\Off |
  ais,4\On q q\Off |
  b4\On <fis' b d> q\Off |
  b,4\On q q\Off |
  b4\On <gis' b d> q\Off |
  b,4\On <g'! b e> q\Off |\break
  
  b,4\On <fis' cis' e> <fis ais e'>\Off |
  b,4\On <fis' b d> q\Off |
  cis4\On <fis cis' e> q\Off |
  fis,4\On <fis' ais e'> <fis cis' e>\Off |
  b,4\On <fis' b d> q\Off |
  d4\On q q\Off |\break
  
  e4\On <b' cis e> r\Off |
  <<
    fis2.
    \new Voice { \stemUp c'4\rest <b d> <ais e'> }
  >> |
  b,4\On <fis' d'> d\Off |
  cis4\On <g' a e'> q\Off |
  d4\On <fis a d> q\Off |\break
  
  a,4\On <a' cis g'> <a e' g>\Off |
  d,4\On <a' d fis> q\Off |
  cis,4\On <a' e' g> q\Off |
  d,4\On <a' d fis> q\Off |
  g,4\On <g' b e> q\Off |\break\pageBreak
  
  <fis, fis'>4 <fis' cis' e> <fis b e> |
  <fis, fis'>4\On <fis' cis' e> <fis ais e'>\Off |
  b,4\On <fis' b d> q\Off |
  a,4\On <a' cis g'> <a e' g>\Off |
  d,4\On <a' d fis> q\Off |\break
  
  cis,4\On <a' e' g> q\Off |
  d,4\On <a' d fis> q\Off |
  g,4\On <g' e'> r\Off |
  fis,4\On <fis' e'> ais,\Off |
  b4\On <fis' d'> q\Off |\break
  
  cis4\On <fis cis' e> q\Off |
  ais,4\On q q\Off |
  b4\On <fis' b d> q\Off |
  b,4\On q q\Off |
  b4\On <gis' b d> q\Off |\break
  
  b,4\On <g'! b e> q\Off |
  b,4\On <fis' ais e'> q\Off |
  b,4\On <fis' b d> q\Off |
  cis4\On <fis cis' e> q\Off |
  ais,4\On q q\Off |\break
  
  b4\On <fis' b d> q\Off |
  d4\On q q\Off |
  e4\On <g cis> r\Off |
  <<
    fis2.
    \new Voice { \stemUp c'4\rest <b d> <ais e'> }
  >> |
  <b d>4  b, r|\bar "|."
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
