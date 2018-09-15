\version "2.18.2"
% 《新版 世界儿童钢琴名曲》 陈朗秋 周明哲 选编 P87~88

\include "../../lib/slurs.ly"

keyTime = {
  \key f \major
  \time 4/4
  \numericTimeSignature
}


upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andante"
  \override Hairpin.to-barline = ##f
  
  a'8-.-1 e'16-3( d c bes-4 a g a8 c16-.-5) bes a( g f e-2 |
  f8-.) a16( g f e d c-2 d2) |
  r8 d,_2( f_1 g a4. c8 |\break
  
  \repeat volta 2 {
    a8 f g4 d2~ |
    d8) f_2( g_1 a c4. c8 |
    d4 g, a2~ |
    a4) a8-1( c-2 d2 |\break
    
    c4. d8 f e16 d c8 d) |
    a4( f8_1 g a4. c8 |
    f,4_2 d f8 g_1 a d |
    c1) |\break
    
    r8 f, <a d> f r f <a d> f |
    r8 \stemUp <g bes d>_. <f a d>4_. r2 |
    r8 g <bes d> g r f <a c> f |
    r8 <f a d>_. <g bes d>4_.\stemNeutral r2 |\break
    
    r4 f8-2^( g a4-1\< \stemUp c8-2 c\! \stemNeutral |
    d4 f e8\>[ d] c a\! |
  }
  \alternative {
    {
      d1) |
      a'8-.-1 e'16-3( d-. c bes-4 a g a8 c16-.-5) bes a( g f e-2 |\break
      f8-.) a16 g f( e d c-2 d2) |
      r8 d,( f g a4. c8 |
    }
    {
      d2.) 
      <<
        {
          \stemUp
          f8-2^(\mp g |\break
          a4-1 c8-2 c d4 f |
          e8 d c a d2^~ |
          d1) |
        }
        \new Voice {
          \stemDown
          f,8_( e |\break
          d4 c bes a |
          g4 a8 c d2_~ |
          d1) |
        }
      >>
    }
  }
  <f a d>1\fermata\pp |\bar "|."
}

sustainFour = \new Voice { s8\sustainOn s\sustainOff }
sustainTwo = \new Voice { s4\sustainOn s\sustainOff }
lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  
  a'8\sustainOn <e' c'>\sustainOff r q a,\sustainOn q\sustainOff r e' |
  d,8\sustainOn <a' c>\sustainOff r q d,4 <f a d>8 q |
  q8 r r4 r8 d_5( f_4 g |\break
  
  \repeat volta 2 {
    a4 c) r8 a( g a |
    d,2) r8 f_5( g a |
    c4 d) r8 d( c g |
    a2) r8 a( c d |\break
    
    \clef treble f4_1 g_3 a g |
    f4) r \clef bass r8 f,-5( g a |
    c4 a c d-3 |
    e8 g e d c4) bes---2 |\break
    
    << a2( \sustainTwo >> d4.\sustainOn d8\sustainOff |
    c8-.\sustainOn) bes-.\sustainOff << a4-. \sustainFour >> r2 |
    << g2( \sustainTwo >> a4.\sustainOn c8\sustainOff |
    d,8-.)\sustainOn f-.\sustainOff << g-. \sustainFour >> r2 |\break
    
    <<
      \new Voice {
        c,1
      }
      {
        s4 \change Staff = "upper"
        \shapeSlur #'(0 -5 0 -15 0 -11 0 -4)
        \stemDown f'8( e_2 d4_1 c \stemNeutral
        \change Staff = "lower"
      }
    >>|
    bes4 a g a8 c |
  }
  \alternative {
    {
      r8 a-2 g a d,2) |
      a'8\sustainOn <e' c'>\sustainOff r q a,\sustainOn q\sustainOff r e' |\break
      d,8\sustainOn <a' c>\sustainOff r q d,4 <f a d>8 q |
      q8 r r4 r8 d( f g |
    }
    {
      << d'1) \new Voice { r8 \slurDown a_2( g a d,2) } >>
      s1 |
      s2 \clef treble r8 a''_2_(^\markup { \italic "rit."} g a |
      d,1) |
    }
  }
  \clef bass d,,1_\fermata |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "让我们荡起双桨"
    composer = "[中] 刘炽/谭春晓"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
  % \midi { }
}

\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}
