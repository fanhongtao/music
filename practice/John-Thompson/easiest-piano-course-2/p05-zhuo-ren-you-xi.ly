\version "2.18.2"

#(define-markup-command (eznotes layout props mus) (ly:music?)
   (interpret-markup layout props
     #{
       \markup {
         \score {
           \new RhythmicStaff { #mus }
           \layout {
             \context {
               \RhythmicStaff
               \remove Clef_engraver
               \remove Time_signature_engraver
               \remove Staff_symbol_engraver
             }
             indent = 0
           }
         }
       }
     #}))

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4

  c,8-1 d e d |
  c4 r |
  r1*1/2 |
  r1*1/2 |\break
  
  c8 d e f |
  g4 c, |
  e8-3 d r4 |
  r1*1/2 |\bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 2/4

  r1*1/2 |
  r4 g'_4 |
  a4_3 c |
  g2 |\break
  
  r1*1/2 |
  r1*1/2 |
  r4 c8_1 b_2 |
  c2 |\bar "|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "八 分 音 符"
  subtitle = "二四拍子"
}
\markup { \vspace #1 }
\markup { 当两个音符这样连接在一起时（\eznotes ##{ { c8[ c] } #} 或 \eznotes ##{ { c8_[ c] } #})， 它们被称为八分音符。一拍中有两个八分音符。}
\markup { \vspace #1 }

\score {
  \header {
    title = "捉人游戏"
    subtitle = ##f
  }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup {
    注：\note-by-number #3 #0 #UP + \note-by-number #3 #0 #UP = \eznotes ##{ { c8[ c] } #} = \note-by-number #2 #0 #UP
}