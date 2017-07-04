\version "2.18.2"
% 《钢琴基础教材 修订版 第一册》 P56

\header {
  title = "小 步 舞 曲"
  composer = "克里斯蒂安•佩措尔德 曲"
}

keyTime = {
  \key g \major
  \time 3/4
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "Allegretto"
  \override Hairpin.to-barline = ##f
  
  \repeat volta 2 {
    d4-5( g,8 a b c |
    d4-.) g,_. g_. |
    e'4-3( c8d e fis |
    g4-.) g,-. g-. |
    c4-4( d8 c b a |
    b4 c8 b a g |\break
    
    fis4-2 g8-1 a b g |
    \acciaccatura b8 a2.) |
    d4-5( g,8 a b c |
    d4-.) g,_. g_. |
    e'4-3( c8d e fis |
    g4-.) g,-. g-. |
    c4-4( d8 c b a |\break
    
    b4 c8 b a g |
    a4 b8 a g fis-2 |
    g2.-1) |
  }
  \repeat volta 2 {
    b'4-5( g8 a b g |
    a4-4 d,8 e fis d |
    g4-4 e8 fis g d-1 |
    cis4-3 b8 cis a4) |\break
    
    a8(\< b cis d-1 e fis\! |
    g4-.) fis-. e-. |
    fis4-. g,_.\> cis-. |
    d2.\! |
    d4(\p g,8-1 fis-2 g4-1) |
    e'4( g,8 fis g4) |\break
    
    d'4-5( c b |
    a8 g fis-2 g-3) a4 |
    d,8(\< e fis g-1 a b\! |
    c4-.) b-. a_. |
    b8(\> d g,4-1_.) fis-2_.\! |
    <b, d g>2. |
  }
}

lower = \relative c {
  \clef bass
  \keyTime
  
  \repeat volta 2 {
    <g' b d>2 a4 |
    b2. |
    c2. |
    b2. |
    a2. |
    g2. |\break
    
    d'4 b_3 g |
    d'4 d,8 c'_1 b a |
    b2 a4 |
    g4_4 b g |
    c2._1 |
    b4_2 c8 b a g_4 |
    a2_1 fis4_3 |\break
    
    g2_2 b4_1 |
    c4_2 d d, |
    g2_1 g,4 |
  }
  \repeat volta 2 {
    g'2._1 |
    fis2. |
    e4 g e |
    a2 a,4 |\break
    
    a'2. |
    b4_3-. d-. cis-. |
    d4-. fis,_4-. a_2-. |
    d4( d, c'!_1) |
    <<
      { \voiceOne \stemUp 
        r4 d2 |
        r4 e2 |
      }
      \new Voice { 
        \voiceTwo \stemDown
        b2 b4 |
        c2_2 c4 |
      }
    >>
    \voiceOne
    |\break
    
    \stemNeutral
    b4_3 a g |
    d'2 r4 |
    <<
      \new Voice { \voiceTwo d,2. }
      { \voiceOne r4 r fis-3 }
    >> |
    \voiceOne
    \stemDown e4-. g-. fis-. \stemNeutral |
    g4_1( b,_.) d-. |
    g4-. d_2-. g,_. |
  }
}

myStaff = \new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
>>

\score {
  \myStaff
  \layout { }
}

\score {
  \unfoldRepeats
  \myStaff
  \midi { }
}

\markup { 此曲被误为巴赫创作，经查原作者应为佩措尔德。现在巴赫作品目录中作为附录收录。 }
\markup { 巴赫（J.S.Bach 1685-1750）德国作曲家，巴洛克音乐时期（Barogue Period 1600-1750）的重要人物，同时 }
\markup { 又是演奏家和教育家。 }
\markup { 学习巴洛克音乐时期的钢琴作品，请注意当时所使用的古钢琴(Harpsichord)的特征：音质清脆，音量较小。 }