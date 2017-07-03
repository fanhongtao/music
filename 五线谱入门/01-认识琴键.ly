\version "2.18.2"

\include "../lib/pianokeys.ly"

\markup { \abs-fontsize  #16 "1. 音名与唱名" }
\markup { \vspace #1 }

\markup { 音乐中所使用的音乐音名，只有七个，即：C、D、E、F、G、A、B。 }
\markup { 音除了音名之外，还有唱名（多在唱歌时使用）：do、 re、 mi、 fa、 sol、 la、 si }
\markup { 音名 和 唱名 一一对应，即：}
\markup { \halign #-2
  \column {
    \line { C 等于 do }
    \line { D 等于 re }
    \line { E 等于 mi }
    \line { F 等于 fa }
    \line { G 等于 sol }
    \line { A 等于 la }
    \line { B 等于 si }
  }
}

\markup { \vspace #1 }
\markup { \abs-fontsize  #16 "2. 钢琴上的键" }
\markup { \vspace #1 }

\markup { 七个音名所代表的音，在钢琴上的位置如下图所示：}
\markup {
  \combine 
    \halign #-1.05 \raise #0.5 "C D E F G A B"
    \groupkeys #'2.2 #'10 
}
\markup { \vspace #1 }
\markup { 以七个音为一组，每组有7个白键，5个黑键。一个标准的钢琴琴键共有7个完整的组。}
\markup { 最左边还有两个白键（及一个黑键）, 最右边还有一个白键。 所以钢琴上一共有: }
\markup { \halign #-2
  \column {
    \line { 白键: 2 + 7*7 + 1 = 52 个 }
    \line { 黑键: 1 + 7*5 = 36 个 }
  }
}
\markup { 所以，标准钢琴共有: 52 + 36 = 88 个 琴键。如下图： }
\markup {
  \combine 
    \halign #-58.5 \raise #0.5 "C"
    \fullkeys #'2 #'10 
}
\markup { 上图中标有“C”的那个键，因为是位于钢琴的中间的C，又被称为“中央C” }
\markup { \vspace #1 }
\markup { 钢琴的琴键包括白键和黑键。 在相邻的两个白键之间，有的有黑键，有的没有。因而形成钢琴的黑键有的两个 }
\markup { 一组，有的三个一组。钢琴琴键的这种排列次序含有深刻意义，它使C、D、E、F、G、A、B七个音在键盘上 }
\markup { 的位置，没有一个是相同的。如：在两个黑键中间的白键，一定是D；D左边的白键，就是C；D右边的白键， }
\markup { 就是E。靠近三个黑键的四个白键，从左到右依次是F、G、A、B。在钢琴键盘的相应位置上，五十二个白键循 }
\markup { 环使用着这七个音名，固定不变。所不同的只是有高有低而已。 }

\markup { \vspace #1 }
\markup { \abs-fontsize  #16 "3. 全音和半音" }
\markup { \vspace #1 }

\markup { 在钢琴的键盘上，包括黑键在内，相邻的两琴键，都构成“半音”；隔开一个琴键的两个键，都构成“全音”。因此，} 
\markup { 在 C、D、E、F、G、A、B 七个音中，除了E-F为半音外，其余相邻两音都构成全音。所有B到右边的C也都 }
\markup { 是“半音”关系。即：}
\markup { \halign #-2
  \column {
    \line { C - D 全音 }
    \line { D - E 全音 }
    \line { E - F 半音 }
    \line { F - G 全音 }
    \line { G - A 全音 }
    \line { A - B 全音 }
    \line { B - C 半音 }
  }
}
\markup { 可以简记为“全全半，全全全半”。}
