\version "2.18.2"

songName = "尼    娜"
\include "../../lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "Nina"
  subsubtitle = "（适合男女高音）"
  composer = "[意] L.V.恰姆比 曲"
  arranger = "尚家骧 译配"
}

keyTime = {
  \key aes \major
  \time 4/4
  \numericTimeSignature
}

melody = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Andantino" 4=80
  \override Hairpin.to-barline = ##f
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" }
  
  \partial 4 f,8^\p[ aes] |
  \repeat volta 2 {
    << { c4 c c des } { s2 s4 s8^\< s\! } >> |
    des4(^\> c)\! r des^\< |
    des4\!^\> c\! r f |\break
    
    ees4.( des8) c4 r8 c |
    bes4^\< bes bes bes\! |
    bes8^\>( \tuplet 3/2 { c16 bes a } bes8[ c] ees)[ des] \breathe c([ bes])\! |\break
    
    bes8( aes!) \tuplet 3/2 { aes( g f) } c'4.( e,8) |
  }
  \alternative {
    { f2 r4 f8 aes | }
    { f2 r | } \break
  }\pageBreak
  
  \repeat volta 2 {
    c'4.^\f bes16 aes c4. bes16 aes |
    ees'4. ees,8 ees4 r8 ees' |
    ees2^\>~ ees8[ f] ees[ des]\! |\break
    
    des4 c r r8 ees |
    ees2~^\< ees8[ f] ees[\! des] |
    \acciaccatura ees8 des4^\> c\! r c |\break
    
    bes4^\< bes bes bes\! |
    bes8^\>( \tuplet 3/2 { c16 bes a } bes8 c ees)[ des] \breathe c([ bes])\! |
    bes8^\pp( aes!) \tuplet 3/2 { aes( g f) } c'4.( e,8) |\break\pageBreak
    
    f2 r4 r8 f |
    f8^\<([ g]) aes([ bes]) c([ d]) e([ f])\! |
    f2 f,4 r8 f |\break
    
    f8^\<([ g]) aes([ bes]) c([ d]) e([ f])\! |
    f2 g,4 \breathe des'! |
    des8^\>( c) \acciaccatura des \tuplet 3/2 { c( bes aes)} c8 bes \acciaccatura c \stemDown \tuplet 3/2 { bes( aes g)\! } \stemNeutral |
  }
  \alternative {
    { f2 r |\break }
    {
      f2 r4 f'^\f |
      << { aes,2 bes } { s4 s^\> s s\! } >> |
      << 
        { c8\fermata( b16^\markup { \bold \italic "a piacere" }  c b c b c \acciaccatura { c16 ees } des4 c) }
        { s2 s8 s\< s8\!\> s16 s\! }
      >> |
      f,2 r4
    }
  }
}

upper_one = \relative c'' {
  <c, ees aes c>2\arpeggio \f q\arpeggio |
}

upper_one_midi = \relative c'' {
  \set tieWaitForNote = ##t
  \tieDown
  \grace { c,8~ ees~ aes~ c~ } <c, ees aes c>2\arpeggio \f
  \grace { c8~ ees~ aes~ c~ } q2\arpeggio |
  \tieNeutral
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \override Hairpin.to-barline = ##f
  
  \partial 4 r4 |
  \repeat volta 2 {
    aes,8\p( c f c) aes( f' bes, f') |
    bes,8( f' aes, c) f( c bes f') |
    bes,8( f' aes, c) f( c aes c) |\break
    
    bes8( des f des) aes( c f c) |
    <g' bes>8\<( bes, q bes) q( bes q bes)\! |
    q8\>( c g' c,) bes( c e c)\! |\break
    
    aes8\pp( c f c) bes( c e c) |
  }
  \alternative {
    { aes8( c f c) aes4 r | }
    { R1 | }
  }
  
  \repeat volta 2 {
    \tag #'pdf  \upper_one
    \tag #'midi \upper_one_midi %<c ees aes c>2\arpeggio \f q\arpeggio |
    <ees' aes bes ees>2~ q4 r |
    des8\p( ees g ees) des( ees g ees) |\break
    
    c8( ees aes ees) c8( ees aes ees) |
    des8( ees g ees) des( ees g ees) |
    c8( ees aes ees) c8( ees aes ees) |\break
    
    <g bes>8\<( bes, q bes) q( bes q\! bes) |
    q8\>( c g' c,) bes( c e c)\! |
    aes8\pp( c f c) bes( c e c) |\break
    
    aes8( c f c) aes( c f c) |
    aes8\<( c f c) aes( c f c)\! |
    aes8( c f c) aes( c f c) |\break
    
    <<
      { 
        \mergeDifferentlyHeadedOn 
        f,8\<( c' f c) f,( c' f c)\! |
        f,8( des' f des) g,( des' f des) |
        \mergeDifferentlyHeadedOff
      }
      \new Voice {
        \stemDown f,2 f |
        f2 g |
      }
    >>
    \stemNeutral
    aes8\pp( c f c) bes( c e c) |
  }
  \alternative {
    { aes8( c f c) aes4 r | }
    {
      aes8( c f c) aes( c f\f c) |
      c8( f_\markup { \bold \italic "dim." } aes f) bes,( des g des) |
      <aes c f>2\fermata\pp <bes c e>_\markup {\translate #'(-12 . -4) \bold \italic "colla voce"} |
      <aes c f>2 r4
    }
  }
  \bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  \partial 4 r4 |
  \repeat volta 2 {
    <f, f'>2 q |
    q2 q |
    q2 q |\break
    
    q2 f' |
    c4( des d ees) |
    e2 c |\break
    
    f2 c |
  }
  \alternative {
    { <f, f'>2~ q4 r | }
    { R1 | } \break
  }
  
  \repeat volta 2 {
    <aes aes'>2 q |
    <ees ees'>2~ q4 r |
    ees'2 ees |\break
    
    aes2 aes |
    ees2 ees |
    aes2 aes, |\break
    
    c4( des d ees) |
    e2 c |
    f2 c |\break
    
    f,2 f' |
    f,2 f' |
    f,2 f' |\break
    
    aes,2 aes |
    bes2 bes |
    c2 <c, c'> |
  }
  \alternative {
    { <f f'>2~ q4 r |\break }
    {
      q2 r4 f' |
      aes,2 bes |
      c2_\fermata <c, c'> |
      <f f'>2 r4
    }
  }
  \bar "|."
}

text = \lyricmode {
  \override LyricText.font-name = #"楷体"
  离 别 人 间 已 三 天， 啊, 尼 娜, 啊,
  尼 娜, 在 床 上 静 静 安 眠， 在
  床 上 安 眠。 离 别 眠。
  听， 外 面 锣 鼓 声 响 连 天， 醒 来 吧， 我 的
  尼 娜， 醒 来 吧， 我 的 尼 娜， 再
  不 要 永 世 长 眠， 快 重 返 人
  间， 醒 来 吧， 我 的 尼 娜， 醒
  来 吧， 我 的 尼 娜， 再 不 要 永 世 长 眠。
  眠， 快 重 返 人 间。
}

text-italian = \lyricmode {
  \set ignoreMelismata = ##t
  Tre _ gior -- ni son che Ni -- na, che Ni -- na, che
  \set ignoreMelismata = ##f
  Ni -- na in let -- to se ne sta, _ in --
  let -- to \set ignoreMelismata = ##t se ne sta. Tre _ sta.
  Pif -- fe- ri, tim -- pa- ni, cem -- ba -- li, sve -- glia -- _ te mia Ni --
  net -- ta, sve -- glia -- _ te mia Ni -- net -- ta, ac --
  ciò non dor -- ma \set ignoreMelismata = ##f più, _ ac -- ciò non \set ignoreMelismata = ##t dor -- ma
  più, sve -- \set ignoreMelismata = ##f glia -- te mia Ni -- net -- ta, sve --
  glia -- te mia Ni -- net -- ta, ac -- ciò non dor -- _ ma più.
  più, ac -- ciò non \set ignoreMelismata = ##t dor -- _ _ _ _ _ _ _ ma più.
}

\score {
  \keepWithTag #'pdf
  %\keepWithTag #'midi
  <<
    \new Voice = "mel" { \melody }
    \new Lyrics \lyricsto mel \text
    \new Lyrics \lyricsto mel \text-italian
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    % indent = 0\cm
  }
  % \midi { }
}

\score {
  \unfoldRepeats
  \keepWithTag #'midi
  <<
    \new Voice = "mel" { \melody }
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \midi { }
}


% 换气符 \breathe
% http://lilypond.org/doc/v2.18/Documentation/notation/expressive-marks-as-curves#breath-marks 
% http://lsr.di.unimi.it/LSR/Item?id=213
