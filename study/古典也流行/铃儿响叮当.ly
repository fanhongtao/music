\version "2.18.2"

songName = "铃儿响叮当"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
}

keyTime = {
  \key c \major
  \time 2/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=126
  \override Hairpin.to-barline = ##f
  
  r4 r8 r |
  R2 |
  g8-.[ e' d c] |
  g4. g16-3 g-2 |\break
  
  g8-1[ e' d c] |
  a4. a16-3 a-2 |
  a8[ f' e d] |
  b4. g'16-5 g-4 |
  g8-3[ g-5 f-4 d] |\break
  
  e4.-3 g,16-3 g-2 |
  g8-1[ e' d c] |
  g4. g16 g |
  g8[ e' d c] |
  a4. a16 a |\break
  
  a8[ f' e d] |
  g8-5[ g-4 g-3 g-4] |
  a8-5[ g-4 f-3 d-2] |
  c2-1 |
  \repeat volta 2 {
    e8 e e4 |\break
    
    e8 e e4 |
    e8[ g c, d] |
    e2 |
    f8 f f4 |\break\pageBreak
    
    f8 e e4 |
    e8[ d d c] |
    d4 g |
    e8 e e4 |\break
    
    e8 e e4 |
    e8[ g c, d] |
    e2 |
    f8 f f4 |
    f8 e e4 |\break
    
    g8[ g f d] |
    c2 |
  }
  g'4.-2 g8 |
  a4 b |
  c4. g8-. |\break
  
  c8-. r r4 |
  R2 |
  R2 |
  R2 |
  R2 |\break
  |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  c'8-._4[ <e g>-._1_2 g,-._5 q-._1_2] |
  c8-._4[ <e g>-. g,-. q-.] |
  c8-.[ <e g>-. g,-. q-.] |
  g8-.[ <c e>-. g-. q-.] |\break
  
  c8-.[ <e g>-. g,-. q-.] |
  a8-.[ <c f>-. a-. q-.] |
  a8-.[ <d f>-. g,-. q-.] |
  g8-.[ q-. g-. q-.] |
  c8-.[ <e g>-. g,-. <d' f>-.] |\break
  
  c8-.[ <e g>-. c-.] r |
  c8-.[ q-. g-. q-.] |
  g8-.[ <c e>-. g-. q-.] |
  c8-.[ <e g>-. g,-. q-.] |
  a8-.[ <c f>-. a-. q-.] |\break
  
  a8-.[ <d f>-. g,-. q-.] |
  c8-.[ <e g>-. c-. q-.] |
  c8-.[ q-. g-. <d' f>-.] |
  c8-. <e g>-. <c e g>4-. |
  \repeat volta 2 {
    c8-.[ <e g>-. c-. q-.] |\break
    
    c8-.[ q-. c-. q-.] |
    c8-.[ q-. c-. q-.] |
    c8-.[ q-. c-. q-.] |
    c8-.[ <f a>-. c-. q-.] |\break
    
    c8-.[ <e g>-. c-. q-.] |
    c8-.[ <e g>-. c-. q-.] |
    g8-.[ <d' f>-. g,-. q-.] |
    c8-.[ <e g>-. c-. q-.] |\break
    
    c8-.[ q-. c-. q-.] |
    c8-.[ q-. c-. q-.] |
    c8-.[ q-. c-. q-.] |
    c8-.[ <f a>-. c-. q-.] |
    c8-.[ <e g>-. c-. q-.] |\break
    
    c8-.[ q-. g-. <d' f>-.] |
    c8-.[ <e g>-.] c-. r |
  }
  <g c e>4. q8 |
  <f a c>4 <g b d> |
  <c, e g>4. g'8-. |\break
  
  c,8^. r r4 |
  R2 |
  R2 |
  R2 |
  R2 |\break
  |\bar "|."
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
