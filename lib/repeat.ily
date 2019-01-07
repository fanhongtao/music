\version "2.18.2"
% 提供最常用的 D.C. al Fine 或 D.S. al Fine 重复的方法
% LilyPond目前没有相应的解决方案，所以只能自己写一些代码片断来简化书写过程。


% 实现 D.C. al Fine 或 D.S. al Fine 的重复
% 代码来自 
%    http://lilypond.1069038.n5.nabble.com/D-C-al-fine-td186747.html
%
% 因为显示符号相对复杂，所以在函数中不提供显示符号的功能，而是在文件后面提供了一些显示的命令。
repeatfine =
#(define-music-function (parser location firstpart secondpart)
(ly:music? ly:music?)
   #{
     \repeat volta 2 {
       $firstpart
     }
     \alternative {
       {
         \set Score.repeatCommands = #'((volta #f))
         $secondpart
       }
       { }
     }
   #})


% 提供一些重复标记
% 如果显示的位置不合适，可以参考命令定义，在自己的代码中使用进行一些调整。
% 如:  \once \override Score.RehearsalMark.direction = #DOWN \dcalFine
symbol = #(define-music-function (parser location label) (markup?)
  #{
    % the align part
    \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
    % \once \override Score.RehearsalMark.direction = #DOWN
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    
    \once \override Score.RehearsalMark.font-size = #-1
    % \once \override Score.RehearsalMark.extra-offset = #'( -1 . -1 )
    \mark \markup { \italic { $label } }
  #})

dc = \symbol #"D.C."
ds = \symbol #"D.S."
dcalFine = \symbol #"D.C. al Fine"
dsalCoda = \symbol #"D.S. al Coda"
dsalFine = \symbol #"D.S. al Fine"
fine = \symbol #"Fine"
toCoda = \symbol \markup { { \lower #1 "To Coda " { \musicglyph #"scripts.coda"} } } 
