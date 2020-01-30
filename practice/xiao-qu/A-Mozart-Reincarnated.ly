\version "2.18.2"

songName = "A Mozart Reincarnated"
\include "../../lib/paper-footer.ily"
\include "../../lib/markups.ily"

\header {
  title = \songName
  subtitle = "[The Legend Of 1900]"
}

keyTime = {
  \key bes \major
  \time 3/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andante" 4=72
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2{
    <bes d>4.\p_\markup{\italic{Legato}}( <c ees>8 <d f>4) |
    <d f>4.( <c ees>8 <bes d>4) |
    <a c>4.( <bes d>8 <c ees>4) |
    <c ees>4.( <bes d>8 <a c>4) |\break
    
    bes8\([ bes' a g] fis g |
    f8[ ees d ees] bes c\) |
    <c ees>2( <bes d>4) |
    <bes d>4.( <a c>8 <g bes>4) |\break
    
    <g bes>2.^( |
    <f a>2.) |
  }
  r4\mp_\markup{\italic{poco animato}} <bes d>( <g bes> |
  <a c>2.) |\break
  
  r4 <c ees>( <a c> |
  <bes d>2.) |
  r4 <d f>( <bes d> |
  <c ees>2 <ees g>4) |\break
  
  <d bes'>4( <c a'> <bes g'> |
  <a f'>2._\pocorit) |
  r4\p_\atempo <bes d>( <g bes> |
  <g c>2.) |\break\pageBreak
  
  r4 <c ees>( <a c> |
  bes2) bes4 |
  <bes g'>4.\mp( <a f'>8 <g ees'>4) |
  <f d'>4.^( <ees c'>8 <d bes'>4) |\break
  
  <ees c'>2._\pocorit |\bar"||"
  <f d'>4.\p( <g ees'>8 <a f'>4) |
  <a f'>4.( <g ees'>8 <f d'>4) |
  <ees c'>4.( <f d'>8 <g ees'>4) |\break
  
  <c ees>4.( <bes d>8 <a c>4) |
  bes8_\markup{\italic{expr.}}\( c \tuplet 3/2 { bes a bes } \tuplet 3/2 { c d ees\) }  |
  \tuplet 3/2 { f_\crescendo\( g f } \tuplet 3/2 { e! f g } \tuplet 3/2 { a bes c } |
  <d, d'>2\) \tuplet 10/8 {d32\([ ees f g a b! c d ees f]} |\break
  
  g2\mp\) g,4 |
  <c, c'>2 \tuplet 10/8 {c32 d ees f g a bes c d ees} |
  f2_\markup {\translate #'(4 . -4) \dimin} \tuplet 5/4 { f,16( g f e! f)} |
  bes2\p( bes,4) |\break
  
  <g ees'>4.( <f d'>8 <ees c'>4) |
  <ees c'>4 <d bes'> <c a'> |
  <ees c'>2.\pp^( |
  <d bes'>2.\fermata) |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \repeat volta 2{
    <<
      { \stemUp
        f'4\rest f2 |
        f4\rest f2 |
        f4\rest f2 |
        f4\rest f2 |\break
        
        f4\rest d g |
        f4\rest bes, ees |
        f4\rest bes, f' |
        f4\rest c g' |\break
        
        f4\rest c ees^~ |
        ees4 d^\markup{\translate #'(-2 . 5) \italic{rit. ------}} c |
      }
      \new Voice { \stemDown
        bes2. |
        bes2. |
        f2. |
        f2. |\break
        
        g2. |
        ges2. |
        f2. |
        e!2. |\break
        
        f2._~ |
        f2. |
      }
    >>|
  }
  \stemNeutral f2.~ |
  f4 f f |\break
  
  f2.~ |
  f4 f f |
  f2.~ |
  f4 f f |\break
  
  f2.~ |
  f4 f f |
  f2 f,4 |
  ees4 c' g'^\crescendo |\break\pageBreak
  
  d,4 fis' a |
  g,4 d' bes' |
  ees,4 bes' ees |
  f,4 bes d |\break
  
  f,4 c' f |
  bes,,4 f' d' |
  bes,4 f' bes |
  f,4 a' c |\break
  
  fis,,4 a' ees' |
  g,,4 d'  bes' |
  a,4 f' c' |
  b,4 g' d' |\break
  
  ees,4 g c |
  a,4 f' c' |
  d,4 f bes |
  g4 bes d |\break
  
  c,4 g' c |
  f,8( g^\markup{\italic{rit. . . . . . . .}} a bes c f,) |
  bes2_\pocorit( f4 |
  bes,2.\fermata) |\bar "|."
}


\score {
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
    \context {
      \Lyrics
      \override LyricText.font-name = #"楷体"
    }
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
  \line { 来自 \with-url #"http://www.tan8.com/yuepu-16363.html" { http://www.tan8.com/yuepu-16363.html } }
} }
