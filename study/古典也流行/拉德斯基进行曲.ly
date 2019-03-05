\version "2.18.2"

songName = "拉德斯基进行曲"
\include "../../lib/paper-footer.ily"
\include "../../lib/repeat.ily"

\header {
  title = \songName
  arranger = "据 施特劳斯 原曲改编"
}

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Animato" 4=160
  \override Hairpin.to-barline = ##f
  
  \repeatfine {
    \partial 4 e8-3( dis-2 |
    e4-.) e8( dis e4-.) e8( dis |
    e4-.) d!-. c-. e8( dis |
    e4-.) e8( dis e4-.) e8-3( dis-2 |
    e4-.-1) a-.-5 g-. g8-4( e-2 |\break
    
    f4-.-3) a-. g-. g8( d-1 |
    e4-.-2) a-. g-. g8( e |
    d4-.) b'-.-5 d,-. a'-.-4 |
    g-.-3 g8-4( fis g a g f! |\break
    
    e4-.) e8-3( dis e4-.) e8( dis |
    e4-.) d!-. c-. e8( dis |
    e4-.) e8( dis e4-.) e8-3( dis-2 |
    e4-.-1) a-.-5 g-. g8-4( e-2 |\break
    
    f4-.-1) e'-. d2 |
    e,4-. d'-. c2 |
    b4.-3 a8( g-1[ f-4] e[ d] |
    c4-.) c-. c-. \break\pageBreak
  }  % end of repeatfine firstpart
  {
    \partial 4 c8-2( b |
    c4-.-2) c8( b c4-.) c8( b |
    c4-.) f-.-5 c-. c8( b |
    c4-.) c8( b c4-.) c8( b |
    c4-.) e-. c-. \change Staff="lower" g,8( \change Staff="upper" <e'' g>-3-5 |\break
    
    q2-3-5 <d f>4-.-2-4) \change Staff="lower" g,,8( \change Staff="upper" <f'' a>-3-5 |
    q2 < e g>4-.-2-4) \change Staff="lower" g,,8( \change Staff="upper" c''-5 |
    <g b>4-.-2-4) <f a>-.-1-3 <d f>-.-1-2 d-.-1 |
    <f a>4-.-3-5 a8( g f4-.) \change Staff="lower" g,,8( \change Staff="upper" <e'' g>-3-5 |\break
    
    q2 <d f>4-.) \change Staff="lower" g,,8( \change Staff="upper" <f'' a> |
    q2 <e g>4-.-2-4) \change Staff="lower" g,,8( \change Staff="upper" c''-5 |
    b4-.-4) b8-4( gis-2 a4-.-3) a8-3( c-5 |
    b4-.-4) b8( gis a4-.) a8( c |\break
    
    b4-.-4)\< c-. b-. c-. |
    b4-. c-. b-. c-.\! |
    b4-.->\f e,8-1(\> dis-2 e4-.-3) e8-3( dis |
    e4-.) e8( dis e4-.)\!
  }\bar "||"
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \override Score.RehearsalMark.direction = #DOWN
  % \dynamicUp
  
  \repeatfine {
    \partial 4 r |
    c4_._5 <e g>-._1_3 q-. r |
    c4_. q-. q-. r |
    c4_. q-. q-. r |
    c4_. q-. q-. r |\break
    
    d4-. <f g>-. q-. r |
    c4_. <e g>-. q-. r |
    d4-._5 <g b>-._1_2 d-. <f! c'>-. |
    <g b>4-. r r2 |\break
    
    c,4_._5 <e g>-._1_3 q-. r |
    c_. q-. q-. r |
    c_. q-. q-. r |
    c_. q-. q-. r |\break
    
    d4-._5 <f a>-._1_3 q2-- |
    <e g>4-. q-. q2-- |
    f4-. f-. g-._1 g-. |
    c,4_._5 <e g>-. c_.\break\bar "|."\fine-mark
  } % end of repeatfine firstpart
  {
    \partial 4 r4 |
    <c f a>4-._1_2_5 r q-. r |
    q-. q-. q-. r |
    <c e g>4-._1_3_5 r q-. r |
    q4-. q-. q-. s |\break
    
    g4 g' g,_. s |
    g4 g' g,_. s |
    g4_. g'-. g,_. g'-. |
    c,4_. g'-. g,_. s |\break
    
    g4 g' g,_. s |
    g4 g' g,_. s |
    gis'4-._2 e_4( a-._1) e_4( |
    gis4-._2) e_4( a-.) e( |\break
    
    gis4-._2) a-. gis-. a-. |
    gis4-. a-. gis-. a-. |
    gis4-.-> r r2 |
    r2 r4
  }\bar "||"\dcalFine-mark
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
