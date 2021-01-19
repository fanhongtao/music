\version "2.18.2"

songName = "歌 曲 名 称"
\include "lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "subtitle"
  subsubtitle = "Subsubtitle"
  instrument = "Violoncello e Basso"
  poet = "Poet"
  composer = "xxx 曲"
  meter = "meter"
  arranger = "xxx 改编"
  piece = "piece"
  opus = "opus"
}

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto" 4=108
  \override Hairpin.to-barline = ##f
  
  c4 d e f |
  g4 a b c |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  c4 d e f |
  g4 a b c |\bar "|."
}

text = \lyricmode {
  关 关 雎 鸠， | 
  在 河 之 洲。 |
}

\score {
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" { \new Voice = "singer" \upper }
    \new Lyrics \lyricsto "singer" \text
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
    \context {
      \Lyrics
      \override LyricText.font-name = #"楷体"
    }
  }
  % \midi { }
}

\score {
  \unfoldRepeats
  \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}

\markup { \override #'(font-name . "楷体") \column {
  \line { 参考: }
  \line { * \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/file-structure" {File structure} - 理解 ly 文件的格式 }
  \line { * \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/creating-titles-headers-and-footers#titles-explained" {Titles explained} - 有多个 Title 需要显示 }
  \line { * \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/creating-titles-headers-and-footers#default-layout-of-bookpart-and-score-titles" { Default layout of bookpart and score titles } - Header中的变量 }
  \line { * \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/custom-titles-headers-and-footers#custom-layout-for-headers-and-footers" { footer } - 自定义 footer }
} }

\markup { \vspace #1 }

\markup {  \override #'(font-name . "楷体") \column {
  \line { 常用技巧说明：}
  \line { * \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/inside-the-staff#fingering-instructions" {Fingering instructions} - 标注指法 }
  \line { * \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/formatting-text#text-alignment" {Text alignment} - 移动 markup 命令生成的文字 }
  \line { * \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/modifying-shapes" {Modifying shapes} - 变更 slur 曲线 }
  \line { * \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/aligning-objects" {Aligning objects} - 移动绘制的对象，如： \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/expressive-marks-attached-to-notes#dynamics" {Dynamics} }
} }
