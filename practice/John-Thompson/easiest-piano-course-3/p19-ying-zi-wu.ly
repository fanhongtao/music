\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4
  \numericTimeSignature
  \tempo "Animato 生机勃勃"
  
  c8-3(\mp a c4) |
  R2 |
  e,8-3( dis e4) |
  R2 |\break
  
  R2 |
  d4-1_. f-3_. |
  e4-2_. a-5( |
  g4) r |\break
  
  c8-3(\mf b c4) |
  R2 |
  e,8-3( dis e4) |
  R2 |\break
  
  R2 |
  r4 << {f4-2_.} {g4-3_.} >> |
  << {e4-1_.} {g4-3_.} >> << {f4-2_.} {g4-3_.} >> |
  <e g>4_. r4 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 2/4
  \numericTimeSignature
  \dynamicUp
  \override Hairpin.to-barline = ##f
  
  R2 |
  \clef "treble" g''8_2( fis g4) |
  R2
  \clef "bass"
  c,2_2 |\break
  
  g4_5-.\< b_3-.\! |
  R2 |
  r4 \clef "treble" dis4_2(\> |
  e4\!) r|\break
  
  R2 |
  g8_2( fis g4) |
  R2 |
  \clef "bass" c,2_2 |\break
  
  g8_5([\< a] b[ c\!] |
  d4-.) b_3-. |
  c4_2-. b8_3( d_1 |
  c4-.) r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "双手交叉的乐曲"
  subtitle = ##f
}
\markup { \vspace #1 }
\markup { 这是一首双手交叉弹奏的乐曲，它主要建立在三音线之上。 }
\markup { 尽可能鲜明地表现断奏与边奏之间的区别。 }
\markup { 仔细琢磨表情记号，看看你是否能弹奏出影中嬉戏舞蹈的效果。 }
\markup { \vspace #1 }


\score {
  \header {
    title = "影  子 舞"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

