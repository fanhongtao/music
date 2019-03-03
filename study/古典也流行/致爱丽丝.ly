\version "2.18.2"

songName = "致爱丽丝"
\include "../../lib/markups.ily"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "For Elise"
  composer = "贝多芬 曲"
}

keyTime = {
  \key c \major
  \time 3/8
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Poco moto" 4=60
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2
  {
    \partial 8 e16-5\pp dis |
    e16 dis e b d-4 c |
    a8-1 r16 c,-1 e a |
    b8-5 r16 e,-1 gis b |
    c8 r16 e,e'-5 dis |
    e16-5 dis e b d c |\break
    
    a8 r16 c, e a |
    b8 r16 e, c' b |
  }
  \alternative {
    {
      a4
    }
    {
      a8 r16 b-1\< c d\! |
    }
  }
  
  \repeat volta 2 {
    e8.\mf g,16[ f'-5 e] |
    d8. f,16[ e' d] |\break
    
    c8._\dimin e,16[ d' c] |
    b8\p r16 e,( e') r |
    r16 e( e') r_\dimin r dis,-2[ |
    e16] r r dis-3\pp e-5 dis-4 |
    e16 dis e b d c |
    a8 r16 c, e a |\break
    
    b8 r16 e, gis b |
    c8 r16 e, e' dis |
    e16 dis e b d c |
    a8 r16 c, e a |
    b8 r16 e, c' b |
  }
  \alternative {
    {
      a8 r16 b-1\< c d\! |\break
    }
    {
      a8 r16 <e c'-5> <f c'> <e g c> |
    }
  }
  \appoggiatura { f16-1 a } c4 \finger \markup \tied-lyric #"4~1" f16.-3 e32 |
  e8-3[( d)] bes'16.-4 a32 |
  a16-4( g f e d-2 c) |
  bes8-3[ a] \appoggiatura bes16 a32 g a bes |\break
  
  c4 \finger \markup \tied-lyric #"4~1" d16 dis |
  e8. e16[ f a,] |
  c4-2 d16. b32 |
  c32\p[ g' g, g'] a,[ g' b,-1 g'] c,-2[ g' d-3 g] |
  e32-1[ g c b] a[ g f e-3] d[ g f d] |\break
  
  c32[ g' g, g'] a,[ g' b, g'] c,[ g' d g] |
  e32-1[ g c b] a[ g f e-3] d[ g f d] |
  e32\p[ f e dis] e[ b e-4 dis] e[ b e dis] |
  e8. b16[ e dis] |\break
  
  e8. b16-1[( e-3)] r_\dimin |
  r16 dis-2( e) r r dis-3(\pp |
  e16) dis e b d c |
  a8 r16 c, e a |
  b8 r16 e, gis b |\break
  
  c8 r16 e, e' dis |
  e16 dis e b d c |
  a8 r16 c, e a |
  b8 r16 e, c' b |
  a8 r16 b\< c d\! |\break
  
  e8.\mf g,16[ f' e] |
  d8. f,16[ e' d] |
  c8._\dimin e,16[ d' c] |
  b8\p r16 e,( e') r |
  r16 e( e') r_\dimin r dis,-2[( |
  e16)] r r dis-3\pp e dis |\break\pageBreak
  
  e16 dis e b d c |
  a8 r16 c, e a |
  b8 r16 e, gis b |
  c8 r16 e, e' dis |
  e16 dis e b d c |\break
  
  a8 r16 c, e a |
  b8 r16 e, c' b |
  a8\p r r |
  <e g bes cis>4._\crescendo |
  <f a d>4 <cis' e>16-2-4 <d f> |\break
  
  <gis, d' f>4 q8 |
  <a c e>4. |
  <f d'>4-1-5_\dimin <e c'>16-2-5 <d b'>-1-5 |
  <c fis a>4 <c a'>8 |
  <c a'>8-1-4 <e c'>-2-5 <d b'>-1-5 |\break
  
  <c a'>4.-1-4\p |
  <e g bes cis>4._\crescendo |
  <f a d>4 <cis' e>16-2-4 <d f> |
  <d f>4-3-5 q8-2-4 |
  q4.-3-5 |\break
  
  <g, ees'>4-1-4 <f d'>16-1-5 <ees c'>-2-5 |
  <d f bes>4 <d f a>8 |
  <d f gis>4 q8 |
  <c e a>4\p r8 |
  <d e b'>8\pp r r |\break\pageBreak
  
  \tuplet 3/2 {a16-1\pp[ c e]} \tuplet 3/2 {a-1[ c-3 e]} \tuplet 3/2 {d[ c b]} |
  \tuplet 3/2 {a16[ c e]} \tuplet 3/2 {a-1[ c e]} \tuplet 3/2 {d[ c b]} |
  \ottava #1 \tuplet 3/2 {a16[ c e]} \tuplet 3/2 {a-1[ c e]} \tuplet 3/2 {d[ c b-1]} |
  \tuplet 3/2 {bes16-4[ a gis]} \tuplet 3/2 {g[ fis-3 f]} \tuplet 3/2 {e dis-3 d-1]} \ottava #0 |\break
  
  \tuplet 3/2 {cis16-3[ c b]} \tuplet 3/2 {bes-4[ a gis]} \tuplet 3/2 {g[ fis-3 f]} |
  e16\pp dis-3 e b d c |
  a8 r16 c, e a |
  b8 r16 e, gis b |
  c8 r16 e, e' dis |\break
  
  e16 dis e b d c |
  a8 r16 c, e a |
  b8 r16 e, c' b |
  a8 r16 b-1\< c d\! |
  e8.\mf g,16[ f' e] |
  d8. f,16[ e' d] |\break
  
  c8._\dimin e,16[ d' c] |
  b8\p r16 e,( e') r |
  r16 e( e') r_\dimin r dis,[( |
  e16)] r r dis\pp e dis |
  e16 dis e b d c |
  a8 r16 c, e a |\break
  
  b8 r16 e, gis b |
  c8 r16 e, e' dis |
  e16 dis e b d c |
  a8 r16 c, e a |
  b8 r16 d, c' b |
  <c, a'>8 r \bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \repeat volta 2 {
    \partial 8 r8 |
    R4. |
    a16\sustainOn e' a r r8\sustainOff |
    e,16\sustainOn e' gis_2 r r8 \sustainOff |
    a,16\sustainOn e' a r r8 \sustainOff |
    R4. |\break
    
    a,16\sustainOn e' a r r8\sustainOff |
    e,16\sustainOn e' gis r r8\sustainOff |
  }
  \alternative {
    {
      a,16\sustainOn e' a r\sustainOff
    }
    {
      a,16\sustainOn e' a\sustainOff r r8 |
    }
  }
  
  \repeat volta 2 {
    c,16\sustainOn g' c r r8\sustainOff |
    g,16\sustainOn g' b r r8\sustainOff |\break
    
    a,16\sustainOn e' a r r8\sustainOff |
    e,16_5\sustainOn e'_5( e') r r \clef treble e_5([ |
    e'16]) r r dis_3 e_1 r |
    r16 dis e\sustainOff r r8 |
    R4. |
    \clef bass a,,,16\sustainOn e' a r r8\sustainOff |\break
    
    e,16\sustainOn e' gis r r8\sustainOff |
    a,16\sustainOn e' a r r8\sustainOn |
    R4. |
    a,16\sustainOn e' a r r8\sustainOn |
    e,16\sustainOn e' gis r r8\sustainOff |
  }
  \alternative {
    {
      a,16\sustainOn e' a r r8\sustainOn |
    }
    {
      a,16\sustainOn[ e' a\sustainOff] <bes c>_1_2 <a c> <g bes c> |
    }
  }
  f16 a c a c a |
  f16 bes d bes d bes |
  f16 e' <f, g bes> e' q e |
  f,16 a c a c a |\break
  
  f16 a c a c a |
  e16 a c a <d, d'> f |
  g16_5 e' g, e' g, f' |
  <c e>8 r16 \clef treble <f g>16 <e g> <d f g> |
  <c e g>8 \clef bass <f, a>[ <g b>] |\break
  
  c8 r16 \clef treble <f g>16 <e g> <d f g> |
  <c e g>8 \clef bass <f, a>[ <g b>] |
  <gis b>8 r r |
  R4. |\break
  
  r4 r16 \clef treble dis''_3[( |
  e16)] r r dis( e) r |
  R4. |
  \clef bass a,,,16\sustainOn e' a r r8\sustainOff |
  e,16\sustainOn e' gis r r8\sustainOff |\break
  
  a,16\sustainOn e' a r r8\sustainOff |
  R4. |
  a,16\sustainOn e' a r r8\sustainOff |
  e,16\sustainOn e' gis r r8\sustainOff |
  a,16\sustainOn e' a r r8\sustainOff |\break
  
  c,16\sustainOn g' c r r8\sustainOff |
  g,16\sustainOn g' b r r8\sustainOff |
  a,16\sustainOn e' a r r8\sustainOff |
  e,16_5\sustainOn e'_5 e' r r\clef treble e_5[( |
  e'16)] r r dis_3( e_1) r |
  r16 dis( e)\sustainOff r r8 |\break
  
  R4. |
  \clef bass a,,,16\sustainOn e' a r r8\sustainOff |
  e,16\sustainOn e' gis r r8\sustainOff |
  a,16\sustainOn e' a r r8\sustainOff |
  R4. |\break
  
  a,16\sustainOn e' a r r8\sustainOff |
  e,16\sustainOn e' gis r r8\sustainOff |
  a,16_3 a_2 a_1 a_3 a_2 a_1 |
  a16 a a a a a |
  a16 a a a a a |\break
  
  a16 a a a a a |
  a16 a a a a a |
  <d, a'>16 q q q q q |
  <dis a'>16 q q q q q |
  <e a>16[ q q q] <e gis> q |\break
  
  <a, a'>16 a' a a a a |
  a16 a a a a a |
  a16 a a a a a |
  a16 a a a a a |
  bes16 bes bes bes bes bes |\break
  
  bes16 bes bes bes bes bes |
  bes16 bes bes bes bes bes |
  b!16 b b b b b |
  c4 r8 |
  <e gis>8 r r |\break
  
  a,,8\sustainOn r <a'' c e> |
  q8 r q |
  q8 r q\sustainOff |
  q8 r r |\break
  
  R4. |
  R4. |
  a,16\sustainOn e' a r r8\sustainOff |
  e,16\sustainOn e' gis r r8\sustainOff |
  a,16\sustainOn e' a r r8\sustainOff |\break
  
  R4. |
  a,16\sustainOn e' a r r8\sustainOff |
  e,16\sustainOn e' gis r r8\sustainOff |
  a,16\sustainOn e' a\sustainOff r r8 |
  c,16\sustainOn g' c r r8\sustainOff |
  g,16\sustainOn g' b r r8\sustainOff |\break
  
  a,16\sustainOn e' a r r8\sustainOff |
  e,16\sustainOn e' e' r r \clef treble e[( |
  e'16)] r r dis( e) r |
  r16 dis( e)\sustainOff r r8 |
  R4. |
  \clef bass a,,,16\sustainOn e' a r r8\sustainOff |\break
  
  e,16\sustainOn e' gis r r8\sustainOff |
  a,16\sustainOn e' a r r8\sustainOff |
  R4. |
  a,16\sustainOn e' a r r8\sustainOff |
  e,16\sustainOn e' gis r r8\sustainOff |
  <a,, a'>8\sustainOn r\sustainOff \bar "|."
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
