\version "2.18.2"
% 《钢琴基础教材 修订版 第一册》 P66

\header {
  title = "勇 敢 的 骑 士"
  composer = \markup{ \column { "舒     曼 曲" "作品68之8"}}
}

keyTime = {
  \key c \major
  \time 6/8
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegro"
  
  \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment 5/8) e,8-1-.\mf |
    a8-2-. e-. a-. c-4-. a-1-. c-. |
    e8-4(\sf c) f-. e-. c-. a-. |
    b8-4(\sf gis) c-. b-. gis-. e-. |
    a8-3-. e-. c'-. b-. r e,-. |\break
    
    a8-.-2 e-. a-. c-. a-.-1 c-. |
    e8-4(\sf c) f-. e-. c-. a-. |
    b8-4(\sf gis) c-. b-. gis-. e-. |
    a8-. e-. gis-. a-. r
  }
  r8 |
  <c, f a>8-.^\mf r r q-. r r |\break
  
  <f a>4 q8 q r r |
  <e g c>4 q8 q r r |
  <f a c>8-. a-. f-. <e g>-. r r |
  <c f a>8-. r r q-. r r |
  <f a>4 q8 q r r |\break
  
  <e g c>4 q8 q r r |
  <c f a>8-. r <c g'>-. f-. r \bar"||" e-.\mf |
  a8-. e-. a-. c-. a-. c-. |
  e8(\sf c) f-. e-. c-. a-. |
  b8(\sf gis) c-. b-. gis-. e-. |\break
  
  a8-. e-. c'-. b-. r e,-. |
  a8-. e-. a-. c-. a-. c-. |
  e8(\sf c) f-. e-. c-. a-. |
  b8(\sf gis) c-. b-. gis-. e-. |
  a-. e-. gis-. a-. r \bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment 5/8) r8 |
    \clef treble <a' c>8-. r r <a c e>-. r r |
    <a c e>4 <a d f>8 <a c e> r r |
    \clef bass <e gis b>4 <e a c>8 <e gis b> r r |
    <a c>8-. r q-. <e gis b>-. r r |\break
    
    \clef treble <a c>8-. r r <a c e>-. r r |
    <a c e>4 <a d f>8 <a c e> r r |
    \clef bass <e gis b>4 <e a c>8 <e gis b> r r |
    <a c>8-. r <e b'>-. <a c>-. r
  }
  c,8_5-._\f |
  f8_2-. c-. f-. a_1-. f_4-. a-. |\break
  
  c8_1(\sf a_4) d-. c_2-. a_4-. f_6-. |
  g8_2(\sf e_4) a_1-. g-. e-. c-. |
  f8-. c-. a'-. <c, g'>-. r c_5-. |
  f8_2-. c_5-. f-. a_1-. f_4-. a-. |
  c8_1(\sf a) d-. c-. a-. f_5-. |\break
  
  g8_2(\sf e_4) a-. g-. e-. c-. |
  f8-. c-. e-. f-. r \bar "||" r |
  \clef treble <a c>8-. r r <a c e>-. r r |
  <a c e>4 <a d f>8 <a c e> r r |
  \clef bass <e gis b>4 <e a c>8 <e gis b> r r |\break
  
  <a c>8-. r q-. <e gis b>-. r r |
  \clef treble <a c>8-. r r <a c e>-. r r |
  <a c e>4 <a d f>8 <a c e> r r |
  \clef bass <e gis b>4 <e a c>8 <e gis b> r r |
  <a c>8-. r <e b'>-. <a c>-. r \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
}

\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}