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

dolce = \markup { \italic { "dolce" } }

rit = \markup { \italic "rit." }
pocof = \markup { \italic { "poco f" } }
pocorit = \markup { \italic { "poco rit." } }
