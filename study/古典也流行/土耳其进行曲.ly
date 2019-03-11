\version "2.18.2"

songName = "土耳其进行曲"
\include "../../lib/markups.ily"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "贝多芬 曲"
}

keyTime = {
  \key c \major
  \time 2/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegro" 4=108
  \override Hairpin.to-barline = ##f
  
  g'8-2\p( e) e-. e-. |
  g8( e) e-. e'-.-5 |
  d16-4( c-3) b-.-2 a-.-1 g8-.-3 f-. |
  e8-. f-. g4-> |
  g8-2( e) e-. e-. |\break
  
  g8( e) e-. e'-. |
  d16( c) b-. a-. g8-.-2 gis-.-3 |
  a4->-4( a8) r |
  c8-3(_\markup { \italic \bold "poco cresc." } a) a-. a-. |
  d8-4( b) b-. b-. |
  d8-4( b) d( b) |\break
  
  e8-5( c) e( c) |
  g8-2\f( e) e-. e-. |
  g8( e) e-. e'-. |
  d16( c) b-. a-. g8-.-2 b-.-4 |
  c8-5 e,16-1\p[ e-2] e8-1 e-3 |
  dis8->-2 dis16( e fis8-.-4) b,-. |\break
  
  g'8->-5 g16-3( fis e4->) |
  dis8->-2 dis16( e fis8-.-4) b,-. |
  b'8-.-5\f fis-.-2 b-. fis-. |
  g8-.-3 e-.-1 b'-.-5 fis-.-2 |
  g8-. e-. g-. e-. |
  gis8->-2\p gis16( a b8-.-4) e,-. |\break
  
  c'8-> c16( b a4->) |
  gis8-> gis16( a b8-.) e,-. |
  e'8-.\f[ cis-. e-. cis-.] |
  e8-.[_\crescendo c!-. e-. c-.] |
  e8-.[ c-. e-. c-.] |
  g8\ff( e) e-. e-. |\break
  
  g8( e) e-. e'-. |
  d16( c) b-. a-. g8-. f-. |
  e8-. f-. g4-> |
  g8( e) e-. e-. |
  g8( e) e-. e'-. |
  d16( c) b a g8-. gis-. |\break
  
  a4->( a8) r |
  c8( a) a-. a-. |
  d8( b) b-. b-. |
  d8( b) d( b) |
  e8( c) e( c) |
  g8( e) e-. e-. |\break
  
  g8( e) e-. e'-. |
  d16 c b a g8-. b-. |
  c8->\p e,16 e e8 e |
  dis8-> dis16( e fis8-.) b, |
  g'8-> g16( fis e4->) |
  dis8-> dis16( e fis8-.) b,-. |\break
  
  a'8-.\f fis-. a-. fis-. |
  g8-. e-. b'-. fis-. |
  g8-. e-. g-. e-. |
  gis8->\p gis16( a b8-.) e,-. |
  c'8-> c16( b a4->) |
  gis8-> gis16( a b8-.) e,-. |\break
  
  e'8-. cis-. e-. cis-. |
  e8-._\crescendo c!-. e-. c-. |
  e8-. c-. e-. c-. |
  g8\ff( e) e-. e-. |
  g8( e) e-. e'-. |
  d16( c) b-. a-. g8-. f-. |\break
  
  e8-. f-. g4-> |
  g8(_\dimin e) e-. e-. |
  g8( e) e-. e'-. |
  d16( c) b-. a-. g8-. b-. |
  c8 cis-. d-. f-. |\break
  
  d8-. b-. c!-. e-. |
  c8-. cis-. d-. f-. |
  d8-. b-. c!-. e-. |
  g8\p( e) e-. e-. |
  g8( e) e-. e-. |\break
  
  g8(_\dimin e) g( e) |
  g8( e) g( e) |
  g8 r r4 |
  <e,, c'>8\pp r r4 |
  q8 r r4 |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  c8 <e g> q q |
  c8 q q q |
  c8 q q q |
  c8 q q q |
  c8 q q q |\break
  
  c8 q q q |
  c8 q e <b' d> |
  a8 <c e> q q |
  a8 q q q |
  g8 <d' f> q q |
  g,8 <d' f> g, q |\break
  
  c,8 <e g> c q |
  c8 q q q |
  c8 q q q |
  c8 q g <f' g> |
  <c e g>8 r e e |
  b8 <a' b> q q |\break
  
  e8 <g b> q q |
  b,8 <a' b> q q |
  dis,8 <a' b> dis, q |
  e8 <g b> dis <a' b> |
  e8 <g b> e q |
  e8 <d' e> q q |\break
  
  a8 <c e> q q |
  e,8 <d' e> q q |
  <a cis>8 r q r |
  <a c!>8 r q r |
  <c, g'>8 r q r |
  c8 <e g> q q |\break
  
  c8 q q q |
  c8 q q q |
  c8 q q q |
  c8 q q q |
  c8 q q q |
  c8 q e <b' d> |\break
  
  a8 <c e> q q |
  a8 q q q |
  g8 <d' f> q q |
  g,8 q g q |
  c,8 <e g> c q |
  c8 q q q |\break
  
  c8 q q q |
  c8 q g <f' g> |
  <c e g>8 r e e |
  b8 <a' b> q q |
  dis,8 <a' c> <g b> q |
  e8 <a b> q q |\break
  
  dis,8 <a' b> dis, q |
  e8 <g b> dis <a' b> |
  e8 <g b> e q |
  e8 <d'! e> q q |
  a8 <c e> q q |
  e,8 <d' e> q q |\break
  
  <a cis>8 r q r |
  <a c!>8 r q r |
  <c, g'>8 r q r |
  c8 <e g> q q |
  c8 q q q |
  c8 q q q |\break
  
  c8 q q q |
  c8 q q q |
  c8 q q q |
  c8 q g <f' g> |
  <c e>8-. a'-. f-. d-. |\break
  
  f8-. g-. e-. c-. |
  e8-. a-. f-. d-. |
  f8-. g-. e-. c-. |
  c8 <e g> q q |
  c8 q q q |\break
  
  c8 q c q |
  c8 q c q |
  c8 r r4 |
  <c g'>8 r r4 |
  q8 r r4 |\bar "|."
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
