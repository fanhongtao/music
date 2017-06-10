\version "2.18.2"

#(define-markup-command (ezscore layout props mus) (ly:music?)
  #:properties ((size 0))
  (interpret-markup layout props
    #{
      \markup {
        \score {
          \new RhythmicStaff { $mus }
          \layout {
            \context {
              \RhythmicStaff
              \remove Clef_engraver
              \remove Time_signature_engraver
              \omit StaffSymbol
              fontSize = #size
              \override StaffSymbol.staff-space = #(magstep size)
              \override StaffSymbol.thickness = #(magstep size)
            }
            indent = 0
          }
        }
      }
    #}))

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  \tempo "有力的重音"
  
  R1 |
  R1 |
  d,1-1 |
  a'1-5 |
  f2-3 e4 f |
  d2. r4 |\break
  
  d1 |
  a'1 |
  f4 f e f |
  d2. r4 |
  << {d4-1} {e4-2} >> <d e> q q |
  << {d1-1} {f1-3} >> |\break
  
  << {d4-1} {e4-2} >> <d e> q q |
  <d-1 f-3>1 |
  d1 |
  a'1 |
  f4 f e f |
  d2. r4 |\bar"|."
}

left-one = \relative c' { <a-> d,>4 q q q }
left-two = \relative c' { <a-> d,>4 q q r }
lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  { <a'->_1 d,_5>4 q q q } |
  \left-one |
  \left-one |
  \left-one |
  \left-one |
  \left-two |\break
  
  \left-one |
  \left-one |
  \left-one |
  \left-two |
  bes1->_2 |
  a4->_1 d,_5 d d |\break
  
  bes'1->_2 |
  a4-> d, d d |
  \left-one |
  \left-one |
  \left-one |
  \left-two |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "重      音"
  subtitle = ##t
}
\markup { \vspace #1 }
\markup { 这是重音记号（>），音符上标有（
  \ezscore ##{ { \stemDown c4-> } #}
  ）这个记号时，要用力弹奏。
}
\markup { \vspace #1 }

\score {
  \header {
    title = "印第安鼓"
    subtitle = ##t
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup { 
  第 11、12、13 小节的第一个双音，如果采用
  \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/single-voice" {
    简写的方式(chord note)
  }，会导致指法的数字一上一下。
} 
\markup { 
  所以这里采用
  \with-url #"http://lilypond.org/doc/v2.18/Documentation/learning/music-expressions-explained#simultaneous-music-expressions-single-staff" {
    复杂的方式 (Simultaneous music expressions: single staff) 
  }
}
