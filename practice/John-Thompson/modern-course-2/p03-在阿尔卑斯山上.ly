\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P03

keyTime = {
  \key c \major
  \time 3/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andantino"
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2 {
    % \partial 2 
    \set Timing.measurePosition = #(ly:make-moment 1/4)
    g4-1(\mp\< gis-2 |
    a4-1^> f'-5\!) r |
    r4 a,-1( aes-2 |
    g4-1^> e'-5) r |\break
    
    r4 g,-1( fis-2 |
    f!4-1^> d'-5) r |
    r4\> g,-3( f-2 |
    e4-1^>\! c'-5) r |\break
    
    r4 g-1( gis-2 |
    a4-1^> f'-5) r |
    r4 a,-1( aes-2 |
    g4-1^> e'-5) r |\break
    
    r4 g,-1( fis-2 |
    f!4-1^>\< d'-5) r\! |
    r4 <g, e'>-1-5\> <f d'>-1-5 |
    <<
      { \stemUp c'2.-5^~ | c4\! }
      \new Voice {
        r4 \stemDown e,_1 f_2 e_1
      }
    >>
  }
  %\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \dynamicUp
  
  \repeat volta 2 {
    % \partial 2
    \set Timing.measurePosition = #(ly:make-moment 1/4)
    r4 r|
    r4 r f_5( |
    c'4_1) r r |
    r4 r g_4( |\break
    
    c4_1) r r |
    r4 r g_4( |
    b4_2) r r |
    r4 c,_5(\< g'_2\! |\break
    
    c4_1\> b_2 bes_3\!) |
    r4 b_4( c_2 |
    \clef treble f4_1) r r |
    r4 \clef bass g,_5( c_2 |\break
    
    e4_1) r r |
    r4 g,_3( a_2 |
    b4_1) r r |
    <<
      { \stemDown c,2._5_~ | c4 }
      \new Voice {
        a'4\rest \stemUp g-1 aes-2 g-1
      }
      
    >>
  }
  %\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "拇指位于第二指（黑键）下"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "在阿尔卑斯山上"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
}

\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}

\markup { \vspace #1 }
\markup { \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/writing-rests#rests" {
    注意：低音谱倒数第二节4分休止符的写法。
  }
}