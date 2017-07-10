\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
  \tempo "Allegro 快板"
  
  g'2-3\f g,_3_左手 |
  d'2-3 d,_3_左手 |
  g4-5\mf( fis e d |
  <<
    {
      \change Staff = lower
       c4_2 b a g)
    }
    \new Voice { R1 }
  >> |\break
  
  \change Staff = upper
  d''2-3\f r2 |
  a2-3 r |
  d,4-3\mf( cis-2 d r |
  <<
    {
      \change Staff = lower
       d1_2)
    }
    \new Voice { R1 }
  >> |
  \change Staff = upper
  g'2-3\f g,_3_左手 |
  d'2-3 d,_3_左手 |\break
  
  g4-5( fis e d |
  <<
    {
      \change Staff = lower
       c4_2 b a g)
    }
    \new Voice { R1 }
  >> |
  \change Staff = upper
  R1 |
  d'4-2( e fis-4) r |
  g4_.\f r <ees g>-3-5_. r |
  <d g>1-2-5 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \dynamicUp
  
  s1 |
  s1 |
  R1 |
  s1 |\break
  
  r2 d'_3 |
  r2 a_3 |
  r2 r4 cis_3 |
  s1 |
  s1 |
  s1 |\break
  
  R1 |
  s1 |
  a4_4\< b c\! r |
  r2 c4_2-. r |
  b4-. r c-. r |
  b1 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = ##f
  subtitle = ##f
}
\markup { \vspace #1 }
\markup { 四四拍子的新记号 }
\markup { 记号C只是四四拍号的另一种表示方式。 }
\markup { 在下面的曲例中，你将看到G大调音阶，它作为旋律在两手间进行。 }
\markup { \vspace #1 }


\score {
  \header {
    title = "玩 杂 耍 的 人"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

