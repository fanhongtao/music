\version "2.18.2"

songName = "梦中的婚礼"
\include "../../lib/paper-footer.ily"
\include "../../lib/repeat.ily"

\header {
  title = \songName
  composer = "【法】森纳维尔 图圣 曲"
}

keyTime = {
  \key bes \major
  \time 4/4
  \numericTimeSignature
}

upper_repeat = \relative c'' {
  g'16 a a bes bes a a g\< g-5 d-2 d-4 bes-2 bes\! g-1 g f'-5 |
  \time 3/4 f16\> ees ees d\! ees f ees8~ ees4) |\break
  
  \time 7/8 r16 ees-2\<([ ees f] f[ g g a] a\![ f f-4 c-1] c[ ees-4] |
  \time 6/8 ees16\> d d c-2 c ees\! <<
    { \once \stemDown d4.\fermata) }
    \new Voice { \stemUp a''8\rest \acciaccatura d, ees'4\fermata }
  >> |\bar"||" \once \override Score.RehearsalMark.extra-offset = #'( 1 . -9 ) \mark \markup { \box {A} }
  \time 12/8 d,,8-4\mp( g,16-1 bes-2 d-4 c-3 d8 g,16 bes d c d8 g,16 bes ees-5 d-4 ees8-5 g,16 bes ees d |\break
  
  \time 9/8 ees8 ees16-3 d-2 ees e f8 f16-4 g f g d4.-2) |
  \time 12/8 d'8( g,16 bes d c d8 g,16 bes d c d8 g,16 bes ees d ees8 g,16 bes ees d |\break
  
  \time 9/8 ees8 ees16 d ees e f8 f16 g f g d4.) |
  \time 12/8 bes8.-5\mf( d,16-1 d ees-3 ees8.) c16-1( c a' a8. c,16-1 c d-3 d8) bes16-1( bes g' f |\break
  
  \time 9/8 g8. bes,16-1 bes c-3 c8.) a16-1( d-4 c d4.) |
  \time 12/8 bes'8.-3\f( bes16 bes c-4 c8.-5 bes16 a g f8. f16-3 g f d4.-1)  |\break
  
  bes'8( bes16 bes bes c c8. bes16 a g f8. f16 g f g4.) |
  \ottava #1 <bes bes'>8\ff( q16 q q <c c'> q8. <bes bes'>16 <a a'> <g g'> <f f'>8. q16 <g g'> <f f'> <d d'>4.) |\bar"||"
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 8=144
  \override Hairpin.to-barline = ##f
  \override Score.RehearsalMark.font-size = #1
  
  r2 r4 r8. g'16-2\mp( |\bar"||"\mark \markup { \musicglyph #"scripts.segno" }
  \upper_repeat
  \toCoda-mark
  
  \time 9/8 <bes bes'>8( q16 q q <c c'> q8. <bes bes'>16 <a a'> <g g'> <f f'>8. q16 <g g'> <f f'> |
  \time 6/8 \once \stemUp <g g'>2.) \ottava #0 |\bar"||"\break
  
  \time 12/8 d8\mp(^\markup { \box {B} } g,16 bes d c d8 g,16 bes d c d8 g,16 bes ees d ees8 g,16 bes ees d |
  \time 9/8 ees8 ees16 d ees e f8 f16 g f g) d4. |\break
  
  \time 12/8 d'8( g,16 bes d c d8 g,16 bes d c d8 g,16 bes ees d ees8 g,16 bes ees d |
  \time 9/8 ees8 ees16 d ees e f8 f16 g f g d4.) |\break
  
  \time 12/8 bes8.( bes16 bes c c8. bes16 a g f8. f16 g f) d4. |
  bes'8( bes16 bes bes c c8. bes16 a g f8. f16 g f) g4. |\break\pageBreak
  
  \ottava #1 <bes bes'>8\ff( q16 q q <c c'> q8. <bes bes'>16 <a a'> <g g'> <f f'>8. q16 <g g'> <f f'>) <d d'>4. |
  \time 9/8 <bes' bes'>8( q16 q q <c c'> q8. <bes bes'>16 <a a'> <g g'> <f f'>8. q16 <g g'> <f f'> |\break
  
  \time 6/8 \stemUp <g g'>4.)^~ q4 \ottava #0 c16\rest g \stemNeutral |\bar "||" \once \override Score.RehearsalMark.direction = #DOWN \dsalCoda-mark 
  \tag #'midi {
    \time 4/4
    \upper_repeat
  }
  
  \time 12/8 \ottava #1 <bes bes'>8\coda( q16 q q <c c'> q8. <bes bes'>16 <a a'> <g g'> <f f'>8. q16 <g g'> <f f'>) <g g'>4.\ottava #0 |\break
  
  <bes, bes'>8\ff( q16 q q <c c'> q8. <bes bes'>16 <a a'> <g g'> <f f'>8. q16 <g g'> <f f'> <d d'>4.) |
  <bes' bes'>8( q16 q q <c c'> q8. <bes bes'>16 <a a'> <g g'> <f f'>8. q16 <g g'> <f f'> <g g'>4.) |\break
  
  \ottava #1 <bes' bes'>8( q16 q q <c c'> q8. <bes bes'>16 <a a'> <g g'> <f f'>8. q16 <g g'> <f f'> <d d'>4.) |
  \time 9/8 <bes' bes'>8( q16 q q <c c'> q8. <bes bes'>16 <a a'> <g g'> <f f'>8. q16\> <g g'> <f f'> |
  \stemUp <g g'>2.)\!^~ q4.\fermata
  
  |\bar "|."
}


% 原谱中的 sustain 只有开始符号，没有结束符号，
% 所以我定义一个 sustainMark ，而不是使用 \sustainOn 和 \sustainOff
sustainMark = \markup { \musicglyph #"pedal.Ped" }

lower_repeat = \relative c {
  g8_5_\sustainMark d'_2 bes'_1 d,_2 bes'_1 d,_2 bes'_1 d,_4 |
  \time 3/4 c8_5_\sustainMark g'_2 ees'_1 g,_2 ees'_1 g,_2 |\break
  
  \time 7/8 f,8_5_\sustainMark[ c'_3 a'_1 c,_3] a'_1[ c,_3 a'_1] |
  \time 6/8 bes,8_5_\sustainMark f'_3 d'_1 <<
    { d,4.\fermata }
    \new Voice { \stemUp g'8\rest fis4\fermata }
  >> |\bar "||"
  \time 12/8 g,,8_5_\sustainMark[ d'_2 bes'_1] d,_2[ bes'_1 d,_2] g,_5[ d'_2 bes'_1] c,_5_\sustainMark[ g'_2 ees'_1] |\break
  
  \time 9/8 g,8_2 ees'_1 g,_2 f,_5_\sustainMark c'_3 a'_1 bes,_4_\sustainMark bes'_1 <a, a'>_1_5 |
  \time 12/8 <g g'>8_\sustainMark d'_2 bes' d, bes' d, g, d' bes' c,_\sustainMark g' ees' |\break
  
  \time 9/8 g,8 ees' g, f,_\sustainMark c'_3 a' bes,_\sustainMark <bes bes'> <a a'> |
  \time 12/8 <g g'>8_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' bes,_4_\sustainMark f'_1 a,_4 |\break
  
  \time 9/8 g8_\sustainMark d' bes' a,_\sustainMark ees'_3 c' d,_4\sustainOn <e, e'!>_1_5\sustainOff <fis fis'>_1_4 |
  \time 12/8 <g g'>8_\sustainMark d'_3 bes' c,_\sustainMark g'_2 ees' f,,_\sustainMark c'_3 a' bes,_\sustainMark bes' <a, a'> |\break\pageBreak
  
  <g g'>8_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' g,_\sustainMark d' bes' |
  g,_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' bes,_\sustainMark bes' <a, a'> |\bar "||"\break
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  % \dynamicUp
  
  g8_5_\markup { \concat { \musicglyph #"pedal.Ped" \italic \bold {"  sempre legato"}} }  d'_2 bes'_1 d,_2 bes'_1 d,_2 bes'_1 d,_2 |\bar"||"
  \lower_repeat
  
  \time 9/8 <g, g'>8_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' |
  \time 6/8 g,_(_\markup { \lower #3 \sustainMark } d' bes' \change Staff="upper" \ottava #0 d8\< g bes\!) |\break
  
  \time 12/8 \change Staff="lower" g,,8_5_\sustainMark d'_2 bes'_1 d,_2 bes'_1 d,_2 g,_5 d'_2 bes'_1 c,_5_\sustainMark g'_2 ees'_1 |
  \time 9/8 g,8_2 ees'_1 g,_2  f,_5_\sustainMark c'_3 a'_1 bes,_4_\sustainMark bes'_1 <a, a'>_1_5 |\break
  
  \time 12/8 <g g'>8_\sustainMark d' bes' d, bes' d, g, d' bes' c,_\sustainMark g' ees' |
  \time 9/8 g,8 ees' g, f,_\sustainMark c' a' bes,_\sustainMark <bes bes'> <a a'> |\break
  
  \time 12/8 <g g'>8_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' bes,_\sustainMark bes' <a, a'> |
  g8_\sustainMark d' bes' c, g' ees' f,,_\sustainMark c' a' g,_\sustainMark d' bes' |\break
  
  g,8_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' bes,_\sustainMark bes' <a, a'> |
  \time 9/8 <g g'>8_\sustainMark d' bes' c,_\sustainMark g' ees' f,, c' a' |\break
  
  \time 6/8 g,8_(_\sustainMark d' bes' \clef treble d g bes) \clef bass |\bar"||"
  \tag #'midi {
    \time 4/4
    \lower_repeat
  }
  
  \time 12/8 \change Staff="lower" \stemNeutral <g,, g'>8_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' g,_\sustainMark d' bes' |\break
  
  g,8_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' bes,_\sustainMark bes' <a, a'> |
  <g g'>8_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' g,_\sustainMark d' bes' |\break
  
  g,8_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' bes,_\sustainMark bes' <a, a'> |
  \time 9/8 g8_\sustainMark d' bes' c,_\sustainMark g' ees' f,,_\sustainMark c' a' |
  g,8_\sustainMark d' bes' \clef treble d g d' g4.\fermata
  
  |\bar "|."
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

\markup { \override #'(font-name . "楷体") \column {
  \line { 第25小节 和 31小节 的写法与原谱不同。个人认为这样写更清楚一些。 }
} }
