\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  % \numericTimeSignature
  \tempo "Allegro 快板"
  % \override Hairpin.to-barline = ##f
  
  R1 |
  R1 | \break
  
  c2-4 d-5 |
  c4-. c-. d2 |
  c4-4( bes-3 g-1) g_. |
  g2._> r4 |\break
  
  f2-4 g2 |
  f4_. f_. g2 |
  f4-4( ees-3 c-1) c |
  c2._> r4 |\break
  
  c'2-4 d |
  c4-. c-. d2 |
  c4( bes g) g_. |
  g2._> r4 |\break
  
  f2-4 g |
  f4_. f_. g2 |
  f4( ees c) c_. |
  c2._> r4 |\break
  
  d4-2( f-4 ees-3) ees_. |
  c2 r2 |
  d4-2( f ees) ees_. |
  c2 r2 |\break
  
  d2-2 d |
  f2-4 ees |
  c1( |
  c4) r r2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  % \numericTimeSignature
  \dynamicUp
  
  \override DynamicText.X-offset = #-4.2
  <g' c,>4->-.^重音记号\mp q-. q-. q-. |
  q->-. q-. q-. q-. |\break
  
  <g c,>4->-.\mf q-. q-. q-. |
  q->-. q-. q-. q-. |
  q->-. q-. q-. q-. |
  q->-. q-. q-. r |\break
  
  <aes_1 c,_5>4->-.\mf q-. q-. q-. |
  q->-. q-. q-. q-. |
  <g_1 c,_5>4->-. q-. q-. q-. |
  q->-. q-. q-. r |\break
  
  <g c,>4->-.\f q-. q-. q-. |
  q->-. q-. q-. q-. |
  q->-. q-. q-. q-. |
  q->-. q-. q-. r |\break
  
  <aes_1 c,_5>4->-.\mf q-. q-. q-. |
  q->-. q-. q-. q-. |
  <g_1 c,_5>4->-. q-. q-. q-. |
  q->-. q-. q-. r |\break
  
  <aes_1 c,_5>4->-.\mp q-. q-. q-. |
  <g_1 c,_5>4->-. q-. q-. q-. |
  \once \override DynamicText.X-offset = #-2.2
  <aes c,>4->-.\p q-. q-. q-. |
  <g c,>4->-. q-. q-. q-. |\break
  
  <aes c,>4->-.\pp q-. q-. q-. |
  q->-. q-. q-. q-. |
  <g c,>4->-. q-. q-. q-. |
  q->-. r 
  \set Staff.ottavation = #"8"
  \once \override Staff.OttavaBracket.direction = #DOWN
  \set Voice.middleCPosition = #(+ 6 7)
  c,4
  \unset Staff.ottavation
  \unset Voice.middleCPosition
  r4 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "重 音 和 连 线"
  subtitle = ##f
}
\markup { \vspace #1 }

\score {
  \header {
    title = "部 落 舞"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

