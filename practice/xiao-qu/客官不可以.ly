\version "2.18.2"

songName = "客官不可以"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "徐良 曲  陈小瓜 谱"
}

keyTime = {
  \key a \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=96
  \override Hairpin.to-barline = ##f
  
  r2 r8 e fis gis |
  gis8 a r a gis a b a |
  gis8 a r a gis a gis a |\break
  
  cis8 a r a cis a gis a |
  b8 gis r gis gis e fis gis |
  gis8 a r a gis a b a |\break
  
  gis8 a r a gis a gis a |
  cis8 a r a cis a gis a |
  e'8 e r e e e, fis gis |\break
  
  gis8 a r a gis a b a |
  gis8 a r a gis a b a |
  gis a r a b a gis a |\break
  
  b8 gis r4 r8 e fis gis |
  gis8 a r a gis a b a |
  gis8 a r a gis a b a |\break
  
  gis8 a r a b a gis a |
  b8 gis r2 r8 e, |
  b'8 cis! cis cis cis cis b16 b a8 |\break\pageBreak
  
  a8 cis! cis cis cis cis b16 b a8 |
  a8 d d d d d cis!16 cis b8 |
  b8 b b b cis b16 cis8 b a16 |\break
  
  b8 cis! cis cis cis cis b16 b a8 |
  a8 cis! cis cis cis cis b16 b a8 |
  a8 d d d d d cis!16 cis b8 |\break
  
  b8 b b b16 cis r8 e fis gis |
  gis8 a r a gis a b a |
  gis8 a r a gis a b a |\break
  
  gis8 a r a b a gis a |
  b8 gis r4 r8 e fis gis |
  gis8 a r a gis a b a |\break
  
  gis8 a r a gis a b a |
  gis8 a r a b a gis a |
  b8 gis r4 r2 |\break
  
  cis8 cis cis cis cis cis cis16 d cis8 |
  cis8 cis cis cis cis cis cis16 d cis8 |
  cis8 cis cis cis cis cis b16 a8. |\break\pageBreak
  
  b8 r r4 r2 |
  cis,!8 cis cis cis cis cis cis16 d cis8 |
  cis!8 cis cis cis cis cis cis16 d cis8 |\break
  
  cis!8 cis cis cis cis cis gis!16 a8. |
  b8 r2 e8 fis gis |
  gis8 a r a gis a b a |\break
  
  gis8 a r a gis a gis a |
  cis8 a r a cis a gis a |
  b8 gis r gis gis e fis gis |\break
  
  gis8 a r a gis a b a |
  gis8 a r a gis a gis a |
  cis8 a r a cis a gis a |\break
  
  e'8 e r e e r r4 |
  b,8 cis! cis cis cis cis b16 b a8 |
  a8  cis! cis cis cis cis b16 b a8 |\break
  
  a8 d d d d d cis!16 cis b8 |
  b8 b b b cis b16 cis8 b a16 |
  b8 cis! cis cis cis cis b16 b a8 |\break\pageBreak
  
  a8 cis! cis cis cis cis b16 b a8 |
  a8 d d d d d cis!16 cis b8 |
  b8 b cis! b16 cis r8 e fis gis |\break
  
  gis8 a r a gis a b a |
  gis8 a r a gis a b a |
  gis8 a r a b a gis a |\break
  
  b8 gis r4 r8 e fis gis |
  gis a r a gis a b a |
  gis a r a gis a b a |\break
  
  gis8 a r a b a gis a |
  b8 gis r4 r8 e fis gis |
  gis8 a r a gis a b a |\break
  
  gis8 a r a gis a b a |
  gis8 a r a b a gis a |
  b8 gis r4 r8 e fis gis |\break
  
  gis8 a r a gis a b a |
  gis8 a r a gis a b a |
  gis8 a r a b a gis a |\break\pageBreak
  
  b8 gis r4 r8 e fis gis |
  gis8 a r a gis a b a |
  gis8 a r a gis a b a |\break
  
  gis8 a r a b a gis a |
  b8 gis r4 r8 e fis gis |
  gis8 a r a gis a b a |\break
  
  gis8 a r a gis a b a |
  cis8 a r a b a gis a |
  b8 gis r4 r8 e fis gis |\break
  
  gis8 a r a gis a b a |
  gis8 a r a gis a gis a |
  cis8 a r a cis a gis a |\break
  
  b8 gis r gis gis e fis gis |
  gis8 a r a gis a b a |
  gis8 a r a gis a gis a |\break
  
  cis8 a r a cis a gis a |
  e'8 e r e e e, fis gis |
  a8 r r4 r2 |\bar "|."
}

lower_a = \relative c { a'8[ <cis e>-.] a[ q-.] a[ q-.] a[ q-.] }

fourTimes = #(define-music-function (parser location part) (ly:music?)
   #{
     \repeat unfold 4 { $part }
   #})

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  R1 |
  \lower_a | % 使用预定义。缺点是：在PDF中点击音符时，不能定位到本行，而是定位到预定义的位置。 应该避免这种写法。
  fis8[ <a cis>-.] fis[ q-.] fis[ q-.] fis[ q-.] |\break % 手工写每个音符。缺点是写得太多。
  
  \repeat unfold 4 { d8[ <fis a>-.] } | % 使用 \repeat 来简化
  \fourTimes { e8[ <gis b>-.] } | % 使用自定义函数，再次减少书写量
  \fourTimes { a8[ <cis e>-.] } |\break % 本行的功能和 \lower_a 相同，但更方便后期维护
  
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |\break
  
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |\break
  
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |\break
  
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |\break
  
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |\break
  
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |\break
  
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |\break
  
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |\break
  
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |\break
  
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |\break
  
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |\break
  
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |\break
  
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |\break
  
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |\break
  
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |\break
  
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |\break
  
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |\break
  
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |\break
  
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |\break
  
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |\break
  
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |\break
  
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |\break
  
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |\break
  
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |\break
  
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |\break
  
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |
  \fourTimes { d,8[ <fis a>-.] } |\break
  
  \fourTimes { e8[ <gis b>-.] } |
  \fourTimes { a8[ <cis e>-.] } |
  \fourTimes { fis,8[ <a cis>-.] } |\break
  
  \fourTimes { d,8[ <fis a>-.] } |
  \fourTimes { e8[ <gis b>-.] } |
  R1 |\bar "|."
}

\score {
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
  }
  \midi { }
}

\markup { \override #'(font-name . "楷体") {
  原谱来自：
  \with-url #"http://www.gangqinpu.com/html/15143.htm" {
    虫虫钢琴（http://www.gangqinpu.com/html/15143.htm）
  }
} }

% 左手实际上是以下内容的反复循环：
% 
%  \fourTimes { a8[ <cis e>-.] } |
%  \fourTimes { fis,8[ <a cis>-.] } |
%  \fourTimes { d,8[ <fis a>-.] } |
%  \fourTimes { e8[ <gis b>-.] } |


