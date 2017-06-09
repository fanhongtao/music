 \version "2.18.2"


upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \numericTimeSignature
  
  d2-4 e4 |
  d2 c4 |
  b2-2 c4 |
  d2. |\break
  
  a2-1 b4 |
  c2. |
  b2-2 c4 |
  d2. |\break
  
  d2 e4 |
  d2 c4 |
  b2 c4 |
  d2. |\break
  
  a2.-1 |
  d2.-5 |
  d4-3 g,2-1~ |
  << 
    { \stemDown g2.  }
    \new Voice {
      \voiceTwo
      \stemUp g'2.^\markup { \halign #0.2 左手跨越 }
    }
  >>
  |\bar"|."
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4
  \numericTimeSignature

  <d'_1 b_3 g_5>2.~ |
  q2. |
  q2.~ |
  q2. |\break
  
  <d_1 c_2 g_5>2.~ |
  q2. |
  <d_1 b_3 g_5>2.~ |
  q2. |\break
  
  q2.~ |
  q2. |
  q2.~ |
  q2. |\break
  
  <d_1 c_2 g_5>2.~ |
  q2. |
  <d_1 b_3 g_5>2. |
  R2. |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "固定低音和弦"
  subtitle = "G 大 调"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "伦敦桥要塌了"
    subtitle = ##t
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


%% see also : http://lilypond.org/doc/v2.18/Documentation/learning/fixing-overlapping-notation#the-force_002dhshift-property
%% see also : http://lilypond.org/doc/v2.18/Documentation/learning/real-music-example
