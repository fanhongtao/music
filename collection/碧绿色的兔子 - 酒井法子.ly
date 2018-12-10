\version "2.18.2"

\header {
  title = "碧绿色的兔子"
  subtitle = "演唱： 酒井法子"
}

keyTime = {
  \key es \major
  \time 4/4
  \numericTimeSignature
}

upper =  \relative d' {
  \clef "treble"
  \keyTime
  \tempo 4=80
  
  <d es g>8 g8 c8 es8 <d, f d'>8. c'16 ~ c8 bes8 | % 2
  <es, as c>8 c'8 <c, es as>4 <c es as>4 <bes d es g>8 g'8 | % 3
  <c, es f as>8. c'16 ~ c8 bes16 c16 bes4 <f c'>8 g8 | % 4
  <d es>4 <d es>4 es4 f8 g8 | % 5
  es4 ~ es16 g16 c16 es16 d4. c16 bes16 | % 6
  c4 es,16 as16 c16 es16 bes'4 r8 bes,8 | % 7
  <c as>8. es16 ~ es8 g8 <f bes,>4. d16 c16 | % 8
  f,2 r8 c'8 es8 f8 | % 9
  <g es>8 as8 g8 es16 f16 ~ f8 c4 c8 | % 10
  g'8 as8 g8 es16 f16 ~ f8 c4 g'8 | % 11
  f2 f8 d4 d8 ~ | % 12
  d16 c16 bes4. ~ bes8 c8 es8 f8 | % 13
  <g es>8 as8 g8 es16 f16 ~ f8 c4 c8 | % 14
  as'16 bes8 as16 ~ as8 g8 f8. es16 ~ es8 g8 | % 15
  f2 <f c>8 es8 f8 g8 | % 16
  c,4 <c, g'>4 <b g' b>8 d8 g8 es'16 f16 | % 17
  <g g,>8. <as as,>16 ~ ~ <as as,>8 <bes bes,>8 <bes d,>4. f16 g16 | % 18
  <as c,>8 <g bes,>8 <f as,>8 <g bes,>8 <es g,>4. es16 d16 | % 19
  <c es,>8. d16 ~ d8 es8 <es, bes'>4 es'8 g8 | \barNumberCheck #20
  <f c>4 es8 f16 g16 d4. es16 f16 | % 21
  <g bes,>8. as16 ~ as8 bes8 <bes d,>4. f16 g16 | % 22
  <as c,>8 <g bes,>8 <f as,>8 <g bes,>8 <es g,>4. es16 d16 | % 23
  <c es,>4. c8 <as' c,>4 <g bes,>4 | % 24
  <f as,>4 f,4 <d f>4 <c es bes'>8 <c f bes>8 | % 25
  <bes g'>8. as'16 ~ as8 bes8 <d, bes'>4. f16 g16 | % 26
  <c, as'>8 g'8 f8 g8 <c, es>4. es16 d16 | % 27
  c8. d16 ~ d8 es8 bes4 es8 g8 | % 28
  f4 es8 f16 g16 g,4. <g es'>16 <as f'>16 | % 29
  <g' bes,>8. as16 ~ as8 bes8 <bes d,>4. f16 g16 |
  <c, as'>8 <bes g'>8 <as f'>8 <bes g'>8 <g c es>4. es'16 d16 | % 31
  c4. c8 <c es as>4 g'4 | % 32
  <as, bes f'>4 f'4 <as, es'>4 d8 es8 
  c4. <f'' c>8 d2 \bar "|."
}

lower =  \relative c {
  \clef "bass"
  \keyTime
  
  c4 <g'' es c>4 <bes, bes,>4 <f' bes,>4 | % 2
  c,,8. as''16 r2 r8. c,,16 | % 3
  f4 <f'' es as,>4 <f es as,>8 c8 as8. bes,16 | % 4
  es,8 bes'8 g'2 <d f>8. g,16 | % 5
  c,16 g'16 c16 g'16 c4 as16 bes16 d16 f16 d16 f8 es,16 | % 6
  as,16 es'16 bes'16 c16 r2 r8 g,8 | % 7
  f8 es'8 as4 g,16 d'16 a'16 bes16 d16 f8. | % 8
  c,16 g'16 c16 d16 f16 d16 <g es>8 ~ ~ <g es>4. bes,,8 | % 9
  as8 es'8 c'8 g'8 ~ g4 c,,8. es16 | \barNumberCheck #10
  as,16 es'16 bes'16 c16 g'4 <g f>4 <g f>4 | % 11
  g,,8 d'8 a'8 <f' bes,>8 ~ ~ <f bes,>2 | % 12
  g,,8 d'16 a'16 bes16 d16 f8 ~ f2 | % 13
  f,,8 c'8 g'8 as8 es'8. g,16 es'8. g,16 | % 14
  f,8 c'8 as'8 es'8 ~ es4 es4 | % 15
  des,,8 as'8 f'8 f'8 r2 | % 16
  d,,8 c'4 d'16 f,16 g,4 f'8 f,8 | % 17
  es16 bes'16 f'16 g16 ~ g16 es'8 g,16 bes,16 f'16 c'16 d16 f16 bes8.
  | % 18
  f,,16 c'16 g'16 as16 es'4 c,16 g'16 c16 d16 es16 g16 bes,,8 | % 19
  as16 es'16 bes'16 c16 r16 f8 g16 g,,16 es'16 g16 bes16 es4 |
  \barNumberCheck #20
  a,,16 f'16 c'16 f16 ~ f4 b,,16 g'16 d'16 g16 d'16 g,16 g,,16 f16 | % 21
  es16 bes'16 f'16 g16 ~ g16 es'8 c'16 bes,,16 f'16 c'16 d16 f16 bes8.
  | % 22
  f,,16 c'16 g'16 as16 ~ as16 es'8 g,16 c,16 g'16 c16 d16 es16 g16
  bes,,8 | % 23
  as16 es'16 bes'16 c16 es8 g,,8 f8 c'8 as'8 c,8 | % 24
  bes8 as'8 es'8 c16 as16 bes,8 bes'16 bes,16 c8 d8 | % 25
  es,8 bes'8 g'16 c8 es16 bes,16 f'16 bes16 d16 bes,16 bes'8. | % 26
  f,16 c'16 f16 g16 as16 c8 g,16 c,16 g'16 c16 d16 es16 g8. | % 27
  as,16 es'16 as8 ~ as16 as8 es16 g,16 bes16 es16 g16 bes8. g16 | % 28
  a,16 f'16 a16 c,16 f16 c8. b16 g16 d16 b16 g16 d'16 g16 f16 | % 29
  es16 bes'16 es16 g16 bes16 c8 es16 bes,16 f'16 bes16 d16 bes,16 bes'16
  as16 bes16 | \barNumberCheck #30
  f,16 c'16 f16 g16 ~ g8. g,16 c,16 g'16 c16 d16 es16 g8. | % 31
  as,8 es'8 as8 g,8 f4 as'8 c,8 | % 32
  bes,8 as'8 es'8 as,8 f'4 f4 | % 33
  c,8 g'8 d'8 es8 bes'2
}


\markup { \vspace #1 }

% The score definition
\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {}
  \midi {}
}

\markup { 原谱来自：
  \with-url #"http://www.gangqinpu.com/html/24916.htm" {
    虫虫钢琴（http://www.gangqinpu.com/html/24916.htm）
  }
}
% 从 虫虫钢琴 下载 ove 格式的文件，导出为 MusicXML 格式，再导入到 Frescobaldi .
% 注意：导入时的 .xml 文件名只能是英文字母。
