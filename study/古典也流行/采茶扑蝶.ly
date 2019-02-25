\version "2.18.2"

songName = "采茶扑蝶"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  composer = "福建民歌"
  arranger = "黎英海 编曲"
}

keyTime = {
  \key es \major
  \time 2/4
  \numericTimeSignature
}

upper_one = {
  <c ees g c>8\arpeggio\mf
}

upper_one_midi = {
  \set tieWaitForNote = ##t
  \grace {c8~[ ees~ g~ c~]} <c, ees g c>8\arpeggio\mf
  \unset tieWaitForNote
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto" 4=108
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2 {
    c4->-3( bes) |
    g8-. bes-. c-. bes-. |
    c8.( bes16 c8) r |
    c8.->( ees16 bes4) |\break
    
    g8-.-1 c-.-4 bes-. f-. |
    g8.( f16 g8) r |
    c8.-5( bes16 c8) r |
    g8.-2( f16 g8) r |
    g8.-2\mp\< bes16-4 g8-1 bes-4\!( |
    
    bes8) g4( f8-1 |
    ees8-2) c4-1( ees8) |
    f2\f |
    bes8-3\fp( c16-5 bes-4 g8 f) |\break
    
    ees8-2 ees f4-3 |
    ees8-2( g-4 f4) |
    ees8-2( c ees f16 ees |
    c2) |
  }
  
  ees'8-3( c-1 ees f16 ees |
  c2) |
  \ottava #1 ees'8\p( c ees f16 ees |
  c2) |
  \tag #'pdf  \upper_one
  \tag #'midi \upper_one_midi
  \ottava #0 r8 r4 |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \repeat volta 2 {
    c8->_5\sustainOn[ c'-._1\sustainOff <g bes>-._2_4 c-.] |
    <g bes>8-.[ c-. q-. c-.] |
    q8-.[ c-. q-. c-.] |
    c,8->\sustainOn[ c'-.\sustainOff q-. c-.] |\break
    
    q8-.[ c-. q-. c-.] |
    q8-.[ c-. q-. c-.] |
    <f, bes>8-.[ c'-. q-. c-.] |
    <g bes>8-.[ c-. q-. c-.] |
    g,8-.[ g'-. f,-. f'-.] |\break
    
    ees,8-.[ ees'-. d,-. d'-.] |
    c,8-.[ c'-. bes-. c-.] |
    aes8-._3[ g-. f--] r |
    <aes' des>-._1_3[ q-. q-. q-.] |\break
    
    q8-.[ q-. q-. q-.] |
    <aes c>8-._1_3[ q-. q-. q-.] |
    <g bes>8-._2_4[ q-. q-. q-.] |
    <f aes>8-._3_5[ q-. q-. <ees g>-._1_3] |\break
  }
  
  <<
    { 
      \stemUp
      fis8^.-2[ fis^. fis^. fis^.] |
      g8^.[ g^. g^. g^.] |
      fis8^.[ fis^. fis^. fis^.] |
      g8^.[ g^. g^. g^.] |
    }
    \new Voice {
      \stemDown
      c,2_~ |
      c2 |
      c2_~ |
      c2 |
    }
  >>
  c,8 r r4 |\bar "|."
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
