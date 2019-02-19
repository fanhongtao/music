\version "2.18.2"

songName = "天空之城"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "久石让 曲"
}

keyTime = {
  \key es \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=100
  \override Hairpin.to-barline = ##f
  
  <<
    {
      \stemUp f'4.^( c8 c2\fermata) |
      ees4.^( bes8 bes2\fermata) |
      des2^( ees) |
      <d, f g c>2.\arpeggio
    }
    
    \new Voice {
      \override Voice.NoteHead.color = #blue
      \override Voice.Stem.color = #blue
      \override Voice.Arpeggio.color = #blue
      \stemDown <f, aes c g' aes c>1\arpeggio |
      <c ees g bes f' aes bes>1\arpeggio
      <c f bes ees aes>1\arpeggio
      <g d' g>2. 
    }
  >>
  \stemNeutral c'8( d |\break
  
  ees4. d8 ees4 g |
  d2.) g,4( |
  c4. bes8 c4 ees |
  bes2.) g4( |\break
  
  aes4. g8 aes4 ees' |
  g,2.) ees'4( |
  d4. a8 a4 d |
  d2.) c8( d |\break
  
  ees4. d8 ees4 g |
  d2.) g,4( |
  c4. bes8 c4 ees |
  bes2.) g4( |\break
  
  aes4 ees'8 d~ d4 ees |
  f4 g8 ees~ ees2) |
  ees8( d c4 d b |
  c2.) ees8( f |\break
  
  g4. f8 g4 bes |
  f2.) r8 bes,( |
  ees4. d8 ees4 g |
  g1) |\break
  
  c,8( d ees4 d8 ees f4 |
  ees4. bes8 bes2) |
  aes'4( g f ees |
  g2.) g4( |\break
  
  c2 bes |
  g4 f8 ees~ ees2) |
  f4( ees8 f~ f4 bes |
  g2.) g4( |\break
  
  c2 bes |
  g4 f8 ees~ ees2) |
  f4( ees8 f f4 d |
  c2.) c8( d |\break
  
  ees4. d8 ees4 g |
  d2.) g,4( |
  c4. bes8 c4 ees |
  bes2.) g4( |\break
  
  aes4. g8 aes4 ees' |
  g,2.) ees'4( |
  d4. a8 a4 d |
  d2.) c8( d |\break
  
  ees4. d8 ees4 g |
  d2.) g,4( |
  c4. bes8 c4 ees |
  bes2.) g4( |\break
  
  aes4 ees'8 d~ d4 ees |
  f4 g8 ees~ ees2) |
  ees8( d c4 d b |
  c2.) c,8( d |
  ees4. d8 ees4 g |\break
  
  d2~ d8) g,^( aes bes |
  <<
    {
      \time 2/4 s2 |
      \time 4/4 \stemUp c'8 g' f g c g f g |
      c,8 g' f g c g f g |
      c,1\fermata)
    }
    
    \new Voice {
      \time 2/4 c,2~ |
      \time 4/4 \stemDown
      \override Voice.NoteHead.color = #blue
      \override Voice.Tie.color = #blue
      c1~ |
      \override Voice.Tie.color = #black
      c1~ |
      \override Voice.NoteHead.color = #black
      c1 |
    }
  >>
  
  \bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  R1 |
  R1 |
  R1 |
  R1 |\break
  
  <c' ees g>1 |
  <bes d g>1 |
  <aes c ees>1 |
  <g ees' f> 1 |\break
  
  <f c' ees>1 |
  <ees c'>1 |
  <d c'>1 |
  g1 |\break
  
  <c ees g>1 |
  <bes d g>1 |
  <aes c ees>1 |
  <g ees' f>1 |\break
  
  <f c' ees>1 |
  c4 g' c2 |
  f,2 g |
  c,4( g' c2) |\break
  
  <<
    { 
      \slurUp \stemUp r4 bes( ees bes) |
      r4 bes( d bes) |
      r4 g( c g) |
      r4 g( bes g) |\break
      
      r4 ees r f |
      r4 ees( g ees) |
      r4 c( f c) |
      r4 d g2 |\break
      
      r4 g( c g) |
      r4 ees( aes ees) |
      r4 f( bes f) |
      r4 bes,( ees bes) |\break
      
      r4 g( c g) |
      r4 ees'( aes ees) |
      r4 f( bes f) |
    }
    
    \new Voice { 
      \override Voice.NoteHead.color = #blue
      \stemDown
      ees1 |
      d1 |
      c1 |
      bes1 |\break
      
      aes2 aes |
      g1 |
      f1 |
      g1 |\break
      
      c1 |
      aes1 |
      bes1 |
      ees,1 |\break
      
      c1 |
      aes'1 |
      bes1 |
    }
  >> |
  \stemNeutral \slurNeutral c4( g' c2) |\break
  
  <c ees g>1 |
  <bes d g>1 |
  <aes c ees>1 |
  <g ees' f>1 |\break
  
  <f c' ees>1 |
  <ees c'>1 |
  <d c'>1 |
  g1 |\break
  
  <c ees g>1 |
  <bes d g>1 |
  <aes c ees>1 |
  <g ees' f>1 |\break
  
  <f c' ees>1 |
  c4 g' c2 |
  f,2 g |
  c,4( g' c2) |
  <c, g'>1 |\break
  
  <bes g'>1 |
  \time 2/4 \stemDown <aes ees' g>2~
  \time 4/4 q1~ |
  q1~ |
  q1 |
  \bar "|."
}

\score {
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano"
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
