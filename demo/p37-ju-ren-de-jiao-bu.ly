 \version "2.18.2"


upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  \override Glissando.style = #'dashed-line
  
  r4 s4 c_2_\markup { \halign #-0.5 左手跨越 } c, \glissando |
  << 
    { \change Staff = "lower" c,4_5 \glissando }
    \new Voice { r4 }
  >>
  \change Staff = "upper"
  c'-1 c'2_2_\markup { \halign #-0.5 左手跨越 } |
  c,8[ d] ees[ f] g4 g |
  c8-1[ d] ees[ f] g2 |\break
  
  r4 s4 c,_2_\markup { \halign #-0.5 左手跨越 } c, \glissando |
  << 
    { \change Staff = "lower" c,4 \glissando }
    \new Voice { r4 }
  >>
  \change Staff = "upper"
  c' c'2_2_\markup { \halign #-0.5 左手跨越 } |
  g'8-5[ f] ees[ d] c4 c |
  g8-5[ f] ees[ d] c2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature
  \override Glissando.style = #'dashed-line
  
  c4_5 \glissando
  << 
    { \change Staff = "upper" c'4-1 }
    \new Voice { r4 }
  >>
  \change Staff = "lower" s4 r4 |
  s4 r4 s2 |
  c,8_5[ d] ees[ f] g4 g |
  \clef "treble"
  c8_5[ d] ees[ f] g2 |\break
  
  \clef "bass"
  c,,4  \glissando 
  << 
    { \change Staff = "upper" c'4-1 }
    \new Voice { r4 }
  >>
  \change Staff = "lower" s4 r4 |
  s4 r4 s2 |
  \clef "treble"
  g'8_1[ f] ees[ d] c4 c |
  \clef "bass"
  g8_1[ f] ees[ d] c2 |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "双手交叉的小曲"
  subtitle = ##t
}
\markup { \vspace #1 }

\score {
  \header {
    title = "巨人的脚步"
    subtitle = ##t
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


%% see http://lilypond.org/doc/v2.18/Documentation/notation/expressive-marks-as-lines
