\version "2.18.2"

right_one = \relative c'' { << b4-3-. c4-4-. >> <c b>4-. q-. q-. }
right_two = \relative c'' { << a4-3_. b4-4_. >> <b a>4-. q-. r }
upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  % \numericTimeSignature
  \tempo "Allegro 快板"
  
  \right_one |
  a2-2( e-1) |
  \right_one |
  a2. r4 |\break
  
  e2-1 g-2 |
  \right_two |
  e4_. g_. a_. a_. |
  e2. r4 |\break
  
  \right_one |
  a2( e) |
  <c' b>4-. q-. q-. q-. |
  a2. r4 |\break
   
  e2-1 g-2 |
  \right_two |
  e4_.^\markup { \italic { poco rit. } } g_. a_. c-. |
  << e,2.-1 g2.-2 a2.-3 >> r4 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  % \numericTimeSignature
  \dynamicUp
  
  <d_1 a_5>4_.\mf q_. q_. q_. |
  q4_. q_. q_. q_. |
  q4_. q_. q_. q_. |
  q4_. q_. q_. r |\break
  
  <g_1 c,_5>4-.\p\< q-. q-. q-.\! |
  q4-. q-. q-. q-. |
  q4-. q-. q-.\> q-. |
  q4-. q-.\! q-. r |\break
  
  <d_1 a_5>4_.\f q_. q_. q_. |
  q4_. q_. q_. q_. |
  q4_. q_. q_. q_. |
  q4_. q_. q_. r |\break
  
  <g_1 c,_5>4-.\mf\< q-. q-. q-.\! |
  q4-. q-. q-. q-. |
  q4-. q-. q-.\> q-. |
  q4-. q-.\! q-. r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "不 协 和 音"
  subtitle = ##f
}
\markup { \vspace #1 }

\score {
  \header {
    title = "中国大戏院"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

