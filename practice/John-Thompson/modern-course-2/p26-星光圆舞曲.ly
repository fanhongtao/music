\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P26~28

songName = "星光圆舞曲"
\include "../../../lib/markups.ily"
\include "../../../lib/paper-footer.ily"
\include "../../../lib/repeat.ily"

\header {
  title = \songName
  composer = "布雷德纳"
}

keyTime = {
  \key g \major
  \time 3/8
  % \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Tempo di Valse" 8=132
  \override Hairpin.to-barline = ##f
  \set fingeringOrientations = #'(left)
  
  \repeatfine {
    \partial 4 g8-1\mf( a) |
    b4 b8-2 |
    c4 a8 |
    e'8-5 d4->~ |
    d4  b8-2 |
    d8 c4->~ |
    c4 a8 |\break
    
    c8-3 b4->~ |
    b8 g8-1([ a]) |
    b4 b8-2 |
    c4 a8 |
    e'8-5 d4->~ |
    d4 b8-2 |\break
    
    d8 c4->~ |
    c4 fis,8-2 |
    g4 r8 |
    r8 g8-1\f( a) |
    <g b>4-1-3 q8 |
    <a c>4-\rfinger"2"-\rfinger"4" <fis a>8-1-2 |\break
    
    <c' e>8-3-5 <b d>4->~ |
    q4 <g b>8-1-3 |
    <b d>8-3-5 <a c>4->~ |
    q4 <fis a>8-1-2 |
    <a c>8-\rfinger"2"-\rfinger"4" <g b>4^>~ |
    q8 g8([ a]) |
    <g b>4-1-3 q8 |\break
    
    <a c>4-2-4 <fis a>8-\rfinger"1"-\rfinger"2" |
    <c' e>8-3-5 <b d>4->~ |
    q4 <g b>8-\rfinger"1"-\rfinger"3" |
    <b d>8-3-5 <a c>4~ |
    q8 e8-1([ fis-2] |
    g4.)~ |
    g4 r8_\markup { \translate #'(-1 . -3) \fine } |\bar"||"\break
  } % end of repeatfine firstpart
  {
    <e' g>4.->-3-5~ |
    q8 <d fis>8-2-4[ <c e>] |
    q8-2-4 <b d>4->~ |
    q4 <g b>8-\rfinger"1"-\rfinger"3" |
    <b d>8-3-5 <a c>4->~ |
    q4 <fis a>8-1-2 |
    <a c>8-\rfinger"2"-\rfinger"4" <g b>4^>~ |
    q4-\rfinger"1"-\rfinger"3" q8 |\break
    
    <e' g>4.->-3-5~ |
    q8 <d fis>8-\rfinger"2"-\rfinger"4"[ <c e>] |
    q8-2-4 <b d>4->~ |
    q4 <g b>8-\rfinger"1"-\rfinger"3" |
    <b d>8 <a c>4->~ |
    q8 e([ fis] |
    g4.)~ |
    g8 \bar"||"\break
    
    g8-1\mf( a) |
    b16-3( g-1 fis-2 g-1 a b |
    c16-4 a-1 gis-2 a-1 b c) |
    e8-. d4->~ |
    d8 d,16-1([ g-2 b-4 d-5]) |\break
    
    d8-.-3 c4->~ |
    c8 d,16-1([ fis-2 a-3 c-5]) |
    c8-.-3 b4~ |
    b8 g8([ a]) |
    b16-3( g-1 fis-2 g-1 a b |
    c16-4 a-1 gis-2 a-1 b c) |\break
    
    e8-. d4->~ |
    d8 d,16-1([ g-2 b-4 d]) |
    d8-.-3 c4->~ |
    c8 cis,16-2([ d-1 b' a] |
    g4.)~ |
    g4 r8 |\bar "||"\break
    
    <e' g>4.->-\rfinger"3"-\rfinger"5"~ |
    q8 a16-4([ g fis e]) |
    <c e>8-2-4 <b d>4->~ |
    q8 d,16-1([ g-2 b-4 d]) |
    <b d>8-2-4 <a c>4->~ |
    q8 d,16-1([ fis-2 a-3 c]) |
    <a c>8-\rfinger"2"-\rfinger"4" <g b>4^>~ |
    q4 g8-1 |\break
    
    <e' g>4.->-3-5~ |
    q8 a16-4([ g fis e]) |
    <c e>8-2-4 <b d>4->~ |
    q8 d,16-1([ g-2 b-4 d]) |
    <b d>8-2-4 <a c>4->~ |
    q8 cis,16-2([ d-1 b' a]) |
    g4.~ |
    g8_\markup { \translate #'(-9 . -3) \dcalFine } \bar "||"
  }
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  %\dynamicUp
  \set Staff.pedalSustainStyle = #'bracket
  \set fingeringOrientations = #'(left)
  
  \repeatfine {
    \partial 4 r8 r |
    g'8_5 <b d>_1_3 q |
    d,8_5 <fis a c>_\rfinger"1"_\rfinger"2"_\rfinger"3" q |
    g8 <b d> q |
    g8 q q |
    d8 <fis a c> q |
    d8 q q |\break
    
    g8 <b d> q |
    g8 q q |
    g8 q q |
    d8 <fis a c> q |
    g8 <b d> q |
    g8 q q |\break
    
    d8 <fis a c> q |
    d8 q q |
    g8 <b d> q |
    g8 q q |
    g8 q q |
    d8 <fis a c> q |\break
    
    g8 <b d> q |
    g8 q q |
    d8 <fis a c> q |
    d8 q q |
    g8 <b d> q |
    g8 q q |
    g8 q q |\break
    
    d8 <fis a c> q |
    g8 <b d> q |
    g8 q q |
    d8 <fis a c> q |
    d8 q q |
    g8 <b d> q |
    g4 r8 |
  } % end of repeatfine firstpart
  {
    c,8\sustainOn^\f^\> <e g c>_\rfinger"1"_\rfinger"3"_\rfinger"5" q\! |
    c8\sustainOff q q |
    g'8 <b d> q |
    g8 q q |
    d8 <fis a c> q |
    d8 q q |
    g8 <b d> q |
    g8 q q |\break
    
    c,8\sustainOn^\> <e g c> q\! |
    c8\sustainOff q q |
    g'8 <b d> q |
    g8 q q |
    d8 <fis a c> q |
    d8 q q |
    g8 <b d> q |
    g8 \bar"||"\break
    
    r8 r |
    g8 <b d> q |
    d,8 <fis a c> q |
    g8 <b d> q |
    g8 b_\rfinger"3" <b d> |\break
    
    d,8 <fis a c> q |
    d8 q q |
    g8 <b d> q |
    g8 q q |
    g8 q q |
    d8 <fis a c> q |\break
    
    g8 <b d> q |
    g8 b <b d> |
    d,8 <fis a c> q |
    d8 <fis a c?> q |
    g8 <b d> q |
    g4 r8 |\bar"||"\break
    
    c,8\sustainOn^\f^\> <e g c> q\! |
    c8\sustainOff q q |
    g'8 <b d> q |
    g8 b_\rfinger"3" <b d> |
    d,8 <fis a c> q |
    d8 q q |
    g8 <b d> q |
    g8 q q |\break
    
    c,8\sustainOn^\> <e g c> q\! |
    c8\sustainOff q q |
    g'8 <b d> q |
    g8 b <b d> |
    d,8 <fis a c> q |
    d8 <fis a c?> q |
    g8 <b d> q |
    g8
  }
}


music = 
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

\score {
  \music
  \layout {
    indent = 0\cm
  }
}

\score {
  \unfoldRepeats
  \music
  \midi { }
}
