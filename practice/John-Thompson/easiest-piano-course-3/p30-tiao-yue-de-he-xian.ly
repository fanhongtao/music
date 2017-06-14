\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  
  r4 <c,^1 e^3 g^5> q |
  r4 <c e g> q |
  r4 <f^1 a^3 c^5> q |
  r4 <f a c> q |\break
  
  r4 <g^1 b^3 d^5> q |
  r4 <g b d> q |
  r4 <c^1 e^3 g^5> q |
  r4 <c e g> q | \break
  
  c,2-1 e4-3 |
  g2.-5 |
  f2-1 a4-3 |
  c2.-5 |\break
  
  g2-1 b4-3 |
  d4-5 b g |
  c2.-4~ |
  c2. |\bar"|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  
  c2_5 e4_3 |
  g2._1 |
  f2_5 a4_3 |
  c2._1 |\break
  
  g2_5 b4_3 |
  d4_1 b g |
  \clef "treble" c2_5 e4_3 |
  g2._1 \clef "bass"|\break
  
  r4 <g,_1 e_3 c_5> q |
  r4 <g e c> q |
  r4 <c_1 a_3 f_5> q |
  r4 <c a f> q |\break
  
  r4 <d_1 b_3 g_5> q |
  r4 <d b g> q |
  r4 \clef "treble" <g e c> q |
  <g e c>2. |\bar"|."
}

\header {
  title = "跳跃的和弦"
}

\score {
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

