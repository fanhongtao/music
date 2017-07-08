\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P42

\include "../../../lib/arrows.ily"

upper_hand = \relative c'' {
  \clef treble
  \key a \major
  
  s4 a4_1 b_2 cis_3 \bar "" d_4 e_5 \bar "||"
}

lower_hand = \relative c {
  \clef bass
  \key a \major
   
  <\parenthesize gis'>4_\markup {
    \translate #'(0 . 3)
    \combine
      \arrow #"closed" ##f #Y #UP #3 #0.14
      \translate #'(0 . -3)
      \draw-line #'(4 . 0)
    \vspace #1
    左手扩展的手位
  }
  a4_5 b_4 cis_3 \bar "" d_2 e_1 \bar "||"
}

\markup {
  \fill-line {
    \hspace #1
    \column {
      弹乐曲之前，先练左手的和声形式：
      \score {
        \relative c {
          \clef bass 
          \key a \major
          <a'_5 cis_3 e_1>4
          s
          << e'_1 d_2 gis,_5-. >> \bar "||"
        }
        \layout {
          \context {
            \Staff
            \remove "Time_signature_engraver"
          }
        }
      }
    }
    \hspace #2
    \column {
      \score {
        \new GrandStaff <<
          \new Staff = "upper" \upper_hand
          \new Staff = "lower" \lower_hand
        >>
        \layout {
          \override Staff.TimeSignature #'stencil = ##f
        }
      }
    }
    \hspace #1
  }
}

upper = \relative c'' {
  \clef treble
  \key a \major
  \time 4/4
  \numericTimeSignature
  \tempo "M.M. " 4=72
  
  \partial 2 e8-5\mf( d-4 cis-3 b-2 |
  a4-1_.) a_. b-2-. b-. |
  a2-1 e'8-5\p( d-4 cis-3 b-2 |
  a4-1_.) a_. b-2-. b-. |
  a2-1 a8-1(\< b-2 cis-3 d-4\! |\break
  
  e2-5) a,8-1\p( b-2 cis-3 d-4 |
  e2-5) a,8-1(\< b-2 cis-3 e-5 |
  d4-4-.\f) d-. cis-3-. cis-. |
  b2-2 e8-5\mf( d-4 cis-3 b-2 |\break
  
  a4-1_.) a_. b-2-. b-. |
  a2-1 e'8-5\p( d-4 cis-3 b-2 |
  a4-1_.) a_. b-2-. b-. |
  a2-1 a8-1(\< b-2 cis-3 d-4\! |\break
  
  e2-5) a,8-1\p( b-2 cis-3 d-4 |
  e2-5) d8-4\mf( cis-3 b-2 a-1 |
  b4-2-.) d-4-. b-2-. cis-3-. |
  a2-1 \bar"|."
}

lower = \relative c {
  \clef bass
  \key a \major
  \time 4/4
  \numericTimeSignature
  \dynamicUp
  
  \partial 2 r2 |
  <a'_5 cis_3 e_1>4-. r << e'_1 d_2 gis,_5-. >> r |
  <a_5 cis_3 e_1>2 r |
  <a_5 cis_3 e_1>4-. r << e'_1 d_2 gis,_5-. >> r |
  q2 r |\break
  
  cis4_3( a_5) r2 |
  cis4_3( a_5) r2 |
  b4_4-. b-. a_5-. a-. |
  e'2_1 r |\break
  
  <a,_5 cis_3 e_1>4-. r << e'_1 d_2 gis,_5-. >> r |
  <a_5 cis_3 e_1>2 r |
  <a_5 cis_3 e_1>4-. r << e'_1 d_2 gis,_5-. >> r |
  <a_5 cis_3 e_1>2 r |\break
  
  cis4_3( a_5) r2 |
  cis4_3( a_5) r2 |
  d4_2-. b_4-. d_2-. e_1-. |
  <a,_5 cis_3>2 \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "骑士和女士"
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

\markup { 注意： 在代码中使用了两种不同的方式实现不显示 TimeSignature }
