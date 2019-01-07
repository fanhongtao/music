\version "2.18.2"

songName = "Repeat demoes"
\include "../lib/paper-footer.ily"
\include "../lib/repeat.ily"

\header {
  title = \songName
}

\markup { \vspace #3 }
keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

%% example
% repeatfine 里又嵌套有 repeat
music = \relative {
  \override Score.RehearsalMark.direction = #DOWN % 显示在五线谱下方
  \repeatfine {
    \repeat volta 2 {
      a'2 b c d % \toCoda 
    }
    \alternative {
      { e f }
      { e c \once \override Score.RehearsalMark.extra-offset = #'( -1 . -1 ) \fine\bar"|." }
    }
  }
  { 
    d c b c\dcalFine
  }
}

\score {
  \music
}

\score {
  \unfoldRepeats \music
  \midi { }
}

