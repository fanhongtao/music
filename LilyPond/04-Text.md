
> Text相关的内容参考 [Text](http://lilypond.org/doc/v2.18/Documentation/notation/text) 、 [A.10 Text markup commands](http://lilypond.org/doc/v2.18/Documentation/notation/text-markup-commands) 和 [A.11 Text markup list commands](http://lilypond.org/doc/v2.18/Documentation/notation/text-markup-list-commands)

# 1 直接添加Text

如果增加简单的文字，可以直接将相应的文字写在音符后面

```
\relative c'' { a8^"pizz." g f e a4-"scherz." f }
```

# 2 markup命令

## 2.1 markup 简单用法

对于较复杂的**文字**（如：要设置字体、颜色等）或**图形**，可以使用 `\markup` 命令。例如：

```
\relative c'' { a8^\markup { \italic pizz. } g f e }
```

## 2.2 修改 markup 位置

在 `\markup` 命令中，可以通过子命令修改最终显示的位置：
* `\raise` : 向上移动。如：\raise #2 表示向上移动2个位置
* `\lower` : 向上移动。如：\lower #3 表示向下移动3个位置
* `\translate` : 。如：\translate #'(5 . 3) 表示移动到坐标 (5, 3) 的位置。第一个数是 X 坐标，正数表示向右移，负数表示向左移；第二个数是 Y 坐标，正数表示向上移，负数表示向下移。**注意：这里的是相对于 surroundings 的相对坐标。并且不管数字多大（小）都不能实现跨五线谱（Stave）。**

## 2.3 postscript 子命令

有些情况下，需要实现跨五线谱（Stave）的文字或图形，这时，可以使用 `\postscript` 子命令。如在[《我和我的祖国(学员版)-黄岑》](../collection/我和我的祖国(学员版)-黄岑.ly) 中绘制一个括号。

Post Script采用操作数在前，操作符在后的结构。因为这样相当于对操作符的后续编历，大大减少语法解析的难度。操作数按顺序压栈，操作符则从栈顶取出对应数量的操作数进行操作。Post Script采用的坐标系以左下角为原点，水平向右为x轴正方向，水平向左为y轴正方向。 

Post Script画线是用行走的图龟描述。常用命令：
* `x y moveto` : 图龟移到点(x, y)
* `x y lineto` : 图龟由所在点构造线段路径到点(x, y)
* `x, y, r, arc1, arc2 arc` : 构造以(x, y)为圆心，以r为半径，半径辐角从arc1到辐角arc2的圆弧路径
* `x1, y1, x2, y2, x3, y3 curve` : 以图龟当前位置, (x1, y1), (x2, y2), (x3, y3)四点为控制点构造三次Bezier曲线路径
* `stroke` : 用当前的线宽和颜色
* `num setlinewidth` : 设置画线宽度为num

参考：[百度百科: PostScript](https://baike.baidu.com/item/PostScript)

如果Post Script命令较少，可以直接写在 `\markup` 中，如：

```
c^^\markup{\postscript #"0.2 setlinewidth 3 9.2 moveto 4 9.2 lineto 4 -1.4 lineto 3 -1.4 lineto stroke" }
```

如果Post Script命令较多，从方便维护的角度，应该将Post Script命令单列出来，并且每行仅写一个Post Script命令。如：
```
% 定义PostScript命令串
ringsps = #"
  0.15 setlinewidth
  0.9 0.6 moveto
  0.4 0.6 0.5 0 361 arc
  stroke
  1.0 0.6 0.5 0 361 arc
  stroke
"

% 在 markup 中使用预先定义的串
rings = \markup {
  \with-dimensions #'(-0.2 . 1.6) #'(0 . 1.2)
  \postscript #ringsps
}

\relative c'' {
  c2^\rings
  a2_\rings
}
```
