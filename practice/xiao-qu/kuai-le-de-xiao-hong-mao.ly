\version "2.18.2"

\header {
  title = "快乐的小红帽"
  composer = "覃新莲"
}

upperOne = \relative c' { c8 d e f g4 e8 c }
upperTwo = \relative c' { c'4 a8^4[ f] g[ g] e4 }
upperThree = \relative c' { c8[ d e f] g[ e d c] }
upperFour = \relative c' { d4 e d g }
upperFive = \relative c' { d4 e c2 }
upperSix = \relative c' { c'4 a8^4[ f] g4 c, }
upperSeven = \relative c' { c'4 a8^4[ f] g4 e }

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  \upperOne |
  \upperTwo |
  \upperThree | \break
  
  \upperFour |
  \upperOne |
  \upperTwo | \break
   
  \upperThree |
  \upperFive |
  \upperSix | \break
  
  \upperSeven |
  \upperThree |
  \upperFour | \break
  
  \upperSix |
  \upperSeven |
  \upperThree |
  \upperFive \bar "|."  
}

lowerOne = \relative c { c8[_\markup { \rounded-box I } g' e g] }
lowerFour = \relative c { c8[_\markup { \rounded-box IV }a' f_2 a] }
lowerFive = \relative c { b8[_\markup { \rounded-box V } g' d g] }

lower = \relative c' {
  \clef bass
  \key c \major
  \time 4/4

  \lowerOne  \lowerOne |
  \lowerFour \lowerOne |
  \lowerOne  \lowerOne | \break
  
  \lowerFive \lowerFive |
  \lowerOne  \lowerOne |
  \lowerFour \lowerOne | \break
  
  \lowerOne \lowerOne |
  \lowerFive \lowerOne |
  \lowerFour \lowerOne | \break
  
  \lowerFour \lowerOne |
  \lowerOne  \lowerOne |
  \lowerFive \lowerFive | \break
  
  \lowerFour \lowerOne |
  \lowerFour \lowerOne |
  \lowerOne  \lowerOne |
  \lowerFive << c,2 e2 g2  >> \bar "|."
}

\markup { 在学校练琴的时候经常听到一个同学在练琴时偶尔弹这首。 }
\markup { 听多了某天自己也跟着记忆弹了一遍。那个同学说叫小红帽。 }
\markup { 感觉很简单但是感觉很清晰明亮很快乐。所以没事时候也会弹弹。 }
\markup { 所以我想把这份快乐分享给大家并在小红帽前面加个快乐。（要注意左手的旋律变化） }
\markup { \vspace #1 }

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup { \vspace #1 }
\markup { F.H.T. 注： }
\markup { 1、原谱出自： http://www.gangqinpu.com/pu/2010/8/6/129255145213151617/1.gif }
\markup { 2、我将左手的谱子分成三组，分别是：I、IV和V，并在低音谱上标注出来。 }