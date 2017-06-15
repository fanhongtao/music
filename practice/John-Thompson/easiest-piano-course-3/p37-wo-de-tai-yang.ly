\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo "Allegro moderato 中速的快板"
  \override Hairpin.to-barline = ##f
  
  \partial 2. c4-4\mf c b-3 |
  g2-1 g |
  r4 b-4 b a-3 |
  f1-1 |\break
  
  r4 b-4 b a |
  f2 f |
  r4 d-1(\< e-2 f-3 |
  g1\!) |\break
  
  r4 g-2\> g g |
  aes1\!\p |
  r4 f(\< c'\! aes\> |
  g1\!) |\break
  
  r4 e-3(\< d c |
  g'1\!) |
  r4 e-3( d c |
  c1) |
  r4 \bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \dynamicUp
  
  \partial 2. r4 r2 |
  r4 c_5( e_4 g_2 |
  c_1) r4 r2 |
  r4 c,_5( f_3 g_2 |\break
  
  b4) r4 r2 |
  r4 c,( f g |
  b4) r4 r2 |
  r4 c,_5( e_4 g |\break
  
  c4) r4 r2 |
  r4 c,_5( f_3 aes_2 |
  c4_1) r4 r2 |
  r4 c,_5( e_4 g |\break
  
  c4) r4 r2 |
  b,4_5 g'_1( f_2 g_1 |
  b,4_5) r4\> r2 |
  c4_5 g'_1( e_3 g\! |
  c,4) \bar"|."
}

\header {
  title = "我 的 太 阳"
}
\markup { \vspace #1 }

\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

