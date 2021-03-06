\version "2.18.2"

% \paper  {
%   #(define fonts
%     (make-pango-font-tree "楷体" ;;"Times New Roman"
%                           "Nimbus Sans"
%                           "Luxi Mono"
%                           (/ staff-height pt 20)))
% }

songName = "中国少年先锋队队歌"
\include "../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "寄 明 　曲"
  arranger = "肖 乐 编配"
}

keyTime = {
  \key c \major
  \time 2/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "行进速度 精神饱满地" 4=108
  \override Hairpin.to-barline = ##f
  \repeat volta 2 {

  c2-5\f |
  g4-3 e-2 |
  c4-1( d |
  e4 g-1) |
  a4. d8 |\break
  
  c4 b8( a) |
  g2~ |
  g4 g8-2 g-1 |
  e'4.-5 e8 |
  d4 c8 c |
  d4.( c8) |\break
  
  e,4-1 g8( b) |
  a2~ |
  a4 c,8\p( d |
  e8)[ r g] r |
  r4 a-5 |
  f4.-3( e8 |\break
  
  d4-1) e-3 |
  d4.-2 c8-1 |
  d8( e g4) |
  c4.-5\mp( a8 |
  g4.) a8 |\break
  
  e8.-1 d16-2 c4-1~ |
  c2 |
  g'8.-2\p g16 c4-5 |
  c4-4 r |
  e,8.-2 e16-1 a4-5 |
  a4-4 r |\break
  
  g8.-2\mp g16-3 a4-4 |
  e4-1 r |
  a8.-5( g16) f8 e |
  d4 r |
  e4.\mf d8 |
  c4 c |\break
  
  d4. c8 |
  d8.( e16 d4) |
  g4. f8 |
  e8. e16 d8 e |
  g8.-5 g16-4 g8-3( a-4 |\break
  
  g4-3) g8-2 g-1 |
  c2-4\< |
  c4.-3( d8)\! |
  e8.\f e16 d8 c |
  d4 r |\break
  
  e,4-1 g8 a |
  e'8.\ff e16 d8 c |
  <f, a>8-1-2 r <f g b>-1-2-4 r |
  <e g c>2-1-2-5~ |
  q4 r |
  }
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \repeat volta 2 {
  c8[ <e g> g, q] |
  c8[ q g q] |
  c8[ q b <d g>] |
  c8^[ <e a> g, <d' g>] |
  <f, f'>4 <f' a c> |\break
  
  <d, d'>4 <fis' a c> |
  <a, g'>4 <g' b d>8. q16 |
  q4-> r |
  c,8[ <e g> g, q] |
  c8[ <e g> g, q] |
  c8[ <d g> g, q] |\break
  
  c8-4[ <e g>-2-1 b-5 <d g>-3-1] |
  a4_5 <c e a>8.-4-2-1 q16 |
  q4-> r |
  c8[ <e g> g, q] |
  c8[ <e g> g, q] |
  b8[ <d g> g, q] |\break
  
  b8[ <d g> g, q] |
  b8[ <d g> g, q] |
  b8[ <d g> g, q] |
  f4 <c' f a> |
  g4 <b d g> |\break
  
  r4 g |
  <c e g>8. q16 q4 |
  r4 c-5 |
  <e g c>8.-5-3-1 q16 q4-> |
  r4 a,-5 |
  <e' a c>8.-5-2-1 q16 q4-> |\break
  
  r4 c |
  <e g c>8. q16 q4-> |
  r4 g, |
  <d' g b>8. q16 q4-> |
  c8_4[ <e g> g,_5 q] |
  c8[ <e g> g, q] |\break
  
  b8[ <d g> g, q] |
  b8[ <d g> g, q] |
  c8[ <e g> g, q] |
  c8[ <e g> g, q] |
  b8[ <d g> g, q] |\break
  
  b8[ <d g> g, q] |
  c4 <g' c e>16 q8. |
  g,4 q16 q8. |
  <e e'>4 <gis' b e> |
  <f, f'>4 <f' a d>16 q8. |\break
  
  c4 <e g c> |
  g,4 <e' g c> |
  g,4 <g' b d> |
  <c,, c'>4 <e' g c>8 q |
  q4-> r |
  }
}

text_one = \lyricmode {
  % \override LyricText.font-name = #"楷体"
  我 |
  们 是 |
  \set ignoreMelismata = ##t
  共 产 |
  主 义 |
  接 _ |\break
  
  班  _ _ |
  人， |
  _ 继 承 |
  革 命 |
  先 辈 的 |
  光 荣 |\break
  
  传 _ _ |
  统, |
  _ 爱 _ |
  祖 国,
  爱 |
  人 _ |\break
  
  民, 鲜 |
  艳 的 |
  红 领 巾 |
  飘 _ |
  扬 在 |\break
  
  前 _ 胸。 _ |
  不 怕 困 |
  难， |
  不 怕 敌 |
  人， |\break
  
  顽 强 学 |
  习， |
  坚 决 斗 _ |
  争。 |
  向 着 |
  胜 利 |\break
  
  勇 敢 |
  前 _ 进， |
  向 着 |
  胜 利 勇 敢 |
  前 进 前 _ |\break
  
  进， 向 着 |
  胜 |
  利 _ |
  勇 敢 前 _ |
  进， |\break
  
  我 们 是 |
  共 产 主 义 |
  接 班 |
  人。
}

text_two = \lyricmode {
  % \override LyricText.font-name = #"楷体"
  我 |
  们 是 |
  \set ignoreMelismata = ##t
  共 产 |
  主 义 |
  接 _ |\break
  
  班  _ _ |
  人， |
  _ 沿 着 |
  革 命 |
  先 辈 的 |
  光 荣 |\break
  
  路 _ _ |
  程, |
  _ 爱 _ |
  祖 国,
  爱 |
  人 _ |\break
  
  民, 少先 |
  队 员 |
  是 我 们 |
  骄 _ |
  傲 的 |\break
  
  名 _ 称。 _ |
  时 刻 准 |
  备， |
  建 立 功 |
  勋， |\break
  
  要 把 敌 |
  人， |
  消 灭 干 _ |
  净。 |
  为 着 |
  理 想 |\break
  
  勇 敢 |
  前 _ 进， |
  为 着 |
  理 想 勇 敢 |
  前 进 前 _ |\break
  
  进， 为 着 |
  理 |
  想 _ |
  勇 敢 前 _ |
  进， |\break
  
  我 们 是 |
  共 产 主 义 |
  接 班 |
  人。
}


\score {
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" { \new Voice = "singer" \upper }
    \new Lyrics \lyricsto "singer" \text_one
    \new Lyrics \lyricsto "singer" { 
      % \override LyricText.font-name = #"楷体"
      \text_two
    }
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
    \context {
      \Lyrics
      \override LyricText.font-name = #"楷体"
    }
  }
  % \midi { }
}

\score {
  \unfoldRepeats
  \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}

\markup { \vspace #1 }
\markup { 《钢琴名曲精选 100首》 康薇嘉 吴元会 主编 P1~2 }
\markup { 金盾出版社 2010.8（2018.1 重印）    ISBN 978-7-5082-6388-5  }
