# 1 ly文件结构


> 完整的介绍参见： [Input structure](http://lilypond.org/doc/v2.22/Documentation/notation/input-structure)

这里简单说明一下：

```
\version "2.18.2"
\header { }   % 可以有零个或多个 header
\book { ... } % 可以有零个或多个 book
\book { % 每个 \book 内可以有多个 \score
  \score {  }
  \score {  }
}

\score {  } % 顶层的 \score ，系统会为其归属于一个不可见的 \book 中
```

`\score` 的结构：

```
\score {
  { c'4 a b c' }
  \header { }
  \layout { }
  \midi { }
}
```

* Every \book block creates a separate output file (e.g., a PDF file). If you haven’t explicitly
added one, LilyPond wraps your entire input code in a \book block implicitly.
* Every \score block is a separate chunk of music within a \book block.
* Every \layout block affects the \score or \book block in which it appears – i.e., a \layout block inside a \score block affects only that \score block, but a \layout block outside of a \score block (and thus in a \book block, either explicitly or implicitly) will affect every \score in that \book.

> [Introduction to the LilyPond file structure](http://lilypond.org/doc/v2.22/Documentation/learning/introduction-to-the-lilypond-file-structure)

* 一个 .ly 文件中，可以有多个 `\book` 。如果没有显式使用 `\book` 命令，则认为所有的内容都归属于同一个 `\book`。
* 一个 `\book` 中可以有多个 `\score`
* `\score` 可以用于生成 PDF （使用 `\layout` 命令）或/和 midi （使用 `\midi` 命令）。

# 2 常见的写法

## 2.1 钢琴谱

简单的钢琴谱，可以采用 [Solo piano](http://lilypond.org/doc/v2.22/Documentation/learning/solo-piano)。

```
\version "2.18.2"

upper = \relative c'' {  % 变量 upper, 定义高音谱
  \clef treble           % 高音谱号
  \key c \major          % 调号。缺省值为 C \major
  \time 4/4              % 节拍。缺省值为 4/4

  a4 b c d               % 具体的音符
}

lower = \relative c {    % 变量 lower, 定义低音谱
  \clef bass
  \key c \major
  \time 4/4

  a2 c
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
```

简单解释：

* 变量 `upper` 定义了高音谱相关的内容。
* 变量 `lower` 定义了低音谱相关的内容。
* `\score` 使用前面定义的变量来绘制。
* `\new Staff = "upper" \upper`
  * `\new Staff = "upper"` 定义一个名为 `upper` 的 `Staff`，
  * `\upper` 表示引用变量 `upper` 的值。即相当于将定义变量时，等号右边的内容直接写在这里。
  * 给 `Staff` 命名，是为了实现“跨越”时能够指定跨越到那个地方。样例见 [p37-巨人的脚步.ly](../practice/John-Thompson/easiest-piano-course-2/p37-巨人的脚步.ly)，关键字：`\change Staff`。
  * 如果乐谱比较简单，不涉及“跨越”，那么可以不对 `Staff` 命名。简写为：`\new Staff \upper`
* 将各谱表具体的内容先定义成变量，在 `\score` 中引用。这种分离的方法，使文件的结构清楚，比较好理解。
* 特别的，当 `\score` 输出的 `\layout` 和 `\midi` 不一致时，分离的写法不仅是清楚，更是复用所必要的。样例见 [p10-在堤岸上.ly](../practice/John-Thompson/easiest-piano-course-3/p10-在堤岸上.ly)（乐曲片段重复）、[p30-仙女的竖琴.ly](../practice/John-Thompson/modern-course-1/p30-仙女的竖琴.ly)（“琶音”(arpeggio)`\keepWithTag`）。

## 2.2 我的模板

在使用 LilyPond 记录乐谱的过程中，将一些我经常用到的结构写入 [template.ly](../template.ly)。

## 2.3 更多其它的模板

见 [Templates](http://lilypond.org/doc/v2.22/Documentation/learning/templates)
