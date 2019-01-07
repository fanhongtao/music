\version "2.18.2"

songName = "维也纳进行曲"
\include "../../lib/markups.ily"
\include "../../lib/paper-footer.ily"
\include "../../lib/repeat.ily"

\header {
  title = \songName
  composer = "车尔尼 曲"
}

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

boxSymbol = #(define-markup-command (parser location label) (string?)
  #{
    \override #'(font-size . 2.2)
    \halign #1.6 \box { $label }
  #})
boxA = \markup { 
  \override #'(font-size . 2.2)
  \halign #1.6 \box { "A" }
}
boxB = \markup { 
  \override #'(font-size . 2.2)
  \halign #1.6 \box { "B" }
}
boxC = \markup { 
  \override #'(font-size . 2.2)
  \halign #3 \box { "C" }
}



upperOne = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Maestoso" 4=100
  \override Hairpin.to-barline = ##f
  
  \repeatfine {
    \repeat volta 2 {
      \ottava #1 c'4-1\f c8. c16 c4 e |
      e4-1 e-1 e r |
      <g, d'>4-1-3 q8. q16 q4 f' |
      g,8-1 a16 b c-1 d e f g4-! r \ottava #0 |
      g,16-2 a-3 g a g a g a g a g a g a g a |
      g16_\crescendo a g a g a g a g4 \ottava #1 g'16-4 e-2 g e |\break
      
      d4\f d'16-5( b-3 d b a4) c16( a c a |
      g4) <g, g'>8. q16 q4 r |
    }
    \repeat volta 2 {
      f'4-1\f^\boxA f8. f16 f4 g16-2( a g f |
      e8\p) g,_\dolce c g c g c e |\break
      
      f4->-3\f f8.-> f16 f4-> f16->-3 a-5( g f |
      e8-.\p) c16-._\dolce c-. c8-. c-. c-. c-. c-. c-. |
      a'8-.-> c,16 c c8 c a'8( c b a |
      g8-.-1) e'16-4( d c b a-3 g f8-.) d'16-4( c b a g-3 f |\break
      
      e8-.) c'16-5 b a g f-1 e-3 d c b-3 a g-1 f-4 e-3 d |
      c4\f <c' c'>8. q16 q4 r_\markup { \translate #'(4 . -3) \fine } \bar ":|."\break
    } \ottava #0
  } % end of repeatfine firstpart
  {
    \key f \major
    \repeat volta 2 {
      c,8-.-1\p^\boxB c16-1(_\dolce f-2 a8-.-4) a-. a4.( g16 f |
      e8-.-1) e16-1( g-2 c8-.-5) c-. c4.( bes16 g |
      f8) r d'16-5(_\crescendo c-4 d c g8) r d'16-4( c-3 d c |\break
      
      \ottava #1 a16-1) bes c d-1 e f g a g4 r |
      c,8-.-1\p( c16 f a8-.) a-. a4.( g16 f |
      e8-.) e16( g c8-.) c-. c4.( bes16 g |
      a8-.)_\crescendo a16 a c8( a g-.) g16 g bes8( g |
      f8-.\f) c'16( a f8-.) c'16( a f8-.-1) c16-3( a-2 f8_.-1) r |\break
    }
    
    \repeat volta 2 {
      c'4-1^\boxC c8. c16 c8 a'16-5 g f e d c-2 |
      c8-3 b! b b b2 |
      bes!4-2 bes8. bes16 bes8 g'16-5 f e d c bes-2 |
      bes8-3 a a a a2 | %\break
      
      c8-.\p c16( f a8-.) a-. a4.( g16 f |
      d8-.) f16( bes d8-.) d-. d4.( c16 bes |
      a8-.) a16 a c8( a g) g16 g bes8( g |
      f8-.\f) c'16( a f8-.) c'16( a f8-.) c16( a f8_.) r_\markup { \lower #3 \dcalFine } |\bar"||"
    }
  }
  % |\bar "|."
}

lowerOne = \relative c'' {
  \clef treble
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \repeatfine {
    \repeat volta 2 {
      <c e>4_3_5 q8. q16 q4 q |
      c8_5 d16 e f g a_3 b c4-! r |
      <g, b>4_3_5 q8. q16 q4 q |
      g8 a16 b c d e f g4-! r |
      <c, e>4-._1_3 <g d'>-._2_5 <c e>-._1_3 <g d'>-. |
      <c e>4-. <g d'>-. <c e>-. r |\break
      
      <g b d>4_1_2_4 r <fis a d>_1_3_5 r |
      <g b d>4 q8. q16 q4 r |
    }
    \repeat volta 2 {
      <g d' f>4_1_2_5 q q r |
      <c e>8_1_3 r q r q r q r |\break
      <g d' f>4 q q r |
      <c e g>8-. r q-. r q-. r q-. r |
      <c f a>8-.-> r q-. r q4-. r |
      <c e g>4 r <d f> r |\break
      <c e g>4 r g r |
      g4 <c e>8. q16 q4 r |\break
    }
  } % end of repeatfine firstpart
  {
    \key f \major
    \repeat volta 2 {
      <f, a>4_3_5 <f c'> f8 c' a c |
      \stemDown g8 c bes c g c bes c |
      \stemNeutral <f, a>8 r r4 <e c'>8 r r4 |\break
      
      <f c'>4 r <e c'> r |
      f8 c' a c f, c' a c |
      \stemDown g8 c bes c g c bes c |
      \stemNeutral f,8 c' a c e, c' g c |
      <f, a c>8 r q r q r q r |\break
    }
    
    \repeat volta 2 {
      <c' e>4 q q r |
      <g d'>4 q q2 |
      <g c>4 q q r |
      <f c'>4 q q2 |% \break
      
      f8 c' a c f, c' a c |
      \stemDown f,8 d' bes d f, d' bes d |
      \stemNeutral f,8 c' a c e, c' g c |
      <f, a c>8-. r q-. r q-. r q-. r |
    }
  }
  %|\bar "|."
}

upperTwo = \relative c' {
  \clef treble
  \keyTime
  \tempo "Maestoso" 4=100
  \override Hairpin.to-barline = ##f
  
  \repeatfine {
    \repeat volta 2 {
      c4\f c8. c16 c4 e |
      c8-1 d16 e f-1 g a b c4-! r |
      <g, b d>4-1-3-5 q8. q16 q4 <g d' f>-1-3-5 |
      g8-1 a16 b c-1 d e f g4^! r |
      c,8.\pp c16 d8. d16 e8. e16 d8. d16 |
      c8. c16 d8. d16 e4 r |\break
      
      <g, b>4\f q <a c> q |
      <g b>4 <g b d>8. q16 q4 r |
    }
    \repeat volta 2 {
      <g b d>4\f^\boxA q8. q16 q4 r |
      r8\p <c e>-._\dolce q-.[ q-.] q-. q-. q-. q-. |\break
      <g b d>4\f q8. q16 q4 r |
      r8\p <c e>-._\dolce q-.[ q-.] q-. q-. q-. q-. |
      r8 <a c f>16-.-1-2-4 q-. q8-. q-. <c f>8-1-3 a' g f |
      <c e>4-1-2 r <a d>-1-4 r |\break
      
      <c e>4-1-3_\dimin r <b d f>-1-2-4 r |
      <c e>4-1-3 <c e g>8.-1-3-5 q16 q4 r_\markup { \translate #'(4 . -3) \fine } |
    }
  } % end of repeatfine firstpart
  {
    \key f \major
    \repeat volta 2 {
      r8^\boxB <a c>-.-1-3_\dolce q-.[ q-.] r q-. q-.[ q-.] |
      r8 <bes c>-.-2-3 q-.[ q-.] r q-. q-.[ q-.] |
      r8 <a c>-._\crescendo q-.[ q-.] r <bes c>-. q-.[ q-.] |\break
      
      r8 <a c>-. q-.[ q-.] r c bes[ g] |
      r8\p <a c>-. q-.[ q-.] r q-. q-.[ q-.] |
      r8 <bes c>-. q-.[ q-.] r q-. q-.[ q-.] |
      \change Staff="lowerII" \stemUp r8^\crescendo <a c>-. q-.[ q-.] r <g bes>-. q-.[ q-.] |
      <f a>8^\f c' q c q4 \change Staff="upperII" \stemNeutral r4 |
    }
    
    \repeat volta 2 {
      <c e>8-2-4^\boxC g q g q g q g |
      <d' f>8-3-5 g, q g q g q g |
      <c e>8-3-5 g q g <c e>-2-5 g q g |
      \change Staff="lowerII" \stemUp <a c>8-2-4 f q f q f q f | %\break
      
      r8^\p <a c>^. q^.[ q^.] r q^. q^.[ q^.] |
      r8 <bes d>^. q^.[ q^.] r q^. q^.[ q^.] |
      r8 <a c>^. q^.[ q^.] r <g bes>^.-2-4 q^.[ q^.] |
      <f a>8^\f c' q c q4 r^\markup { \translate #'(4 . -3) \dcalFine } |\bar"||"
    }
  }
}

lowerTwo = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \repeatfine {
    \repeat volta 2 {
      <c, c'>4 q8. q16 q4 q |
      q4 r c''-! r |
      <g,, g'>4 q q q |
      q4 r g''-! r |
      e4_4 g_3 c_1 g |
      e4 g c r |\break
      
      <d,, d'>2 q |
      <g, g'>4 q q r |
    }
    \repeat volta 2 {
      <g g'>4 q q r |
      c'4 r r2 |\break
      <g, g'>4 q q r |
      c'4 r r2 |
      <f, f'>2 r |
      <c c'>4 r <f f'> r |\break
      <g g'>4 r q r |
      <c g'>4 <c, c'> q r |\break
    }
  } % end of repeatfine firstpart
  {
    \key f \major
    \repeat volta 2 {
      f'2 f |
      e2 e |
      f2 e |\break
      
      f2 c |
      f2 f |
      c2 c |
      \stemDown f2 c |
      <f,, f'>4 q q r \stemNeutral |
    }
    
    \repeat volta 2 {
      c''1 |
      g1 |
      c1 |
      \stemDown f,1 |%\break
      
      f2_5 f |
      bes2_2 bes |
      c2 c, |
      <f, f'>4 q q s |
    }
  }
}

music = 
<<
    \new PianoStaff <<
      \set PianoStaff.instrumentName = #"I "
      \new Staff = "upperI" \upperOne
      \new Staff = "lowerI" \lowerOne
    >>
    \new PianoStaff <<
      \set PianoStaff.instrumentName = #"II"
      \new Staff = "upperII" \upperTwo
      \new Staff = "lowerII" \lowerTwo
    >>
>>

\score {
  \music
  \layout {
    % indent = 0\cm
  }
  % \midi { }
}

\score {
  \unfoldRepeats
  \music
  \midi { }
}

\markup {
  曲谱出自 环球钢琴网
  \with-url #"https://www.hqgq.com/pu/show/53378" {
  《维也纳进行曲（四手联弹）-车尔尼》
  }
}
