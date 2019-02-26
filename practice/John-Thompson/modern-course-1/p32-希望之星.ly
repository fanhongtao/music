\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P32

right_hand = \relative c'' {
  \clef treble
  \key c \major
  
  c,4-1 d-2 e-3 f-4 \bar "" g-5
}

left_hand = \relative c {
  \clef bass
  \key c \major
  \stemDown 
  g'4_5^\markup { \box " 左手第一位置 " } a_4 b_3 c_2  d_1 \bar "|"
  c,4_5^\markup { \box " 左手第二位置 " } d_4 e_3 \bar "" f_2 g_1  \bar "|"
}

\markup {\fill-line {
\score {
  \new PianoStaff <<
    \new Staff = "upper" \right_hand
    \new Staff = "lower" \left_hand
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}
} }

keyTime = {
  \key c \major
  \time 2/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo \markup { "M.M. " \note-by-number #2 #0 #UP "= 60 - " \note-by-number #1 #0 #UP " = 54" }
  
  c,4-1_\mf e-3 |
  g4-5 r |
  g8-5 f-4 e-3 d-2 |
  c4-1 r |\break
  
  R2 |
  g'8-5 g-5 e-3 c-1 |
  R2 |
  g'8-5 g-5 e-3 c-1 |\break
  
  c8-1\< d-2 e-3 f-4\! |
  g4-5 r |
  g8-5 f-4 e-3 d-2 |
  c4-1 r |\bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \dynamicUp
  
  R2 |
  R2 |
  R2 |
  R2 |\break
    
  d'8_1^\f_\markup { \box " 第一位置 " } d_1 b_3 g_5 |
  R2 |
  d'8_1^\pp d_1 b_3 g_5 |
  R2 |\break
  
  R2 |
  R2 |
  g8_1^\ff_\markup { \box " 第二位置 " } f_2 e_3 d_4 |
  c4_5 r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "希 望 之 星"
    composer = "德国民歌曲调"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
