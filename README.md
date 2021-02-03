This repo is used to recording the music notes that I'm practised in or interested in.

All the notes are written in [LilyPond](http://lilypond.org)'s formmat. Technically, they are TEXT files, so it's easy to maintain.

# 为什么选择 LilyPond

选择 LilyPond 来记录曲谱主要是基于：

* 使用文本方式记录，方便进行历史版本比较。
* LilyPond是免费软件。

# 使用 LilyPond

简单介绍：
* [使用 LilyPond 纪录乐谱](https://fanhongtao.github.io/2015/12/23/lilypond.html)
* [LilyPond技巧](LilyPond/README.md)

LilyPond除了可以生成 PDF文件之外，还可以生成 MIDI 文件，我的习惯是在弹奏前先听听MIDI文件，直到熟悉乐曲的效果。

# MIDI文件使用

## VST播放

在空闲时，我也经常将MIDI文件作为背景音乐进行播放，为了取得更好的视听效果，可以参考： [播放MIDI文件时指定VST音源](https://fanhongtao.github.io/2019/01/23/play-midi-with-vst.html) 。

VST音源需要自己去找，最直接的办法就是下载一个[Everyone Piano](http://www.everyonepiano.cn/Software.html)，然后使用软件自带的音源 `mdaPiano.dll`。 作为一个免费的音源， mda Piano 只能说比系统的MIDI声要好听一点，对它的希望值不要太高。

推荐两个使用比较简单的音源：

* [Addictive Keys](https://www.xlnaudio.com/products/addictive_keys/instrument/studio_grand)
* [Pianoteq](https://www.pianoteq.com/buy)

如果要买正版音源，可以考虑在“[黑五](https://baike.baidu.com/item/黑色星期五)”打折时购买。

## MIDI Player XG

推荐一个Web页面的MIDI播放器：[MIDI Player XG](https://logue.dev/smfplayer.js/)。

之所以推荐它，是因为它能够根据器乐（通道？）的不同，同时显示多个键盘界面。

比如：六手联弹曲目 [Pirates-of-the-Caribbean](practice/xiao-qu/Pirates-of-the-Caribbean.ly) 的MIDI，就可以通过它直观的看到每个演奏者弹的键，很好玩。

对于网速较慢或有断网恐惧症的用户，可以使用 `git` 下载我的[离线版本](https://github.com/fanhongtao/MidiPlayers)。

