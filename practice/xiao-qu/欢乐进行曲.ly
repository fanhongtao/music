\version "2.18.2"

\header {
  title = "四手联弹 欢乐进行曲"
}

a_One = \relative c'' { r8 << c'16 e16 >> << c16 e16  >> r16 << c16 e16 >> r16 << c16 e16 >> }
a_Two = \relative c'' { r8 << a'16 c16 >> << a16 c16  >> r16 << a16 c16 >> r16 << a16 c16 >> }
a_Three = \relative c'' { r8 << f16 a16 >> << f16 a16  >> r16 << f16 a16 >> r16 << f16 a16 >> }
a_Four = \relative c'' { r8 << g'16 b16 >> << g16 b16  >> r16 << g16 b16 >> r16 << g16 b16 >> }
a_Five = \relative c'' { e8 f16 g16~ g4 }
a_Six = \relative c'' { e8 d16 c16~ c4 }
a_Seven = \relative c'' { f8[ e8 d8 c8] }
a_Eight = \relative c'' { d8 g16 g16~ g4 }
a_Nine = \relative c'' { f8 e8 d16 c8. }
a_Ten = \relative c'' { c2 }
a_Eleven = \relative c'' { g'8 g16 g16 e16 g8 g16 }
a_Twelve = \relative c'' { a'8 e16 e16~ e4 }
a_Thirteen = \relative c'' { a'8 a16 a16 f16 a8 a16 }
a_Fourteen = \relative c'' { b'8 a16 g16 r16 g16 a16 b16 }
a_Fifteen = \relative c'' { c'8 c16 c16 r16 b16 c16 b16 }
a_Sixteen = \relative c'' { a'8 a16 a16 r16 g16 a16 g16 }
a_Seventeen = \relative c'' { f8 f16 f16 r16 f16 g16 a16 }
a_Eighteen = \relative c'' { d'8[ c8 b8 g8] }
a_Nineteen = \relative c'' { c'8[ b8 a8 g8] }
a_Twenty = \relative c'' { c'8 c16 c16 c4 }


trackA = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4
  \tempo 4=65

  \set Staff.ottavation = #"8va"
  \a_One | \a_Two | \a_Three | \a_Four | \break
  \a_One | \a_Two | \a_Three | \a_Four | \break
  
  \a_Five | \a_Six | \a_Seven | \a_Eight | \break
  \a_Five | \a_Six | \a_Nine | \a_Ten  | \break
  \a_Eleven | \a_Twelve | \a_Thirteen  | \a_Fourteen | \break 
  \a_Fifteen | \a_Sixteen | \a_Seventeen | \a_Fourteen | \break
  \a_Fifteen | \a_Sixteen | \a_Seventeen | \a_Eighteen | \break
  
  \a_Five | \a_Six | \a_Seven | \a_Eight | \break
  \a_Five | \a_Six | \a_Nine | \a_Ten  | \break
  \a_Eleven | \a_Twelve | \a_Thirteen  | \a_Fourteen | \break 
  \a_Fifteen | \a_Sixteen | \a_Seventeen | \a_Nineteen | \break
  \a_Fifteen | \a_Sixteen | \a_Seventeen | \a_Eighteen | \break
  
  \a_Fifteen | \a_Sixteen | \a_Seventeen | \a_Fourteen | \a_Twenty | \break
  \bar "|."  
}


b_One  = \relative c'' { c8 r8 c16 r16 c16 r16 }
b_Two  = \relative c'' { a8 r8 a16 r16 a16 r16 }
b_Three  = \relative c'' { f,8 r8 f16 r16 f16 r16 }
b_Four  = \relative c'' { g8 r8 g16 r16 g16 r16 }
b_Five  = \relative c'' { e,8 f16 g16~ g4 }
b_Six  = \relative c'' { e,8 d16 c16~ c4 }
b_Seven = \relative c'' { f,8[ e8 d8 c8] }
b_Eight = \relative c'' { d,8 g16 g16~ g4 }
b_Nine = \relative c'' { f,8 e8 d16 c8. }
b_Ten = \relative c'' { c,2 }
b_Eleven = \relative c'' { g8 g16 g16 e16 g8 g16 }
b_Twelve = \relative c'' { a8 e16 e16~ e4 }
b_Thirteen = \relative c'' { a8 a16 a16 f16 a8 a16 }
b_Fourteen = \relative c'' { b8 a16 g16 r16 g16 a16 b16 }
b_Fifteen = \relative c'' { c8 c16 c16 r16 b16 c16 b16 }
b_Sixteen = \relative c'' { a8 a16 a16 r16 g16 a16 g16 }
b_Seventeen = \relative c'' { f,8 f16 f16 r16 f16 g16 a16 }
b_Eighteen = \relative c'' { d8[ c8 b8 g8] }
b_Nineteen = \relative c'' { c8[ b8 a8 g8] }
b_Twenty = \relative c'' { c8 c16 c16 c4 }

trackB = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4

  \set Staff.ottavation = #"8va"
  \b_One | \b_Two | \b_Three | \b_Four | \break
  \b_One | \b_Two | \b_Three | \b_Four | \break
  
  \b_Five | \b_Six | \b_Seven | \b_Eight | \break
  \b_Five | \b_Six | \b_Nine | \b_Ten | \break
  \b_Eleven | \b_Twelve | \b_Thirteen  | \b_Fourteen | \break 
  \b_Fifteen | \b_Sixteen | \b_Seventeen | \b_Fourteen | \break
  \b_Fifteen | \b_Sixteen | \b_Seventeen | \b_Eighteen | \break
  
  \b_Five | \b_Six | \b_Seven | \b_Eight | \break
  \b_Five | \b_Six | \b_Nine | \b_Ten | \break
  \b_Eleven | \b_Twelve | \b_Thirteen  | \b_Fourteen | \break 
  \b_Fifteen | \b_Sixteen | \b_Seventeen | \b_Nineteen | \break
  \b_Fifteen | \b_Sixteen | \b_Seventeen | \b_Eighteen | \break
  
  \b_Fifteen | \b_Sixteen | \b_Seventeen | \b_Fourteen | \b_Twenty | \break
  \bar "|."
}

c_One  = \relative c' { r8 << c16 e16 >> << c16 e16  >> r16 << c16 e16 >> r16 << c16 e16 >> }
c_Two = \relative c' { r8 << a16 c16 >> << a16 c16  >> r16 << a16 c16 >> r16 << a16 c16 >> }
c_Three = \relative c' { r8 << f,16 a16 >> << f16 a16  >> r16 << f16 a16 >> r16 << f16 a16 >> }
c_Four = \relative c' { r8 << g16 b16 >> << g16 b16  >> r16 << g16 b16 >> r16 << g16 b16 >> }
c_Fifteen = \relative c' { c8 c16 c16 r16 b16 c16 b16 }
c_Sixteen = \relative c' { a8 a16 a16 r16 g16 a16 g16 }
c_Seventeen = \relative c' { f,8 f16 f16 r16 f16 g16 a16 }
c_Eighteen = \relative c' { d8[ c8 b8 g8] }
c_Twenty = \relative c' { << c8 e8 >> << c16 e16 >> << c16 e16 >> << c4 e4 >> }

trackC = \relative c' {
  \clef bass
  \key c \major
  \time 2/4

  \c_One | \c_Two | \c_Three | \c_Four | \break
  \c_One | \c_Two | \c_Three | \c_Four | \break
  
  \c_One | \c_Two | \c_Three | \c_Four | \break
  \c_One | \c_Two | \c_Three | \c_One | \break
  \c_One | \c_Two | \c_Three | \c_Four | \break
  \c_One | \c_Two | \c_Three | \c_Four | \break
  \c_One | \c_Two | \c_Three | \c_Four | \break
  
  \c_One | \c_Two | \c_Three | \c_Four | \break
  \c_One | \c_Two | \c_Three | \c_One | \break
  \c_One | \c_Two | \c_Three | \c_Four | \break
  \c_One | \c_Two | \c_Three | \c_Four | \break
  \c_Fifteen | \c_Sixteen | \c_Seventeen | \c_Eighteen | \break
  
  \c_One | \c_Two | \c_Three | \c_Four | \c_Twenty | \break
  \bar "|."
}


d_One  = \relative c' { c,8 r8 c16 r16 c16 r16 }
d_Two = \relative c' { a,8 r8 a16 r16 a16 r16 }
d_Three = \relative c' { f,,8 r8 f16 r16 f16 r16 }
d_Four = \relative c' { g,8 r8 g16 r16 g16 r16 }
d_Fifteen = \relative c' { c,8 c16 c16 r16 b16 c16 b16 }
d_Sixteen = \relative c' { a,8 a16 a16 r16 g16 a16 g16 }
d_Seventeen = \relative c' { f,,8 f16 f16 r16 f16 g16 a16 }
d_Eighteen = \relative c' { d,8[ c8 b8 g8] }
d_Twenty = \relative c' { c,8 c16 c16 c4 }

trackD = \relative c' {
  \clef bass
  \key c \major
  \time 2/4

  \d_One | \d_Two | \d_Three | \d_Four | \break
  \d_One | \d_Two | \d_Three | \d_Four | \break
  
  \d_One | \d_Two | \d_Three | \d_Four | \break
  \d_One | \d_Two | \d_Three | \d_One | \break
  \d_One | \d_Two | \d_Three | \d_Four | \break
  \d_One | \d_Two | \d_Three | \d_Four | \break
  \d_One | \d_Two | \d_Three | \d_Four | \break
  
  \d_One | \d_Two | \d_Three | \d_Four | \break
  \d_One | \d_Two | \d_Three | \d_One | \break
  \d_One | \d_Two | \d_Three | \d_Four | \break
  \d_One | \d_Two | \d_Three | \d_Four | \break
  \d_Fifteen | \d_Sixteen | \d_Seventeen | \d_Eighteen | \break
  
  \d_One | \d_Two | \d_Three | \d_Four | \d_Twenty | \break
  \bar "|."
}

\markup { \vspace #1 }

\score {
  <<
    \new PianoStaff <<
      \new Staff = "upper" \trackA
      \new Staff = "lower" \trackB
    >>
    
    \new PianoStaff <<
      \new Staff = "upper" \trackC
      \new Staff = "lower" \trackD
    >>
  >>
  \layout { }
  \midi { }
}

\markup { \vspace #1 }
