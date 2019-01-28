\version "2.18.2"
\paper  {
  #(define fonts
    (make-pango-font-tree
       "楷体" ;; "Century Schoolbook L"
       "sans-serif" "monospace" (/ staff-height (* 20 pt))))
}

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

\score {
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
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

\markup { 参考：}
\markup {
  \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/file-structure" {
  *  File structure
  } - 理解 ly 文件的格式
}
\markup {
  \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/creating-titles-headers-and-footers#titles-explained" {
   * Titles explained 
  } - 有多个 Title 需要显示
}
\markup {
  \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/creating-titles-headers-and-footers#default-layout-of-bookpart-and-score-titles" {
  *  Default layout of bookpart and score titles
  } - Header中的变量
}
\markup {
  \with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/custom-titles-headers-and-footers#custom-layout-for-headers-and-footers" {
  *  footer
  } - 自定义 footer 
}
