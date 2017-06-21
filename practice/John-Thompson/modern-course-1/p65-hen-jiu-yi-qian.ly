\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P65

\markup { \fill-line { \huge "两 种 手 位" } }
\markup { \fill-line { "(左手的扩展)" } }

resumeStaff = {
  \set Timing.measureLength = #(ly:make-moment 1/32)
  s32 % Add a wee bit of staff before the clef!
  \unset Timing.measureLength
  \bar ""
  % \cadenzaOff \startStaff % Resume bar count and show staff lines again
}

showClefKey = {
  \once \override Staff.Clef.break-visibility = #all-visible
  \once \override Staff.KeySignature.break-visibility = #all-visible
}

upper_hand = \relative c'' {
  \clef treble
  \key d \major
  \time 4/4
  \numericTimeSignature
  
  s4 d,4_1_\markup { \box " 第一位置 " } e_2 fis_3 \bar "" g_4 a_5 \bar "||"
  
  \resumeStaff
  
  \showClefKey
  % \set Staff.forceClef = ##t
  % \clef "treble"
  % \key d \major
  
  \time 4/4
  
  e4_1_\markup { \box " 第二位置 " } fis_2 g_3 a_4 \bar "" b_5
}

lower_hand = \relative c {
  \clef bass
  \key d \major
  
  <\parenthesize cis>4-\parenthesize \tweak ParenthesesItem.font-size #-2 _5
  % <\parenthesize cis>4_\markup {\halign #-0.5 \abs-fontsize #8"(5)"}
  
  d4_5 e_4 fis_3 \bar "" g_2 a_1 \bar "||"
}

\markup {\fill-line {
\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper_hand
    \new Staff = "lower" \lower_hand
  >>
  \layout { }
}
} }

\markup { 熟悉手位变换后，学和声型。 }
\markup { "    先学："
  \score {
    \new Staff {
      \clef bass
      \key d \major
      \time 4/4
      \numericTimeSignature
      <a_1 fis_3 d_5>2 << a2_1 g2_2 cis2_5>>
    }
    \layout { ragged-right = ##t indent = 0.2\cm }
  }
  
  "      再按分解形式学："
  \score {
    \new Staff {
      \clef bass
      \key d \major
      \time 4/4
      \numericTimeSignature
      d8[ a fis a] cis[ a g a]
    }
    \layout { ragged-right = ##t indent = 0.2\cm }
  }
}

%------------------------------

upper = \relative c'' {
  \clef treble
  \key d \major
  \time 4/4
  \numericTimeSignature
  \tempo "Andante"
  
  d,4-1 d8[ e-2] fis4-3 fis8-2[ g-3]^\markup { \box " 第二位置 " } |
  a4-4 b8-5[ a-4] fis2-2 |
  a4-4 g8-3[ fis-2] e2-1 |
  g4-4^\markup { \box " 第一位置 " } fis8-3[ e-2] d2-1 |\break
  
  d4-1 d8[ e-2] fis4-3 fis8-2[ g-3] |
  a4-4 b8-5[ a-4] fis2-2 |
  a4-4 g8-3[ fis-2] e4-1 fis8-3[ e-2] |
  d2-1~ d4 r |\break
  
  a'4-5 g8-4[ fis-3] e2-2 |
  g4-4 fis8-3[ e-2] d2-1 |
  a'4-5 g8-4[ fis-3] e2-2 |
  g4-4 fis8-3[ e-2] d2-1 |\break
  
  d4 d8[ e] fis4-3 fis8-2[ g-3] |
  a4-4 b8-5[ a-4] fis2-2 |
  a4-4 g8-3[ fis-2] e4-1 fis8-3[ e-2] |
  d2-1~ d4 r |\bar"|."
}

left_one = \relative c { d8[ a' fis a] }
left_one_f = \relative c { d8_5[ a'_1 fis_3 a_1] }
left_two = \relative c { cis8[ a' g a] }
left_two_f = \relative c { cis8_5[ a'_1 g_3 a_1] }

lower = \relative c {
  \clef bass
  \key d \major
  \time 4/4
  \numericTimeSignature
  
  \left_one_f \left_one |
  \left_one \left_one |
  \left_two_f \left_two |
  \left_one_f \left_one |\break
  
  \left_one \left_one |
  \left_one \left_one |
  \left_one_f \left_two |
  d8_5[ fis_3 a_1 fis_3] d4_5 r |\break
  
  \left_two_f \left_two |
  \left_one_f \left_one |
  \left_two_f \left_two |
  \left_one_f \left_one |\break
  
  \left_one \left_one |
  \left_one \left_one |
  \left_two \left_two |
  d8_5[ fis_3 a_1 fis_3] d4_5 r |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "很 久 以 前"
    composer = "贝  利"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


\markup { 有些被注释的代码，与其上面相邻代码功能（效果）相同，供参考。 }
\markup { \vspace #1 }
\markup { 参考: }
\markup { 1、\with-url #"http://lsr.di.unimi.it/LSR/Item?id=198" {
    Positioning segno and coda (without line break)
  }
}
\markup { 2、\with-url #"http://lsr.di.unimi.it/LSR/Item?id=250" {
    Inserting score fragments above a staff, as markups
  }
}
