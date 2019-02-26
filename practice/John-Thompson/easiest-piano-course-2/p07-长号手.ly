\version "2.18.2"
% 《约翰•汤普森 简易钢琴教程 2》 P07

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \numericTimeSignature
  
  e,1-3 |
  e1 |
  e1 |
  <d f>1-2-4 | \break
  
  q1 |
  q1 |
  q1 |
  e1 |
  e1 |
  e1 | \break
  
  e1 |
  q1 |
  q1 |
  q1 |
  q1 |
  e1 |\bar"|."
}

leftSnippet = { c8 c b4 a g }

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \numericTimeSignature

  c'8_1 c b4_2 a_3 g_4 |
  \leftSnippet |
  \leftSnippet |
  \leftSnippet |\break
  
  \leftSnippet |
  \leftSnippet |
  \leftSnippet |
  \leftSnippet |
  \leftSnippet |
  \leftSnippet |\break
  
  \leftSnippet |
  \leftSnippet |
  \leftSnippet |
  \leftSnippet |
  \leftSnippet |
  c1 |\bar"|."
}


\paper {
  print-all-headers = ##t
}

\header {
  title = "八 分 音 符"
  subtitle = "四四拍子"
}
\markup { \vspace #1 }

\score {
  \header {
    title = "长号手"
    subtitle = ##f
  }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markuplist {
  注：1、高音谱第4小节是“双音”，下面的D叫“下方音”，上面的F叫“上方音”。
}

% 显示多 Title 相关知识，参考 
%   http://lilypond.org/doc/v2.18/Documentation/notation/creating-titles-headers-and-footers
