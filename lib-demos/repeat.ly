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
      a'2 b c d_\markup { 
        \translate #'(-4 . -3)
        \toCoda }
      \bar ":|."
      % \markup { \halign #-3 \toCoda}
      % \markup { \raise #-3 \toCoda}
      % \markup { \lower #3 \toCoda}
      % \markup { \translate #'(-4 . -5) \toCoda }
    }
    % \alternative { { e f } { e c_\fine \bar"|." } }
  }
  { 
    d c b c_\dcalFine \bar "||"
  }
}

\score {
  \music
}

\score {
  \unfoldRepeats \music
  \midi { }
}

