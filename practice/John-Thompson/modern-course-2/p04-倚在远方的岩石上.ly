\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 2》 P04

keyTime = {
  \key g \major
  \time 6/8
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto"
  \override Hairpin.to-barline = ##f
  
  \partial 8 d,8-1\mf |
  \repeat volta 2 {
    g4-3 fis8-2 g4-1 b8-3 |
    d4.-5~ d4 b8-3 |
    d4-5 b8 d4 b8 |
    d4 c8-4 a4-2 r8 |\break
    
    a8-2[ r a] a-2 g a |
    b8-3[ r d-5] g,4. |
    a8-2[ b a] r4 d8-5 |
  }
  \alternative {
    {
      g,4.-1 r4 d8-1 |
    }
    {
      g2. |\break
    }
  }
  
  <cis g'>2.-2-5\sfz\> |
  d2.-1\! |
  a8-2[\mp r a] a-2[ g a] |
  b8-3[ r d] g,4. |\break
  
  <cis, g'>2.-2-5\sfz\> |
  d2.-1\! |
  a'8-2[\mp b a] r4 d8-5 |
  g,4. r4 r8 |
  <b g'>4.\ff q4. |
  <b, g'>4. ~ q4 \bar"|."
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \partial 8 r8 |
  \repeat volta 2 {
    g'8_5[ b_3 d_1] g,[ b d] |
    g,8[ b d] g,[ b d] |
    g,8[ b d] g,[ b d] |
    fis,8_5[ c'_2 d_1] fis,[ c' d] |\break
    
    fis,8_5[ c'_2 d_1] fis,[ c' d] |
    g,8_5[ b_3 d_1] g,[ b d] |
    g,4_5 c8_2 d->[ r c] |    
  }
  \alternative {
    {
      <g b>4._3_5 r4 r8 |
    }
    {
      <g b>2.
    }
  }
  
  \clef treble 
  <ees' bes'>2._2_5 |
  <d b'!>2._1_5 |
  \clef bass
  fis,8_5[ c'_2 d_1] fis,[ c' d] |
  g,8[ b d] b4. |\break
  
  <ees, bes'>2._2_5 |
  <d b'!>2. _1_5 |
  fis4_5 c'8_2 d->[ r c] |
  <g b>4. r4 r8 |
  <g d'>4. q |
  <g,d'>4.~ q4 \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "倚在远方的岩石上"
    composer = \markup{ \column { "丹尼尔 · 奥柏" "(1782-1871)"}}
    poet = "注意：拇指穿越时要平滑。"
  }
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
