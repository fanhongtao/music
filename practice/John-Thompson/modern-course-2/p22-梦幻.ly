\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P22

songName = "梦  幻"
%\include "../../../lib/paper-footer.ily"

\header {
  title = \songName
}

keyTime = {
  \key aes \major
  \time 6/8
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andantino" 4=80
  \override Hairpin.to-barline = ##f
  %\override DynamicLineSpanner.staff-padding = #3
  
  \partial 8 f,8-4\mp |
  <c ees>4.-1-3~ q4 f8-4 |
  <des ees>4.-2-3~ q4 f8-4 |
  q4-2-3\< f8-1 g8-2[ aes-3 bes-4]\! |
  <aes c>4.-3-5~ q4 f8-4\mp |\break
  
  <c ees>4.-1-3~ q4 f8-4 |
  <des ees>4.-2-3~ q4 f8-4 |
  <des ees>4-2-3\< f8-1 g-2\! aes bes |
  <c, aes'>4.-1-3~\> q4\! r8 |\break
  
  <des' ees>4-2-3-\tweak Y-offset #-4 \p_\markup { \halign #-2 \italic { "poco rit." } } f8-1\> g-2 aes-3 bes-4 |
  <c, aes'>2.-1-3\! |
  \ottava #1 <c' aes'>4.-1-5\pp_\markup { \translate #'(3 . -2) \italic { "a tempo" } } \ottava #0 <c, aes'>4.-1-5 |
  <c, aes'>4.~ q4 \bar "|."
}

sustainTwo = \new Voice { s4\sustainOn s\sustainOff }

lower = \relative c {
  \clef bass
  \keyTime
  \set Staff.pedalSustainStyle = #'bracket
  
  \partial 8 r8 |
  aes4_5\sustainOn( ees'8_2 aes4_1\sustainOff) r8 |
  aes,4_5\sustainOn( ees'8_2 g4_1\sustainOff) r8 |
  aes,4\sustainOn( ees'8 g4\sustainOff) r8 |
  aes4_5\sustainOn( \clef treble f'8_1 ees4_2\sustainOff) r8 |\break
  
  \clef bass aes,,4_5\sustainOn( ees'8 aes4\sustainOff) r8 |
  aes,4_5\sustainOn( ees'8 g4\sustainOff) r8 |
  aes,4\sustainOn( ees'8 g4\sustainOff) r8 |
  aes,4\sustainOn( ees'8 aes4\sustainOff) r8 |\break
  
  \set fingeringOrientations = #'(left)
  \clef treble << <ees'-3 g-1>2. \sustainTwo >> |
  << <aes,-5 ees'-2>2. \sustainTwo >> |
  <aes'-5 ees'-2>4.\sustainOn \clef bass <aes,-5 ees'-2>4. |
  <aes, ees'>4.~ q4\sustainOff \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    indent = 0\cm
  }
  \midi { }
}

