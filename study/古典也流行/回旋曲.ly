\version "2.18.2"

songName = "回旋曲"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "【奥地利】 莫扎特 曲"
}

keyTime = {
  \key c \major
  \time 6/8
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup \lower #-3 \column { "Rondo" "Allegro" } 4=116
  \override Hairpin.to-barline = ##f
  
  g'4.-2\p g8-.-3\< g-.-2 g-.-1\! |
  c4-5(\> g8\! e) r r ||
  g4-3( e8 \acciaccatura d8-4 c8-3 b c |
  d4-4\> b8\! g) r r |
  g'4.-2 g8-.\< g-. g-.\! |\break
  
  c4-5(\> g8\! e) r r |
  g4-3( e8 \acciaccatura e8-4 d8-3 c d |
  c4) r8 r4 r8 |
  g'4.-2\mf g8-.-3\< g-.-2 g-.-1\! |
  c4-5( g8 e) r r |\break
  
  g4-3( e8 \acciaccatura d8-4 c8-3 b c |
  d4-4\> b8\! g) r r |
  \acciaccatura { g16-1 c-2 e-4 } g4.\mf( fis16-2 g-3 fis g fis g |
  c4-5 g8 e) r r |\break
  
  g4-3( e8\> \acciaccatura e8-4 d8-3 c d\! |
  c4) r8 r4 r8 |
  g8-1\p( f'!-5) f-.-4 g16-5(\< f e d\! c b-2 |
  c8-1 c'-5) c-.-4 c16-5( b a g f-1 e-2 |\break
  
  g8-4 f) f-. g16-5( f e d c-1 b-2 |
  c16-3\< g-1 c-2 e-4 g e\! d8-.-2)\> e-.-3 f-4\! |
  \acciaccatura { g,16-1 c-2 e-4 } g4.-5\f( fis16-2\< g-3 fis g fis g\! |
  c4-5\> g8 e\!) r r |\break
  
  g4-3( e8 \acciaccatura e8-4 d8-3 c d |
  c4) r8 r4 r8 |
  g8-1\p( f'!-5) f-.-4 g16-5(\< f e d\! c-1 b-2 |
  c8-1 c'-5) c-.-4 c16-5( b a g f-1 e-2 |\break
  
  g8-4 f) f-. g16-5( f e d c-1 b-2 |
  c16-3 g-1 c-2\< e-4 g e d8-.-3) e-.-1 f-.\! |
  g4.-3\f( fis16-2 g-3 fis g fis g |
  c4-5 g8 e) r r |\break
  
  g4-3\mf( e8 \acciaccatura e8-4 d8-3 c d |
  c8) r r \acciaccatura e8-4 d8-3\p( c d\! |
  e8) r r \acciaccatura c8-4 b8-.-3\f a-. b-. |
  c8-. <e, g c>-.-1-2-5[ q-.] q4 r8 |\bar "|."
}

lower = \relative c'' {
  \clef treble
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  c,8_4_\markup { \italic \bold "legato" } e_2 g_1 c, e g |
  c,8 e g c, e g |
  c,8 e g c, e g |
  g,8_5 d'_2 g g, d' g |
  c,8 e g c, e g |\break
  
  c,8 e g c, e g |
  c,8e g g,_5 d' g |
  \clef bass c,,8_5 e_4 g_2 c_1 g[ e] |
  <<
    { 
      \stemUp c8 e g c g e |
      c8 e g c g e |\break
      
      c8 e g c g e |
      g,8 b d g d b |
      c8\sustainOn e g c\sustainOff g e |
      c8 e g c g e |\break
      
      c8 e g g, d' g |
    }
    \new Voice \relative c {
      \stemDown c2._5 |
      c2. |\break
      
      c2. |
      g2. |
      c2._5 |
      c2. |\break
      
      c4._5 g_5 |
    }
  >> |
  \stemNeutral c,8_._3 g'-._1[ f-._2] e-._1[ d-._2 c-._3] |
  g4 r8 r <g' d' f>8-._1_2_5 q-. |
  <g c e>4_1_3_5 r8 r q8-._1_2_5 q-. |\break
  
  <g b d>4_1_3_5 r8 r <g d' f>8-. q-. |
  <g c e>4 <g c>8_2_5 <g b>4_3_5 r8 |
  <<
    {
      \stemUp c,8\sustainOn e_4 g c\sustainOff g e |
      c8 e g c g e |\break
      
      c e g g, d' g |
    }
    \new Voice \relative c {
      \stemDown c2._5 |
      c2. |\break
      
      c4._5 g_5 |
    }
  >> |
  \stemNeutral c,8_._3 g'-._1[ f-._2] e-._1[ d-._2 c-._3] |
  g4 r8 r <g' d' f>8-._1_2_5 q-. |
  <g c e>4_1_3_5 r8 r q8-. q-. |\break
  
  <g b d>4_1_3_5 r8 r <g d' f>8-. q-. |
  <g c e>4 <g c>8_2_5 <g b>4_3_5 r8 |
  <<
    {
      \stemUp c,8\sustainOn e_4 g c\sustainOff g e |
      c8 e g c g e |\break
      
      c8 e g g, d' g |
      c,8 e g g, d' g |
      c,8 e g g, d' g |
    }
    \new Voice \relative c {
      \stemDown c2._5 |
      c2. |\break
      
      c4._5 g_5 |
      c4._4 g_5 |
      c4._4 g_5 |
    }
  >> |
  c,,8-._5 e-._4 g-._2 c4_1\sustainOn r8\sustainOff |\bar "|."
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

