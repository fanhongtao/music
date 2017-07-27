\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P17

keyTime = {
  \key g \major
  \time 4/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Moderato"
  \set fingeringOrientations = #'(left)
  
  \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment 1/4)
    r4 r2 |
    r4 <d,-5 g-2 b-1> q q |
    q4 r r2 |
    r4 <e-5 g-3 c-1> q q|\break
    
    q4 r r2 |
    r4 <d-5 a'-2 c-1> q q |
    q4 r r2 |
    r4 <d-5 g-2 b-1> q
    \once \set fingeringOrientations = #'(right)
    <cis-5 ais'-1> |\break
    
    \once \set fingeringOrientations = #'(right)
    <c!-5 d-4 fis\finger"   2" a!\finger"   1">4 r r2 |
    r4 <d-5 g-2 b-1> q q |
    q4 r r2 |
    r4 <e-5 g-3 c-1> q q |\break
    
    <g-5 c-2 e-1>4\fermata r r2 |
    r4 <c,-5 d-4 a'-1> q q |
    q4 r r2 |
    \override Fingering.staff-padding = #'()
    \set fingeringOrientations = #'(up)
    r4 <d-2 f-1>-.\>^( <cis-2 e-1>-. <c! ees>-.\!)
    \set fingeringOrientations = #'(left)
    <b-3 d-1>\fermata
  }
}

lower = \relative c {
  \clef bass
  \keyTime
  \set Staff.pedalSustainStyle = #'bracket
  
  \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment 1/4)
    d4_2\mf e_1 b_4 |
    d1_2~\sustainOn |
    d4\sustainOff g_2 a_1 g_2 |
    e1~\sustainOn |\break
    
    e4\sustainOff g_2 g e_4 |
    fis1~\sustainOn |
    fis4\sustainOff e_1 e b_4 |
    d1_2~\sustainOn |\break
    
    d4\sustainOff d_2 e_1 b_4 |
    d1_2~\sustainOn |
    d4\sustainOff g a g |
    e1_4~\sustainOn |\break
    
    e4\sustainOff\fermata e_4 fis_3 g_2 |
    fis1_3~\sustainOn |
    fis4\sustainOff d_4 e_3 fis_2 |
    g1_5~ |
    g4\fermata\sustainOn \grace s8 \sustainOff
  }
}

\paper {
  print-all-headers = ##t
}

\header {
  title = "只 用 左 手 弹"
}
\markup { \vspace #1 }
\markup { \halign #-2 \bold {教师注意：} 这首只用左手弹奏的歌曲不是必须学的，虽然它很有趣。 如果从教学角度来看，要求 }
\markup { 一只手又弹旋律又弹伴奏显然会提高左手的控制能力，同时它也提供了一首练习踏板的曲目。 }
\markup { \vspace #1 }

\score {
  \header {
    title = "比 尔 的 山 羊"
    subtitle = "（幽默曲  只用左手）"
    composer = "校园歌曲"
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
}

\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}
