这里记录了 LilyPond 的一些特殊使用技巧。</br>
所列的文件都是在其它目录下实际有的文件，可以根据文件名来查找具体的出处。

 > 如果文件名后带有 “(log)” 字样，建议要查看一下原文件的提交记录。

| 文件名 | 展示的功能 |
| ------ | ---------- |
| [p05-捉人游戏.ly](practice/John-Thompson/easiest-piano-course-2/p05-捉人游戏.ly) (log) | 在 markup 中显示相连的8分音符. |
| [p06-穿过树林.ly](practice/John-Thompson/easiest-piano-course-2/p06-穿过树林.ly) | 不完全小节(upbeat or anacrusis) |
| [p09-十个小印第安人.ly](practice/John-Thompson/easiest-piano-course-2/p09-十个小印第安人.ly) | 歌词根据高音谱或低音谱的音符来排列 |
| [p11-钟声响了.ly](practice/John-Thompson/easiest-piano-course-2/p11-钟声响了.ly) | 升记号 (sharp pitch) |
| [p12-太阳升起.ly](practice/John-Thompson/easiest-piano-course-2/p12-太阳升起.ly) | 降记号 (flat pitch) |
| [p14-三只瞎老鼠.ly](practice/John-Thompson/easiest-piano-course-2/p14-三只瞎老鼠.ly) | 1. 连线 (tie)<br> 2. 全休止符 (Full measure rests)，即整小节休止<br> 3. 音符增加注释 |
| [p24-从前.ly](practice/John-Thompson/easiest-piano-course-2/p24-从前.ly) | 还原记号 (flat pitch) 及 在标题中显示特殊字符|
| [p33-会跳舞的熊.ly](practice/John-Thompson/easiest-piano-course-2/p33-会跳舞的熊.ly) | 1. 延长记号 (fermata)<br> 2. 双音 |
| [p34-“自新大陆”交响曲.ly](practice/John-Thompson/easiest-piano-course-2/p34-“自新大陆”交响曲.ly) (log) | 1. 低八度 (ottava bassa ??)<br> 2. simultaneous expression （多个音同时按下，如：双音）简写 |
| [p36-伦敦桥要塌了.ly](practice/John-Thompson/easiest-piano-course-2/p36-伦敦桥要塌了.ly) | 左手跨越的音符与右手原有音符符杆(stem)方向不同  |
| [p37-巨人的脚步.ly](practice/John-Thompson/easiest-piano-course-2/p37-巨人的脚步.ly)  (log) | 1. 乐曲中改变谱号(clef) <br> 2. 跨五线谱(stave) 的音符连线(glissando) |
| [p39-印第安鼓.ly](practice/John-Thompson/easiest-piano-course-2/p39-印第安鼓.ly) | 重音记号(accent) |
| [p04-旋律.ly](practice/John-Thompson/easiest-piano-course-3/p04-旋律.ly) | 乐句(phrase) |
| [p10-在堤岸上.ly](practice/John-Thompson/easiest-piano-course-3/p10-在堤岸上.ly) | 跳跃反复(Alternative endings) |
| [p11-日出.ly](practice/John-Thompson/easiest-piano-course-3/p11-日出.ly) | 渐强(crescendo)、渐弱(decrescendo) 记号 |
| [p13-黄鼠狼逃跑了.ly](practice/John-Thompson/easiest-piano-course-3/p13-黄鼠狼逃跑了.ly) | 歌词(lyrics)不占用整个 slur ，而是只对应一个音符 |
| [p30-仙女的竖琴.ly](practice/John-Thompson/modern-course-1/p30-仙女的竖琴.ly) (log) | midi 中“正确”记录“琶音”(arpeggio) |
| [p45-猫头鹰的问题.ly](practice/John-Thompson/modern-course-1/p45-猫头鹰的问题.ly) | midi 中“正确”记录连续多个 “渐弱记号”(decrescendo) |
| [p49-生日蛋糕.ly](practice/John-Thompson/modern-course-1/p49-生日蛋糕.ly) | 1. 在乐曲中间实现不完全小节(Time administration) <br> 2. D.S.(Dal Segno) al Fine ：再从 segno 记号开始弹到 Fine 终止 <br> 3. 音符带有括号 |
| [p50-爆玉米花的人.ly](practice/John-Thompson/modern-course-1/p50-爆玉米花的人.ly) | 1. Removing the key signature at the end of a line <br> 2. D.C.(Da Capo) al Fine ：再从乐曲的开始弹到 Fine 终止。|
| [p65-很久以前.ly](practice/John-Thompson/modern-course-1/p65-很久以前.ly) | markup 中显示 score |
| [p70-摩天大厦.ly](practice/John-Thompson/modern-course-1/p70-摩天大厦.ly) (log) | 使用 TextSpan 分类标注音符 |
| [p03-在阿尔卑斯山上.ly](practice/John-Thompson/modern-course-2/p03-在阿尔卑斯山上.ly) | 指定休止符(rest)在五线谱中的位置 |
| [p10-时辰之舞.ly](practice/John-Thompson/modern-course-2/p10-时辰之舞.ly) | 指法(Finger)的几种写法 |
| [p14-遥远的钟声.ly](practice/John-Thompson/modern-course-2/p14-遥远的钟声.ly) | 踏板(pedal) |
| [p20-带我回弗吉尼故乡.ly](practice/John-Thompson/modern-course-2/p20-带我回弗吉尼故乡.ly) | 只有一个音符的踏板(pedal)记号 |
| [p72-南泥湾.ly](practice/gang-qin-ji-chu/1/p72-南泥湾.ly) | Grace notes |
| [帕赫贝尔卡农.ly](practice/xiao-qu/帕赫贝尔卡农.ly) | 1. 隐藏小节线<br> 2. 一个2分音符对应两个踏板(pedal)记号<br> 3. 取巧的方法绘制跨五线谱(stave) 的连线(slur)。 |
