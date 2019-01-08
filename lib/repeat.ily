\version "2.18.2"
% 提供最常用的 D.C. al Fine 或 D.S. al Fine 重复的方法
% LilyPond目前没有相应的解决方案，所以只能自己写一些代码片断来简化书写过程。


% 实现 D.C. al Fine 或 D.S. al Fine 的重复
% 代码来自 
%    http://lilypond.1069038.n5.nabble.com/D-C-al-fine-td186747.html
%
% 因为显示符号相对复杂，所以在函数中不提供显示符号的功能，而是在文件后面提供了一些显示的命令。
%
% 已知Bug: 
%  1. 编译时会提示： warning: cannot end volta spanner ，不过不影响使用
%  2. 如果 firstpart 恰好是以一个 \repeat volta x 结尾，该 repeat 的重复小节线 ":|"  
%     会被替换成普通的竖线 "|" ，这时，需要手工指定 \bar ":|."
%  3. 如果 secondpart 恰好是以一个 \repeat volta x 开头，该 repeat 的重复小节线 "|:"
%     会被替换成普通的竖线 "|" ，这时，需要手工指定 \bar ".|:"
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
       {
         \set Score.repeatCommands = #'((volta #f))
       }
     }
   #})


% 提供一些重复标记
% 如果显示的位置不合适，可以参考 
%   http://lilypond.org/doc/v2.18/Documentation/notation/formatting-text#text-alignment 
% 中的例子，进行移动。
% 如:  \markup { \translate #'(-4 . -5) \toCoda }
% 
% Unlike text scripts, rehearsal marks cannot be stacked at a particular
% point in a score: only one RehearsalMark object is created.
% 前一版本使用 \mark \markup { ... } ，导致四手联弹曲子中只能显示一个 D.C. al Fine ，
% 所以现在将其定义为 \markup { ... }
#(define-markup-command (repeatSymbol layout props text) (markup?)
  (interpret-markup layout props
    #{
      \markup {
        \italic { $text }
      }
    #}))

dc = \markup \repeatSymbol #"D.C."
ds = \markup \repeatSymbol #"D.S."
dcalFine = \markup \repeatSymbol #"D.C. al Fine"
dsalCoda = \markup \repeatSymbol #"D.S. al Coda"
dsalFine = \markup \repeatSymbol #"D.S. al Fine"
fine   = \markup \repeatSymbol #"Fine"
toCoda = \markup \repeatSymbol { \lower #1 "To Coda " { \musicglyph #"scripts.coda"} }
