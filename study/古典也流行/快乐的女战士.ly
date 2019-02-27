\version "2.18.2"

songName = "快乐的女战士"
% \include "lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "选自歌剧《红色娘子军》"
  composer = \markup{ \column \right-align { "[中] 吴祖强等曲" "(1927- )"}}
  arranger = \markup{ \column \right-align { "[中] 周广仁编曲" "(1928- )"}}
}

keyTime = {
  \key g \major
  \time 2/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Animato Vivo" 4=108
  \override Hairpin.to-barline = ##f
  
  d8-.-4\mf d-. d-. b16-2( d |
  b8-.-2) g-.-1 g-.-3 d-.-1 |
  d'8-.-4 d-. d-. b16-2( d-4 |\break
  
  b8-.-2) g-.-1 g-.-3 d-.-1 |
  b'8-.-3 b-.-2 e-.-5 b-.-2 |
  d4-1( \acciaccatura cis'8 d4) |
  b,8-.-3 b-.-2 e-.-5 b-.-2 |\break
  
  d4-1( \acciaccatura cis'8 d4) |
  d,8-.-4 d-. d-. b16( d |
  b8-.) g-. g-.-3 d-.-1 |
  d'8-.-4 d-. d-. b16( d |\break
  
  b8-.) g-. g-.-3 d-.-1 |
  g8-.-2 g-.-1 d'-.-5 d-. |
  b2 |
  g8-.-2 g-.-1 d'-.-5 b-.-3 |
  g4( \acciaccatura fis'!8 g4) |
  
  |\bar "|."
}

lower_one = { g8-. [ b-. d,-. b'-.] }
lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  g'8-.-2[ b-.-1 d,-.-5 b'-.-1] |
  g8-.-2[ b-. d,-. a'-.] | % 第4个音符是不是b?
  g8-.-2[ b-. d,-. b'-.] |\break
  
  \lower_one |
  \lower_one |
  \lower_one |
  \lower_one |\break
  
  \lower_one |
  \lower_one |
  \lower_one |
  \lower_one |\break
  
  \lower_one |
  \lower_one |
  \lower_one |
  g8-. b-. d,4-- |
  g4( g,) |\bar "|."
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
