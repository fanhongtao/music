\version "2.18.2"

\include "../../../lib/brackets.ly"

bracket = \squareBracket #'(0.0 . -0.0)  #'1.0

upper = \relative c'' {
  \clef treble
  \key as \major
  \time 3/4
  \tempo "Andante M.M." 2. = 60
  \override Hairpin.to-barline = ##f
  
  s2.\mf |
  s4 \bracket c,4-1\startTextSpan^\markup { 右手 } ees-3\stopTextSpan |
  \stemDown aes4_3_左手 \stemUp c-1^右手 ees-3 |
  \ottava #1 \stemDown aes4_3_左手 \stemUp c-1^右手 ees-3 | \break
  
  \stemNeutral << des2.-2\p ees2.-3 >> |
  << des2.-2 ees2.-3 >> |
  <ees-3 c^1>2.~ |
  q2. \ottava 0 |\break
  
  s2.\mf |
  s4 \bracket c,,4-1\startTextSpan^\markup { 右手 } ees-3\stopTextSpan |
  \stemDown aes4_3_左手 \stemUp c-1^右手 ees-3 |
  \ottava #1 \stemDown aes4_3_左手 \stemUp c-1^右手 ees-3 | \break
  
  \stemNeutral << des2.-2\p ees2.-3 >> |
  << des2.-2 ees2.-3 >> |
  <ees-3 c^1>2.~ |
  q2. \ottava 0 |\break
  
  \ottava #1 c2-1\pp des4-2 |
  c2-1 des4-2 |
  <ees-3 c^1>2.~ |
  q2. \ottava 0 |
  c,2-1\p des4-2 |
  c2-1 des4-2 | \break
  
  <ees-3 c^1>2.~ |
  q2. |
  c,2-1\mf des4-2 |
  c2-1 des4-2 |
  <ees-3 c^1>2.\< |
  <ees-3 c^1>2.\! |\break
  
  <e-4 c^1>2.~ |
  q2.\> |
  << des2.-2~ ees!2.-3~ >> |
  << des2.\! ees2. >> |\break
  
  \repeat volta 2 {
    s2.\mf |
    s4 \bracket c4-1\startTextSpan^\markup { 右手 } ees-3\stopTextSpan |
    \stemDown aes4_3_左手 \stemUp c-1 ees-3 |
    \ottava #1 \stemDown  aes4_3_左手 \stemUp c-1 ees-3 |
    \stemNeutral << des2.-2\p ees2.-3 >> |\break
    
    << des2.-2 ees2.-3 >> |
  }
  \alternative {
    {
      <ees-3 c^1>2.~ |
      q2. \ottava 0 |
    }
    {
      \ottava #1 <ees-3 c^1>2.~\pp |
      q2. \ottava 0 |
    }
  }
  |\bar"|."
}

lower = \relative c {
  \clef bass
  \key as \major
  \time 3/4
  
  \stemDown aes4_3 \bracket \stemUp c-1\startTextSpan^\markup { 右手 } ees-3\stopTextSpan |
  \stemNeutral aes4_3_左手 s2 |
  s2. |
  s2. \clef treble |\break
  
  g''2._4 |
  g2._4 |
  aes2._3~ |
  aes2. \clef bass |\break
  
  \stemDown aes,,,4_3 \bracket \stemUp c-1\startTextSpan^\markup { 右手 } ees-3\stopTextSpan |
  \stemNeutral aes4_3_左手 s2 |
  s2. |
  s2. \clef treble |\break
  
  g''2._4 |
  g2._4 |
  aes2._3~ |
  aes2. |\break
  
  <aes_3 f_5>2. |
  <aes_3 f_5>2. |
  aes2._3~ |
  aes2. |
  <aes,_3 f_5>2. |
  <aes_3 f_5>2. |\break
  
  aes2._3~ |
  aes2. \clef bass |
  <aes,_3 f_5>2. |
  <aes_3 f_5>2. |
  aes2._3 |
  aes2._3 |\break
  
  <bes_2 g_4>2.~ |
  q2. |
  <bes_2 g_4>2.~ |
  q2. |\break
  
  \repeat volta 2 {
    \stemDown aes,4_3 \bracket \stemUp c-1\startTextSpan^\markup { 右手 } ees-3\stopTextSpan |
    \stemNeutral aes4_3_左手 s2 |
    s2. |
    s2. \clef treble |
    g''2._4 | \break
    
    g2._4 |
  }
  \alternative {
    {
      aes2._3~ |
      aes2. |
    }
    {
      aes2._3 |
      \ottava #1 aes'2._3_左手 \ottava 0 |
    }
  }
  |\bar"|."
}

\header {
  title = "摩 天 大 厦"
}
\markup { \vspace #1 }
\markup { \concat{\super \flat A}大调有四个降号: \concat{\super \flat B}、 \concat{\super \flat E}、 \concat{\super \flat A}、 \concat{\super \flat D}。 }
\markup { \vspace #1 }

myStaff = \new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
>>

\score {
  \myStaff
  \layout {
    \override TextSpanner.style = #'solid-line
    \override TextSpanner.bound-details.left.text =
      \markup { \draw-line #'(0 . -1) }
    \override TextSpanner.bound-details.right.text =
      \markup { \draw-line #'(0 . -1) }
    \override TextSpanner.bound-details.right.padding = #-1
  }
}

\score {
  \unfoldRepeats
  \myStaff
  \midi { }
}
