\version "2.18.2"

up-double-quaver = \markup {
  \combine
    \combine
      \note-by-number #2 #0 #UP
      \override #'(line-join-style . bevel)
      \path #.4
         #'((moveto   1.16   3)
            (lineto   4.34   3)
            (closepath))
    \concat {
      \hspace #3
      \note-by-number #2 #0 #UP
    }
}

down-double-quaver = \markup {
  \combine
    \combine
      \note-by-number #2 #0 #DOWN
      \override #'(line-join-style . bevel)
      \path #.4
         #'((moveto   0   -3)
            (lineto   3.14   -3)
            (closepath))
    \concat {
      \hspace #3
      \note-by-number #2 #0 #DOWN
    }
}

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
\markup { 当两个音符这样连接在一起时（\up-double-quaver 或 \down-double-quaver)， 它们被称为八分音符。一拍中有两个八分音符。}
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
    注：\note-by-number #3 #0 #UP + \note-by-number #3 #0 #UP = \up-double-quaver = \note-by-number #2 #0 #UP
}