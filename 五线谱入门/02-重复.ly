\version "2.18.2"

\layout { 
  ragged-right = ##f 
  indent = 0.2\cm
  \context { 
    \Score 
    barNumberVisibility = #all-bar-numbers-visible 
    % \override BarNumber.break-visibility = #all-visible
    \override BarNumber.break-visibility = #end-of-line-invisible
  } 
}

symbol = #(define-music-function (parser location label) (string?)
  #{
    \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
    %\once \override Score.RehearsalMark.direction = #DOWN
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.font-size = #1
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -9 )
    \mark \markup { \italic { $label } }
  #})

dc = \symbol #"D.C."
ds = \symbol #"D.S."
dcalFine = \symbol #"D.C. al Fine"
dsalCoda = \symbol #"D.S. al Coda"
dsalFine = \symbol #"D.S. al Fine"
fine = \symbol #"Fine"

melodyDC = \relative c' { R1 | R1 | R1 | R1\dc |\bar"||" }
\markup {
  \score {
    \melodyDC
    \layout { }
  }
}
\markup { \vspace #1 }
\markup { "D.C." (Da Capo)表示回到乐曲的第1小节。所以 }
\markup { 弹奏顺序： 1 → 2 → 3 → 4 → 1 → 2 → 3 → 4 }

\markup { \vspace #2 }

melodyDS = \relative c' { R1 | R1 |\mark \markup { \tiny \musicglyph #"scripts.segno" } R1 | R1\ds |\bar"||" }
\markup {
  \score {
    \melodyDS
    \layout { }
  }
}
\markup { \vspace #1 }
\markup { "D.S."(Dal Segno) 表示回到有 \tiny \musicglyph #"scripts.segno" 的地方。所以 }
\markup { 弹奏顺序： 1 → 2 → 3 → 4 → 3 → 4 }

\markup { \vspace #2 }

melodyDCalFine = \relative c' { R1 | R1\fine | R1 | R1\dcalFine |\bar"||" }
\markup {
  \score {
    \melodyDCalFine
    \layout { }
  }
}
\markup { \vspace #1 }
\markup { "D.C. al Fine" 表示回到乐曲的第1小节，然后在有 Fine 的地方结束。所以 }
\markup { 弹奏顺序： 1 → 2 → 3 → 4 → 1 → 2 }

\markup { \vspace #2 }

melodyDSalFine = \relative c' { R1 | R1 |\bar"||" \mark \markup { \tiny \musicglyph #"scripts.segno" } R1 | R1\fine | R1 | R1\dsalFine |\bar"||" }
\markup {
  \score {
    \melodyDSalFine
    \layout { }
  }
}
\markup { \vspace #1 }
\markup { "D.S. al Fine" 表示回有 \tiny \musicglyph #"scripts.segno" 的地方，然后在有 Fine 的地方结束。所以 }
\markup { 弹奏顺序： 1 → 2 → 3 → 4 → 5 → 6 → 3 → 4 }


\markup { \vspace #2 }

\pageBreak


melodyDSalCoda = \relative c' { 
  R1 | R1 |\bar"||" \mark \markup { \tiny \musicglyph #"scripts.segno" } R1 | R1 | R1 \mark \markup { \tiny \musicglyph #"scripts.coda" } | R1 | R1 |\break
  R1 | R1 | R1 |\bar"||" R1^\markup { \tiny \musicglyph #"scripts.coda" } | R1 | R1 | R1\dsalCoda |\bar"||" 
}
\markup {
  \score {
    \melodyDSalCoda
    \layout { }
  }
}

\markup { \vspace #1 }
\markup { "D.S. al Coda" 表示回有 \tiny \musicglyph #"scripts.segno" 的地方，然后在遇到 \musicglyph #"scripts.coda" 时，跳到后继的 \musicglyph #"scripts.coda" 的地方。}
\markup { 所以本首曲子先是从第1节弹到第14节，然后回到 Fine 处(第3节）开始弹奏， }
\markup { 在第5小节末尾（6小节开始）处，遇到了\musicglyph #"scripts.coda"，就跳到下一个\musicglyph #"scripts.coda" ，也就是第11节，所以从11节开始弹奏。}
\markup { 完整的弹奏顺序： }
\markup { 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → 10 → 10 → 12 → 13 → 14 -> }
\markup { 3 → 4 → 5 -> }
\markup { 11 → 12 → 13 → 14 }

\markup { \vspace #1 }
\markup { 注意： }
\markup { 1. 为了意思更清楚，有时会在第一个 \musicglyph #"scripts.coda" 前增加前缀 "To Coda"。 }
\markup { 2. 第二个 \musicglyph #"scripts.coda" 可以出现在 "D.S. al Coda" 之后。 如： }

toCoda = {
  % the align part
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT  
  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark.direction = #UP
  %prefered size
  \once \override Score.RehearsalMark.font-size = #-1
  \mark \markup { { \lower #1 "To Coda " { \musicglyph #"scripts.coda"} } } 
}

melodyDSalCoda-two = \relative c' { 
  R1 | R1 |\bar"||" \mark \markup { \tiny \musicglyph #"scripts.segno" } R1 | R1 | R1\toCoda | R1 | R1 |\break
  R1 | R1 | R1\dsalCoda |\bar"||" R1^\markup { \tiny \musicglyph #"scripts.coda" } | R1 | R1 | R1 |\bar"||" 
}

\markup {
  \score {
    \melodyDSalCoda-two
    \layout { }
  }
}
\markup { 完整的弹奏顺序： }
\markup { 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → 10 -> }
\markup { 3 → 4 → 5 -> }
\markup { 11 → 12 → 13 → 14 }


\markup { \vspace #2 }

melodyAlt = \relative c' { 
  \repeat volta 2 {
  R1 | R1 | R1 |
  }
  \alternative {
    { R1 | }
    { R1 | }
  }
  R1 |\bar"||" }
\markup {
  \score {
    \melodyAlt
    \layout { }
  }
}
\markup { \vspace #1 }
\markup { 完整的弹奏顺序： }
\markup { 1 → 2 → 3 → 4 → }
\markup { 1 → 2 → 3 → 5 → }
\markup { 6 }
