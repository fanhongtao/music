\version "2.18.2"

songName = "沉醉于风中(Like The Wind)"
\include "../lib/paper-footer.ily"
\include "../lib/markups.ily"

\header {
  title = \songName
  composer = "Composer: S.E.N.S"
  arranger = "Arranged: FO-A.Lee"
}

keyTime = {
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "dolce" 4=65
  \override Hairpin.to-barline = ##f
  
  r2 r4 g\p( |
  d'4. c8 e2~ |
  e2) c8( d e f |
  g4. e8 b2~ |
  b2) e4( b) |\break
  
  d4.( c16 b c2~ |
  c2) a8( b c d |
  e4. b8 g2~ |
  g2) \stemUp g8^( b \change Staff="lower" <fis, bes> \change Staff="upper" c''~ |
  \stemNeutral c2) r8 a( e' d) |\break
  
  r4 c( b c |
  d2) r8 g( f g |
  f4 e4.) a,8( a g' |
  f2) r8 e( d c |
  d2) r8 b( b c |\break
  
  c1)_\rit |
  s2. g4( |\bar"||"
  d'4._\atempo c8 e2~ |
  e2) c8( d e f |
  <b, g'>4. e8 b2~ |\break
  
  b2) e4( b) |
  d4.( c16 b c2~ |
  c2) a8( b c d |
  <b e>4. b8 g2~ |
  g2) \stemUp g8^( b \change Staff="lower" <fis, bes> \change Staff="upper" c''_~ |\break
  
  \stemNeutral c2) r8 a( e' d |
  r4 c b c |
  d2) r8 g( f g |
  f4 e4.) a,8( a g' |
  f2) r8 e( d c |\break
  
  d2) r8 b( b c) |
  \stemUp c4\mp^( a' e4. d8 |
  e1) |
  r4 a^( e4. d8 |
  e1) |\break
  
  r4 a^( e4. d8 |
  e1) |
  r4 a^( e4. d8 |
  e1) |
  s2. \stemNeutral g,4( |\bar "||"\break
  
  d'4. c8 e2~ |
  e2) c8( d e f |
  g4. e8 b2~ |
  b2) e4( b |
  d4. c16 b c2~ |\break
  
  c2) a8( b c d |
  e4. b8 g2~ |
  g2) \stemUp g8^( b \change Staff="lower" <fis, bes> \change Staff="upper" c''~ |
  c2) r8 \stemNeutral a( e' d) |
  r4 c( b c |\break
  
  d2) r8 g( f g |
  f4 e4.) a,8( a g' |
  f2) r8 e( d c |
  d2) r8 b( b c) |\break
  
  \stemUp c4^( a' e4. d8 |
  e1) |
  r4 a^( e4. d8 |
  e1) |
  r4 a^( e4. d8 |\break
  
  e1) |
  r4 a^( e4. d8 |
  e1) |
  s2. \stemNeutral <g, g'>4( |\bar "||"
  <d' d'>4. <c c'>8 <e e'>2~ |\break
  
  q2) <c c'>8( <d d'> <e e'> <f f'> |
  <g g'>4. <e e'>8 <b b'>2~ |
  q2) <e e'>4( <b b'> |
  <d d'>4. <c c'>16 <b b'> <c c'>2~ |\break
  
  q2) <a a'>8( <b b'> <c c'> <d d'> |
  <e e'>4. <b b'>8 <g g'>2~ |
  q2) \stemUp q8^( <b b'>8 \change Staff="lower" <fis, bes> \change Staff="upper" <c'' c'>~ |
  q2) r8 \stemNeutral <a a'>( <e' e'> <d d'>) |\break
  
  r4 <c c'>( <b b'> <c c'> |
  <d d'>2) r8 <g g'>( <f f'> <g g'> |
  <f f'>4 <e e'>4.) <a, a'>8( q <g' g'> |
  <f f'>2) r8 <e e'>( <d d'> <c c'> |\break
  
  <d d'>2) r8 b( b c) |
  \stemUp c4^( a' e4. d8 |
  e1) |
  r4 a^( e4. d8 |
  e1) |\break
  
  r4 a^( e4. d8 |
  e1) |
  r4 a^( e4. d8 |
  e1_\rit) |
  s1 |\bar "|."
}

EndSustain = { s4 s4\sustainOff }

lower_one = { <e g b e>1\arpeggio\fermata ) }
lower_one_midi = {
  \set tieWaitForNote = ##t
  \grace { e8~[ g~ b~ e~] } <e, g b e>1\arpeggio\fermata )
  \unset tieWaitForNote
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  R1 |
  c8\sustainOn g' c d e2\sustainOff |
  c,8\sustainOn g' c e g2\sustainOff |
  e,,8\sustainOn b' e g b2\sustainOff |
  e,,8\sustainOn b' e g b2\sustainOff |\break
  
  a,8\sustainOn e' a c e2\sustainOff |
  a,,8\sustainOn e' a c e2\sustainOff |
  e,,8\sustainOn b' e g b2\sustainOff |
  e,,8\sustainOn b' e g b4\sustainOff \stemDown ees,, \stemNeutral |
  d8\sustainOn a' f' a c2\sustainOff |\break
  
  g,8\sustainOn d' g b d2\sustainOff |
  e,,8\sustainOn b' g' b d2\sustainOff |
  a,8\sustainOn e' a c e2\sustainOff |
  d,,8\sustainOn a' f' a c2\sustainOff |
  g,8\sustainOn d' g b d2\sustainOff |\break
  
  \stemDown c,,8(\sustainOn g' c e g\sustainOff \change Staff="upper" c e g |
  <<
    { c2.) s4 }
    \new Voice { \change Staff="lower" R1 }
  >> |\bar"||"
  \change Staff="lower" \stemNeutral c,,8\sustainOn g' c d e2\sustainOff |
  c,8\sustainOn g' c e g2\sustainOff |
  e,,8\sustainOn b' e g b2\sustainOff |\break
  
  e,,8\sustainOn b' e g b2\sustainOff |
  a,8\sustainOn e' a c e2\sustainOff |
  a,,8\sustainOn e' a c e2\sustainOff |
  e,,8\sustainOn b' e g b2\sustainOff |
  e,,8\sustainOn b' e g b4\sustainOff \once \stemDown ees,, |\break
  
  d8\sustainOn a' f' a c2\sustainOff |
  g,8\sustainOn d' g b d2\sustainOff |
  e,,8\sustainOn b' g' b d2\sustainOff |
  a,8\sustainOn e' a c e2\sustainOff |
  d,,8\sustainOn a' f' a c2\sustainOff |\break
  
  g,8\sustainOn d' g b d2\sustainOff |
  f,,8\sustainOn c' f a << \EndSustain \new Voice {\change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |
  f,,8\sustainOn c' f a  << \EndSustain \new Voice { \change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |\break
  
  f,,8\sustainOn c' f a << \EndSustain \new Voice {\change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |
  f,,8\sustainOn c' f a  << \EndSustain \new Voice { \change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn^( g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |
  << { \change Staff="upper" <e, g b e>2.\arpeggio ) s4 } \new Voice { R1 } >> |\break
  
  \change Staff="lower" c,8\sustainOn g' c d e2\sustainOff |
  c,8\sustainOn g' c e g2\sustainOff |
  e,,8\sustainOn b' e g b2\sustainOff |
  e,,8\sustainOn b' e g b2\sustainOff |
  a,8\sustainOn e' a c e2\sustainOff |\break
  
  a,,8\sustainOn e' a c e2\sustainOff |
  e,,8\sustainOn b' e g b2\sustainOff |
  e,,8\sustainOn b' e g b4\sustainOff \once \stemDown ees,, |
  d8\sustainOn a' f' a c2\sustainOff |
  g,8\sustainOn d' g b d2\sustainOff |\break
  
  e,,8\sustainOn b' g' b d2\sustainOff |
  a,8\sustainOn e' a c e2\sustainOff |
  d,,8\sustainOn a' f' a c2\sustainOff |
  g,8\sustainOn d' g b d2\sustainOff |\break
  
  f,,8\sustainOn c' f a << \EndSustain \new Voice {\change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |
  f,,8\sustainOn c' f a  << \EndSustain \new Voice { \change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |
  f,,8\sustainOn c' f a  << \EndSustain \new Voice { \change Staff="upper" \stemDown c8 f a f} >> |\break
  
  c,,8\sustainOn g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |
  f,,8\sustainOn c' f a  << \EndSustain \new Voice { \change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn^( g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |
  << { \change Staff="upper" e2. ) s4 } \new Voice { R1 } >> |\bar"||"
  \change Staff="lower" c,,8\sustainOn g' c e g e\sustainOff c g |\break
  
  c,8\sustainOn g' c e g e\sustainOff c g |
  e,8\sustainOn b' e g b g\sustainOff e b |
  e,8\sustainOn b' e g b g\sustainOff e b |
  a8\sustainOn e' a c e c\sustainOff a e |\break
  
  a,8\sustainOn e' a c e c\sustainOff a e |
  e,8\sustainOn b' e g b g\sustainOff e b |
  e,8\sustainOn b' e g b4\sustainOff \once \stemDown ees,, |
  d8\sustainOn a' f' a c a\sustainOff f d |\break
  
  g,8\sustainOn d' g b d b\sustainOff g d |
  e,8\sustainOn b' g' b d b\sustainOff g e |
  a,8\sustainOn e' a c e c\sustainOff a e |
  d,8\sustainOn a' f' a c a\sustainOff f c |\break
  
  g8\sustainOn d' g b d2\sustainOff |
  f,,8\sustainOn c' f a << \EndSustain \new Voice {\change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |
  f,,8\sustainOn c' f a << \EndSustain \new Voice {\change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |\break
  
  f,,8\sustainOn c' f a << \EndSustain \new Voice {\change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |
  f,,8\sustainOn c' f a << \EndSustain \new Voice {\change Staff="upper" \stemDown c8 f a f} >> |
  c,,8\sustainOn^( g' e' g << \EndSustain \new Voice { \change Staff="upper" \stemDown b8 e g b} >> |
  << { \change Staff="upper" \tag #'pdf \lower_one \tag #'midi \lower_one_midi } \new Voice { R1 } >> |\bar "|."
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

\markup { \override #'(font-name . "楷体") \column {
  \line {  原谱来自：
  \with-url #"http://www.gangqinpu.com/html/10416.htm" {
    虫虫钢琴（http://www.gangqinpu.com/html/10416.htm）
  } }
} }
