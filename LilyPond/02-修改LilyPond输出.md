# 1 基本概念

## 1.1 Context 的概念

Contexts 的概念见：
* [Contexts explained (in Learning Manual)](http://lilypond.org/doc/v2.18/Documentation/learning/contexts-explained)
* [Contexts explained (in Notation Reference)](http://lilypond.org/doc/v2.18/Documentation/notation/contexts-explained)

## 1.2 Engraver

Score 中的每个对象都由一个 Engraver 负责绘制。常见的有：

| Engraver | 功能 | 归属 context |
| --- | --- | --- |
| Clef_engraver | 绘制谱号（高低谱、低音谱） | Staff |
| Key_engraver | 绘制调号（即五线谱行首的升、降号） | Staff |
| Metronome_mark_engraver | 绘制速度 | Score |
| Note_heads_engraver  | 绘制五线谱的符头 | Voice| 
| Stem_engraver  | 绘制五线谱的符干 | Voice |

* 通过 [Engravers and Performers](http://lilypond.org/doc/v2.18/Documentation/internals/engravers-and-performers) 查看每个 Engraver 的具体功能 及 其归属 (如： Metronome_mark_engraver is part of the following context(s): Score. )。
* 每个 Engraver 会创建一个 Layout 对象，通过 [All layout objects](http://lilypond.org/doc/v2.18/Documentation/internals/all-layout-objects) 查看 Layout 对象的具体描述。


知道了这些，有什么用？比如：

* 我们想要删除“调号”

调号对应 [Key_engraver](http://lilypond.org/doc/v2.18/Documentation/internals/key_005fengraver) ，可以考虑删除 Key_engraver，

```
\new Staff = "treble" \with {
  \remove "Key_engraver"
} {
  c4 d e f g
}
```

或者删除 Key_engraver 所创建的 [KeySignature](http://lilypond.org/doc/v2.18/Documentation/internals/keysignature)

```
\new Staff = "treble" \with {
  \omit KeySignature
} {
  c4 d e f g
}
```

* 想要修改速度提示信息的显示位置

先找到 [Metronome_mark_engraver](http://lilypond.org/doc/v2.18/Documentation/internals/metronome_005fmark_005fengraver)，再找到它所创建的 Layou 对象 [MetronomeMark](http://lilypond.org/doc/v2.18/Documentation/internals/metronomemark)，查看 MetronomeMark 有那些属性可以修改。如，修改 X-offset 

```
\once \override Score.MetronomeMark.X-offset = #6
```

> 参考 [Engravers explained](http://lilypond.org/doc/v2.18/Documentation/learning/engravers-explained)


# 2 如何修改

参考： 
> [Modifying context properties](http://lilypond.org/doc/v2.18/Documentation/learning/modifying-context-properties)
> [Changing context default settings](http://lilypond.org/doc/v2.18/Documentation/notation/changing-context-default-settings)
> [Modifying properties](http://lilypond.org/doc/v2.18/Documentation/notation/modifying-properties.en.html)

## 2.1 使用 \set 或 \override 命令修改

命令格式：
```
\set ContextName.propertyName = #value
```

The \set and \unset commands are used to change values for context properties. The \override and \revert commands are used to change values for grob properties. 

## 2.2 创建 context 时通过 \with 指定

context 对象的属性在创建 context 时，就会被赋值，所以可以考虑在创建时，通过 `\with` 语句设置属性。

格式为：

```
\new ContextName \with {
   propertyName = #value
   ... % 可以有设置多个属性
} {
  % 正常的创建代码
}
```

如：

```
\new Staff \with { extraNatural = ##f } {
  \relative c'' {
    gisis4 gis aeses aes
  }
}
```

## 2.3 通过 \context 修改

如果是全局的修改，可以考虑在 \layout 中通过 \context 修改。

如

```
\score {
  <<
    \new Staff {
      \relative c'' {
        gisis4 gis aeses aes
      }
    }
    \new Staff {
      \relative c'' {
        gisis4 gis aeses aes
      }
    }
  >>
  \layout {
    \context {
      \Score extraNatural = ##f
    }
  }
}
```

这里的设置会对同一 score 中的两个 Staff 都起作用。

## 2.4 命令优先级

\set 命令（或 \override）优先级最高， \with 其次， \context 最低。

也就是说，如果使用多种方式设置了相同的属性：
* 有 \set（或 \override）命令时，以 \set（或 \override）为准。
* 没有 \set（或 \override）命令时，以 \with 为准。
