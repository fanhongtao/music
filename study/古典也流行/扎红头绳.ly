\version "2.18.2"

songName = "扎红头绳"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  arranger = "王震亚 改编"
}

keyTime = {
  \key g \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "中速  欢乐地" 4=96
  \override Hairpin.to-barline = ##f
  
  r8\mf <g a>_.-2-3 r q_. r q_. r q_. |
  d'8-4( a-1 d-4 e16-5 d c8 b a4) |\break
  
  d8-4( a-1 d-4 e16-5 d c8 b a4) |
  a4-1(\< d8-2 e-3\! a[ e-.]) d-.[ c-.] |
  a8-2([ b] d-5[ a-2] g-1[ fis-3] e[ d]) |\break
  
  d'8-4( a d e16 d c8 b a4) |
  d8-4( a d e16 d c8 b a4) |
  a4-1(\< d8-2 e-3\! a[ e-.]) d-.[ c-.] |\break
  
  a8-2([ b] d-5[ a-2] g-1[ fis-3] e[ d]) |
  d'8.-2\f( g16-5 e8 d) d-5([ a-2]) a-4([ g]|
  d2.-1)\> r4 \! |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  d8-.-3 a'-.-1 d,-. a'-. d,-. a'-. d,-. a'-. |
  d,8-.-3 a'-. d,-. a'-. a,-.-5 a'-.-1 a,-. a'-. |\break
  
  d,8-.-3 a'-. d,-. a'-. a,-. a'-. a,-. a'-. |
  r8 a-.-1 d,-.-3 a'-.-1 a,-5( a'-.-1) b-.-2 a-.-3 |
  \set fingeringOrientations = #'(left) r8 <fis-4 a-2>-. q-. q-. r <g-3 b-1>-. q-. q-. |\break
  
  d8-.-3 a'-.-1 d,-. a'-. a,-.-5 a'-.-1 a,-. a'-. |
  d,8-.-3 a'-.-1 d,-. a'-. a,-.-5 a'-.-1 a,-. a'-. |
  r8 a-.-1 d,-.-3 a'-. a,-5( a'-.-1) b-.-2 a-.-3 |\break
  
  r8 <fis-4 a-2>-. q-. q-. r <g-3 b-1>-. q-. q-. |
  r2 a,8-5 r <e'-4 g-2 a-1> r |
  <d-5 a'-1>8 a_._2 a_._1[ g_._2] d4_5 r |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
  }
  \midi { }
}
