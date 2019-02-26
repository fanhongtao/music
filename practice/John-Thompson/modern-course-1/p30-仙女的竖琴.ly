\version "2.18.2"
% 《约翰•汤普森 现代钢琴教程 1》 P30

\markup { 和弦前的\bold {曲线} 指和弦音要\bold {先后}弹出，不是一起弹。}

\markup { \fill-line {
  \score {
    \new Staff \relative c'' {
      \once \override Staff.TimeSignature #'stencil = ##f
      \time 3/4
      
      <c, e g>2.\arpeggio |
      
      \set tieWaitForNote = ##t
      \tieDown
      \grace { c8[ ~ e ~ g] ~ s4 }
      <c, e g>2. \bar "||"
    }
    \layout { }
  }
} }


upper_one = \relative c'' {
  <g b>2.-1-3\arpeggio |
  <g ais>2.-1-2\arpeggio |
  <g b>2.-1-3~\arpeggio |
  q4 r r |
  <g' b>2.-1-3\arpeggio |
  <g ais>2.-1-2\arpeggio |\break
  
  <g b>2.-1-3~\arpeggio |
  q4 r r |\bar "||" 
}

upper_one_midi = \relative c'' {
  \set tieWaitForNote = ##t
  \grace { s4. g8.~[ b~] } <g b>2.-1-3\arpeggio |
  \grace { s4. g8.~[ ais~] } <g ais>2.-1-2\arpeggio |
  \grace { s4. g8.~[ b~] } <g b>2.-1-3~\arpeggio |
  q4 r r |
  \grace { s4. g'8.~[ b~] } <g b>2.-1-3\arpeggio |
  \grace { s4. g8.~[ ais~] } <g ais>2.-1-2\arpeggio |\break
  
  \grace { s4. g8.~[ b~] } <g b>2.-1-3~\arpeggio |
  q4 r r |\bar "||" 
  \unset tieWaitForNote
}

upper_two = \relative c'' {
  <g b>2.-1-3\arpeggio |
  <g ais>2.-1-2\arpeggio |\break
  <g b>2.-1-3~\arpeggio |
  q4 r r |
  <g'-1 b^3>2.\arpeggio |
  <g ais>2.-1-2\arpeggio |
  <g b>2.-1-3~\arpeggio |
  q4 r r |
}

upper_two_midi = \relative c'' {
  \set tieWaitForNote = ##t
  \grace { s4. g8.~[ b~] } <g b>2.-1-3\arpeggio |
  \grace { s4. g8.~[ ais~] } <g ais>2.-1-2\arpeggio |\break
  \grace { s4. g8.~[ b~] } <g b>2.-1-3~\arpeggio |
  q4 r r |
  \grace { s4. g'8.~[ b~] } <g b>2.-1-3\arpeggio |
  \grace { s4. g8.~[ ais~] } <g ais>2.-1-2\arpeggio |
  \grace { s4. g8.~[ b~] } <g b>2.-1-3~\arpeggio |
  q4 r r |
  \unset tieWaitForNote
}

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \numericTimeSignature
  \tempo \markup { "Andante M.M. " \note-by-number #2 #0 #UP "= 60 - " \note-by-number #1 #1 #UP " = 50" }
  \override Hairpin.to-barline = ##f
  
  \tag #'pdf  \upper_one
  \tag #'midi \upper_one_midi
  R2. |
  g4-1 b-3 d-5 |
  <g b>2._2_5~_\markup{左手} |
  q4 r r |\break
  
  R2. |
  g,4-1 b-3 d-5 |
  <g b>2._3_5~_\markup{左手} |
  q4 r r |
  a,4-2\mp b-3 a-2 |
  g4-1 b-3 d-5 |\break
  
  a4-2 b-3 a-2 |
  g4-1 b-3 d-5 |
  c4-4\> d-5 c-4 |
  b4-3 c-4 b-3\! |
  a2.-2~ |
  a4 r r |\break
  
  R2. |
  g4-1\< b-3 d-5\! |
  <g b>2._3_5~_\markup{左手} |
  q4 r r |
  R2. |
  g,4-1 b-3 d-5 |\break
  
  <g b>2._3_5~_\markup{左手} |
  q4 r r |
  a,4-2\< b-3 a-2\! |
  c4-4 b-3 a-2 |
  g4-1 a-2 g-1 |
  b4-3 a-2 g-1 |\break
  
  d'4-5 b-3 g-1 |
  R2. |
  a4-2\> b-3 a-2 |
  g2.-1\! |
  \tag #'pdf  \upper_two
  \tag #'midi \upper_two_midi
  \bar"|."
}

lower_one = \relative c {
  \once \override DynamicText.X-offset = #0.1
  <g' d'>2._1_5\arpeggio\p |
  <g cis>2._2_5\arpeggio |
  <g d'>2._1_5~\arpeggio |
  q4 r r \clef treble |
  \once \override DynamicText.X-offset = #0.1
  <g' d'>2._1_5\arpeggio\pp |
  <g cis>2._2_5\arpeggio |\break
  
  <g d'>2._1_5~\arpeggio |
  q4 r r |
}

lower_one_midi = \relative c {
  \set tieWaitForNote = ##t
  \once \override DynamicText.X-offset = #0.1
  \grace { g'8.~[ d'~] s4. } <g, d'>2._1_5\arpeggio\p |
  \grace { g8.~[ cis~] s4. } <g cis>2._2_5\arpeggio |
  \grace { g8.~[ d'~] s4. } <g, d'>2._1_5~\arpeggio |
  q4 r r \clef treble |
  \once \override DynamicText.X-offset = #0.1
  \grace { g'8.~[ d'~] s4. } <g, d'>2._1_5\arpeggio\pp |
  \grace { g8.~[ cis~] s4. } <g cis>2._2_5\arpeggio |\break
  
  \grace { g8.~[ d'~] s4. } <g, d'>2._1_5~\arpeggio |
  q4 r r |
  \unset tieWaitForNote
}

lower_two = \relative c {
  \once \override DynamicText.X-offset = #0.1
  <g' d'>2._1_5\arpeggio\p |
  <g cis>2._2_5\arpeggio |\break
  
  <g d'>2._1_5~\arpeggio |
  q4 r r \clef treble |
  \once \override DynamicText.X-offset = #0.1
  <g' d'>2._1_5\arpeggio\pp |
  <g cis>2._2_5\arpeggio |
  <g d'>2._1_5~\arpeggio |
  q4 r r |
}

lower_two_midi = \relative c {
  \set tieWaitForNote = ##t
  \once \override DynamicText.X-offset = #0.1
  \grace { g'8.~[ d'~] s4. } <g, d'>2._1_5\arpeggio\p |
  \grace { g8.~[ cis~] s4. } <g cis>2._2_5\arpeggio |\break
  
  \grace { g8.~[ d'~] s4. } <g, d'>2._1_5~\arpeggio |
  q4 r r \clef treble |
  \once \override DynamicText.X-offset = #0.1
  \grace { g'8.~[ d'~] s4. } <g, d'>2._1_5\arpeggio\pp |
  \grace { g8.~[ cis~] s4. } <g cis>2._2_5\arpeggio |
  \grace { g8.~[ d'~] s4. } <g, d'>2._1_5~\arpeggio |
  q4 r r |
  \unset tieWaitForNote
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 3/4
  \dynamicUp
  
  \tag #'pdf  \lower_one
  \tag #'midi \lower_one_midi
  \clef bass g'4_5\mp b_3 d_1 |
  R2. |
  s2. |
  s2. |\break
  
  g,4_5\pp b_3 d_1 |
  R2. |
  s2. |
  s2. |
  c2._2 |
  b2._3 |\break
  
  c2._2 |
  b2._3 |
  a2._4 |
  g2._5 |
  d'2._1~ |
  d4 r r |\break
  
  g,4_5\mp b_3 d_1 |
  R2. |
  s2. |
  s2. |
  g,4_5\pp b_3 d_1 |
  R2. |\break
  
  s2. |
  s2. |
  c2._2 |
  a4_4 b_3 c_2 |
  b2._3 |
  g4_5 a_4 b_3 |\break
  
  R2. |
  d4_1 b_3 g_5 |
  c4_2 d_1 c_2 |
  b2._3 |
  \tag #'pdf  \lower_two
  \tag #'midi \lower_two_midi
  \bar"|."
}

\paper {
  print-all-headers = ##t
}

\markup { \vspace #1 }

\score {
  \header {
    title = "仙女的竖琴"
  }
  \keepWithTag #'pdf
  \new GrandStaff <<
    \set GrandStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}

\score {
  \keepWithTag #'midi
  \new GrandStaff <<
    \set GrandStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}

\markup { 注意： LilyPond 目前无法在 MIDI 中正确记录“琶音”(arpeggio)。}
\markup { 所以，我使用了 tag 来区分 \underline {显示在PDF中} 和 \underline {记录在Midi中} 的内容。 }
\markup { 同时，为了让不同代码之间不互相影响，所以将 琶音 相关的代码提取出来。 }

\markup { \vspace #1 总结琶音相关代码过程如下：}
\markup { 1、先将代码正确录入，能够生成PDF。 }
\markup { 2、将琶音相关代码提取出来，并确保提取后 PDF 内容正确。 }
\markup { 3、将提取出来的代码复制一份用于生成 midi 内容； 利用 tag 来区分不同的代码。 }
\markup { 4、修改 midi 相关代码，确保声音正确。 }
\markup { 可以参考本文件的提交记录来加深理解。 }

\markup { \vspace #1 有个小技巧：}
\markup { 修改 midi 代码时，先将用于生成 PDF 的 score 也使用 midi 对应的 tag, }
\markup { 即将 "\keepWithTag #'pdf" 更换成 "\keepWithTag #'midi"。这样才能确保 midi 中的音符正确。 }
\markup { 等 midi 的内容正确后，再将 tag 更换回来。 }

\markup { \vspace #1 参考: }
\markup { 1、\with-url #"http://lilypond.org/doc/v2.18/Documentation/notation/writing-rhythms#ties" {
    Ties
  } 中的 "Using ties with arpeggios"
}

\markup { 2、\with-url #"https://lists.nongnu.org/archive/html/lilypond-user/2011-05/msg00028.html" {
    Re: Fw: midi arpeggio
  }
}
