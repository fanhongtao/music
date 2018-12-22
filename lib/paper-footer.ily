\version "2.18.2"

%%%%%%%
% 实现为页面增加居中显示的“页脚”(footer)的功能。这里固定格式为：
%     歌曲名 - 页码
%
% 需要引用者先定义变量： songName
%
% 参考文档
%  http://lilypond.org/doc/v2.18/Documentation/notation/creating-titles-headers-and-footers
%  http://lilypond.org/doc/v2.18/Documentation/notation/custom-titles-headers-and-footers
%
% 本文件以 .ily 作为后缀，标明不能单独编译本文件。 参考 http://lilypond.org/doc/v2.18/Documentation/learning/style-sheets

\paper {
  print-page-number = ##f  % 自定义的页脚中已经有页码，所以不需要（在页眉上）打印页码
  oddFooterMarkup  = \markup {
    \column {
      \fill-line {
        \line {
          \songName - \fromproperty #'page:page-number-string
        }
      }
      % 下面两个 fill-line 拷贝自 LilyPond 自带的 ly/titling-init.ly
      % 以便和 LilyPond 原本的处理方式相同
      \fill-line {
        %% Copyright header field only on first page in each bookpart.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      \fill-line {
        %% Tagline header field only on last page in the book.
        \on-the-fly #last-page \fromproperty #'header:tagline
      }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}
