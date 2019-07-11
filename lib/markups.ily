\version "2.18.2"

%%%%%%%
% 定义一些常用的 markup
% 

atempo = \markup { \italic { "a tempo" } }
crescendo  = \markup { \italic { "cresc." } }

% 系统中提供了 \dim 
% 但是会带有 ... ，如果想要去掉，需要设置
%  \override DynamicTextSpanner.style = #'none
% 所以这里定义一个 dimin ，命名来自　http://lsr.di.unimi.it/LSR/Snippet?id=935
dimin = \markup { \italic { "dim." } }

diminuendo = \markup { \italic { "dimin." } }

dolce = \markup { \italic { "dolce" } }

rit = \markup { \italic "rit." }
pocof = \markup { \italic { "poco f" } }
pocorit = \markup { \italic { "poco rit." } }


%
% 带圈的指法 ( rounded box finger ): 
% 用于记录 钢琴老师 在谱子上添加的指法。
% 通过看指法有无圈，来区分是老师标注的指法 还是 原谱标注的指法。
rfinger = #(define-music-function (parser location label) (markup?)
  #{
    \finger\markup { \rounded-box { $label } }
    % 如果不想显示 round finger，可以将上一行注释掉，然后使用下一行。
    % \finger ""
  #})
