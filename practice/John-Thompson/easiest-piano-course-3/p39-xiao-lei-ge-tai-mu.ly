\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4
  \tempo "Animato 生气勃勃"
  \set melismaBusyProperties = #'()
  
  a4-3\mf c2-5 a4-3 |
  f2-1 r |
  e4-3 g2-5 e4 |
  c2 r |\break
  
  a'4-3 c2-5 a4 |
  f4_.\< r <a-4 f^2>4_. r\! |
  <g e>1~\f |
  q2 r |\break
  
  a4-3\mf c2-5 a4 |
  f2 r |
  e4-3 g2-5 e4 |
  c2 r |\break
  
  c'4-4\f d2-5 c4 |
  a4-2 f-1 g-2 r |
  f1-1( |
  f'4-5)\ff r r2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 4/4
  \dynamicUp
  
  r2 <a'_3 f_5>4-. r |
  r2 <a f>4-. r |
  r2 <bes_2 f_5>4-. r |
  r2 <bes f>4-. r |\break
  
  r2 <a_3 f_5>4-. r |
  r2 b4_2-. r |
  r2 c4-. r |
  c2 r |\break
  
  r2 <a_3 f_5>4-. r |
  r2 <a f>4-. r |
  r2 <bes_2 f_5>4-. r |
  r2 <bes f>4-. r|\break
  
  r2 <a f>4-. r |
  r2 << c4_1-. bes4_2-. >> r4 |
  r2\< <c_1 a_3>2(\! |
  f,4_5-.) r r2 |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "切  分  音"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \header {
    title = "小雷格泰姆"
    subtitle = ##t
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

