\version "2.18.2"

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 2/4
  \numericTimeSignature
  \tempo "Allegro animato 生气勃勃的快板"
  
  R2 |
  s2 |
  s2 |
  <c, e>2 |\break
  
  e8-4\mf(\>[ f] e[ d]\! |
  c8-2
  <<
    {
      \change Staff = lower
      bes8_2 a[ g] |
      f4) bes_2-. |
    }
    \new Voice {
      s8 r4 |
      r4 d-3_. |
    }
  >>
  \change Staff = upper
  c2 |\break
  
  R2 |
  s2 |
  s2 |
  <c e>2 |\break
  
  e8-4([ f] e[ d] |
  c8-2
  <<
    {
      \change Staff = lower
      bes8_2 a[ g] |
      f4) bes_2-. |
    }
    \new Voice {
      s8 r4 |
      r4 d-3_. |
    }
  >>
  \change Staff = upper
  <c^2 f-5>2 |\bar"|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 2/4
  \numericTimeSignature
  \dynamicUp
  % \override Hairpin.to-barline = ##f
  
  f8_5\mp(\<[ g] a[ bes]\! |
  <<
    {
      \change Staff = upper
       c8-2[ d] e[ f] |
       <c^2 e-4>4_.) <c e>_. |
    }
    \new Voice {
      R2 |
      bes4_2-. bes-. |
    }
  >>
  \change Staff = lower
  bes2 |\break
  
  R2 |
  s2 |
  s2 |
  a2 |\break
  
  f8_5\mf(\<[ g] a[ bes]\! |
  <<
    {
      \change Staff = upper
       c8-2[ d] e[ f] |
       <c e>4_.) <c e>_. |
    }
    \new Voice {
      R2 |
      bes4-. bes-. |
    }
  >>
  \change Staff = lower
  bes2 |\break
  
  R2 |
  s2 |
  s2 |
  a2_3 |\bar"|."
}

\paper {
  print-all-headers = ##t
}

\header {
  title = ##f
  subtitle = ##f
}
\markup { \vspace #1 }

\score {
  \header {
    title = "杂 技 演 员"
    subtitle = ##f
  }
  \new GrandStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

