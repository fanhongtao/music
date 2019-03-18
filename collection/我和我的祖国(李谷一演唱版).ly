\version "2.18.2"

songName = "我和我的祖国 (李谷一演唱版)"
\include "../lib/paper-footer.ily"

\header {
  title = "我和我的祖国"
  subtitle = "李谷一 演唱"
  composer = \markup { \column { \line {"张　黎 作词"} \line { "秦咏诚 作曲" } } }
}

keyTime = {
  \key f \major
  \time 6/8
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo "慢速" 8=150
  \override Hairpin.to-barline = ##f
  
  f4-1\mf g8 a g f-1 |
  e8-3 d a-1 c4.-2 |
  d8-1 e-2 f-1 bes-4 a f |
  g4.~ g |\break
  
  f4-1 g8 a g f-1 |
  e8-3 c8.-2 a16-1 d4.-3 |
  c8.-1 d16-2 e f-4 g4-1 a8 |
  bes4.-3~ bes8 a-2 g-1 |\break
  
  f4.-2~ f |
  % part 1
  <a, c>8-2-4\mp( d-5) c bes-3( a) g-1 |
  f4.-3 c-1 |
  f8-1 a-2 f'-5 e d8. a16-1 |\break
  
  c4.-3~ c |
  d8-4 e d c( bes) a-1 |
  g4.-3 d-1 |
  e8-3 d c c'-5 f,8.-1 g16-2 |\break
  
  a4.-3~ a |
  c8-4 d-5 c bes-3 a g |
  f4.-3 c-1 |
  f8-1 a-2 f'-5 e-3 g8.-5 f16-4 |\break
  
  d4.-2~ d |
  f8-4 e d c4. |
  d8-4 c bes a4. |
  e4-3 d8 c4 g'8-5 |\break
  
  f4.-4~ f |
  f'8-3 g a g-4 f-3 d-1 |
  e8-4 d8.-3 a16-1 c4.-2~ |
  c4. f8-3 g a |\break
  
  g8-4 f d e-4 c8.-2 a16-1 |
  d4.-3~ d |
  c8-4 bes a g4. |
  e8-3\> d16 d c8 a'4.-5 |\break
  
  bes4.-4 g8-2( f-1) f\! |
  f4.-1~ f |
  % --------------------------
  f'4-1\mp g8 a g f-1 |
  e8-3 d a-1 c4.-2 |\break
  
  d8-1 e-2 f-1 bes-4 a-3 f-1 |
  g4.-2~ g |
  f4-1 g8 a g f |
  e8-3 c-2 a-1 d4.-4 |\break
  
  c8.-1 d16 e f-1 g4 a8 |
  bes4.-4~ bes8 a g |
  f4.~ f |
  R2. |\break
  
  % part 2
  c8-4 d-5( c) bes-3( a) g | % note: 根据原唱设置连线
  f4.-3 c-1 |
  f8-1 a-2 f'-5 e d8. a16-1 |\break
  
  c4.-3~ c |
  d8-4 e d c( bes) a-1 |
  g4.-3 d-1 |
  e8-3 d c c'-5 f,8.-1 g16-2 |\break
  
  a4.-3 r4 r8 | % note: a4. 换成了 r4 和 r8
  c8-4 d-5( c) bes-3 a g | % note: 连线
  f4.-3 c-1 |
  f8-1 a-2 f'-5 e-3 g8.-5 f16-4 |\break
  
  d4.-2~ d |
  f8-4 e d c4. |
  d8-4 c bes a4. |
  e4-3 d8 c8. c16 g'8-5 |\break % note: c4 分成 c8. 和 c16
  
  f4.-4~ f |
  <c' f>8-1-3 g'-4 <c, a'>-1-5 g'-4 f-3 d-1 | % note: 双音
  e8-4 d8.-3 a16-1 c4.-2 | % note: c4没有延音号
  r4 r8 f8-3 g a |\break % note: c4 换成 r4 和 r8
  
  g8-4 f d e-4 c8.-2 a16-1 |
  d4.-3~ d |
  c8-4 bes a g4. |
  e8-3 d c8 a'4.-5 |\break % note: 两个 d16 合成 d8
  
  bes4.-4 g8-2( f-1) f |
  f4.-1~ f |
  % --------------------------
  % part 3
  c'8-4( d-5) c bes-3( a) g |
  f4.-3 c-1 |
  f8-1 a-2 f'-5 e d8. a16-1 |\break
  
  c4.-3~ c |
  d8-4 e d c( bes) a-1 |
  g4.-3 d-1 |
  e8-3 d c c'-5 f,8.-1 g16-2 |\break
  
  a4.-3 r4 r8 | % note: a4. 换成了 r4 和 r8
  c8-4 d-5 c bes-3 a g |
  f4.-3 c-1 |
  f8-1 a-2 f'-5 e-3 g8.-5 f16-4 |\break
  
  d4.-2~ d |
  f8-4 e d c4. |
  d8-4 c bes a4. |
  e4-3 d8 c4 g'8-5 |\break
  
  f4.-4~ f |
  <c' f>8-1-3 g'-4 <c, a'>-1-5 g'-4 f-3 d-1 | % note: 双音
  e8-4 d8.-3 a16-1 c4.-2 | % note: c4没有延音号
  r4 r8 f8-3 g a |\break % note: c4 换成 r4 和 r8
  
  g8-4 f d e-4 c8.-2 a16-1 |
  d4.-3~ d |
  c8-4 bes a g4. |
  e8-3 d c8 a'4.-5 |\break % note: 两个 d16 合成 d8
  
  bes4.-4 g8-2( f-1) f |
  f4.-1~ f |
  % --------------------------
  
  <a c f>8-1-2-3\mf g'-4 a-5 g f d-1 |\break
  
  e8-4 d-3 a-1 c4.-2~ | %note
  c4. f8-3 g a |
  g8-4 f d e-4 c8.-2 a16-1 |
  d4.-3~ d |\break
  
  c8-4 bes a g4. |
  e8-3 d c8 a'4.-5 |%note
  <c c'>4.-1-5_\markup { "渐慢" } <g' g'>4\> <f f'>8 |
  q4.\fermata~ q\! |\bar "|."
}

lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  f,8_5 <f' a c>_1_2_4 q f, q q |
  c8_5 q_1_2_4 q f_5 q_1_2_4 q |
  f8 q q f q q |
  c8_5 <c' e g>_1_2_4 q c, q q |\break
  
  f8_5 <f' a c>_1_2_4 q f, q q |
  c8_5 <c' e g>_1_2_4 q d,8_5 <d' f a>_1_2_4 q |
  c,8_5 <c' e g>_1_2_4 q g_5 <g' bes d>_1_2_4 q |
  c,8_5 <g' bes>_1_2 q c, q q |\break
  
  f,8_5 <f' a c>_1_2_4 q f, q16 q q8 |
  % part 1
  f'8_4 <a c>_1_2 q f q q |
  c8_5 <f a>_1_2 q c q q |
  f8_4 <a c>_1_2 q a,_5 <c e>_1_3 q |\break
  
  f8_5 <a c>_1_2 q f q q |
  d8_5 <f a>_1_3 q f_5 <bes d>_1_2 q |
  d,8_5 <g bes>_1_2 q d q q |
  c8_5 <f a>_1_2 q c q q |\break
  
  f8_4 <a c>_1_2 q f q q |
  f8 q q c <g' bes> q |
  c,8_5 <f a>_1_2 q c q q |
  f8_4 <a c>_1_2 q c,_5 <e g >_1_2 q |\break
  
  d8_4 <f a>_1_2 q d q q |
  d8 q q c_5 <e g>_1_3 q |
  d8_4 <f a>_1_2 q a,_5 <c e>_1_3 q |
  c8_5 <e g>_1_3 q c q q |\break
  
  f,8_5\< <f' a c>_1_2_4 q f, q16 q q8\! |
  f8\mf q q f q q |
  a8_5 <c e>_1_3 q f,_5 <f' a c>_1_3_5 q |
  f,8 q q f q q |\break
  
  f8_5 <d' f a>_1_2_4 q f,_5 <a c e>_1_2_4 q |
  f8_5 <f' bes d>_1_2_5 q f, q16 q q8 |
  c8_5 <d' g bes>_1_2_5 q c, q q |
  c'8_5 <e g>_1_3 q d_5 <f a>_1_3 q |\break
  
  d8 <g bes> q d q q |
  f,8_5( c'_2 f_1 a_2 g_3 f_4) |
  % --------------------------
  f,8_5( c'_2 f_1) f,( c' f) |
  f,8( c' f) f,( c' f) |\break
  
  f,8_5 ( bes_2 d_1) f,( bes d) |
  c,8_5( g'_2 c_1 a'_2 g_3 f_4) |
  f,8_5( c'_2 f_1)  f,( c' f) |
  a,8_4( c_2 e_1) f,_5( bes_2 d_1) |\break
  
  f,8_5( c'_2 f_1) g,_4( bes_2 d_1) |
  g,8( bes d) g,8( bes d) |
  f,8_5( a_3 c_2  a'_1 g_2 f_1) |
  <c f>4._1_4~ q |\break
  
  % part 2
  f,16_5( c'_2 f_1 a_3 c8_2) f,,16( c' f a c8) |
  f,,16( c' f a c8) c,,16_5( g'_2 c_1 e_3 g8_2) |
  f,16_5( c'_2 f_1 a_3 c8_2) f,,16_5( bes_2 d_1 g_2 bes8_1) |\break
  
  c,,16_5( g'_2 c_1 e_3 g8_2) c,,16( g' c e g8) |
  g,16_5( d'_2 g_1 bes_3 d8_2) f,,16( c' f a c8) |
  g,16( d' g bes d8) d,,16_5( a'_2 d_1 f_3 a8_2) |
  c,,16_5( g'_2 c_1 e_3 g8_2) f,16( c' f a c8) |\break
  
  a,16_5( e'_2 a_1 c_3 e8_2) a,,16( e' a c e8) |
  f,,16_5( c'_2 f_1 a_3 c8_2) f,,16_5( a_2 c_1 f_3 a8_2) |
  f,16_5( c'_2 f_1 a_3 c8_2) c,,16( g' c e g8) |
  f,16( c' f a c8) c,16_5( g'_2 c_1 e_3 g8_2) |\break
  
  d,,16_5( a'_2 d_1 f_3 a8_2) d,,16( a' d f a8) |
  f,16( c' f a c8) f,,16( c' f a c8) |
  f,,16( c' f a c8) d,,16( a' d f a8) |
  c,,16_5( g'_2 c_1 e_3 g8_2) c,,16( g' c e g8) |\break
  
  f,16_5( c'_2 f_1 g_3 a8_2) f,16( c' f g a8) |
  f,16_5( c'_2 f_1 c_5 a'8_1) f,16( c' f c a'8) |
  f,16( c' f c a'8) f,16( c' f c a'8) |
  f,16( c' f c a'8) f,16( c' f c a'8) |\break
  
  f,16( c' f c a'8) d,,16( a' d a f'8) |
  d,16( a' d a f'8) d,16( a' d a f'8) |
  g,16_5( c_2 f_1 c_5 a'8_1) c,,16_5( g'_2 c_1 g_5 e'8_1) |
  c,16( g' c g e'8) f,16( c' f c a'8) |\break
  
  g,16_5( d'_2 g_1 d_5 bes'8_1) g,16( d' g d bes'8) |
  f,16_5( c'_2 f_1 c_3 a'8_1) <f, c'>4._1_5 |\break
  % --------------------------
  % part 3
  f16_5( c'_2 f_1 a_3 c8_2) f,,16( c' f a c8) |
  f,,16( c' f a c8) c,,16_5( g'_2 c_1 e_3 g8_2) |
  f,16_5( c'_2 f_1 a_3 c8_2) f,,16_5( bes_2 d_1 g_2 bes8_1) |\break
  
  c,,16_5( g'_2 c_1 e_3 g8_2) c,,16( g' c e g8) |
  g,16_5( d'_2 g_1 bes_3 d8_2) f,,16( c' f a c8) |
  g,16( d' g bes d8) d,,16_5( a'_2 d_1 f_3 a8_2) |
  c,,16_5( g'_2 c_1 e_3 g8_2) f,16( c' f a c8) |\break
  
  a,16_5( e'_2 a_1 c_3 e8_2) a,,16( e' a c e8) |
  f,,16_5( c'_2 f_1 a_3 c8_2) f,,16_5( a_2 c_1 f_3 a8_2) |
  f,16_5( c'_2 f_1 a_3 c8_2) c,,16( g' c e g8) |
  f,16( c' f a c8) c,16_5( g'_2 c_1 e_3 g8_2) |\break
  
  d,,16_5( a'_2 d_1 f_3 a8_2) d,,16( a' d f a8) |
  f,16( c' f a c8) f,,16( c' f a c8) |
  f,,16( c' f a c8) d,,16( a' d f a8) |
  c,,16_5( g'_2 c_1 e_3 g8_2) c,,16( g' c e g8) |\break
  
  f,16_5( c'_2 f_1 g_3 a8_2) f,16( c' f g a8) |
  f,16_5( c'_2 f_1 c_5 a'8_1) f,16( c' f c a'8) |
  f,16( c' f c a'8) f,16( c' f c a'8) |
  f,16( c' f c a'8) f,16( c' f c a'8) |\break
  
  f,16( c' f c a'8) d,,16( a' d a f'8) |
  d,16( a' d a f'8) d,16( a' d a f'8) |
  g,16_5( c_2 f_1 c_5 a'8_1) c,,16_5( g'_2 c_1 g_5 e'8_1) |
  c,16( g' c g e'8) f,16( c' f c a'8) |\break
  
  g,16_5( d'_2 g_1 d_5 bes'8_1) g,16( d' g d bes'8) |
  f,16_5( c'_2 f_1 c_3 a'8_1) <f, c'>4._1_5 |
  %--------------
  
  f8_5 <f' a c>_1_2_4 q f, q q |\break
  
  f8 q q f q q |
  f8 q q f q q |
  f8 q q f q q |
  f8_5 <f' bes d>_1_2_5 q f, q q |\break
  
  f8 q q c <c' e g> q |
  c,8 q q f <f' a c> q |
  <c, e g c>4._1_2_4_5 <g'' bes d>_1_2_4 |
  <f a c f>4._1_2_3_5\fermata~ q |\bar "|."
}

text = \lyricmode {
  _ _ _ _ _ |
  _ _ _ _ |
  _ _ _ _ _ _ |
  _ |\break
  
  _ _ _ _ _ |
  _ _ _ _ |
  _ _ _ _ _ _ |
  _ _ _ |\break
  
  _ |
  % \set ignoreMelismata = ##t
  我 和 我 的 祖 国, |
  一 刻 也 不 能 分 割。 |
  不 论 我 走 到 哪 里， |
  都 流 出 一 首 赞 歌。 |
  我 歌 唱 每 一 座 高 山， |
  我 歌 唱 每 一 条 河。 |
  袅 袅 炊 烟， |
  小 小 村 落， |
  路 上 一 道 辙。 |
  啦 啦 啦 啦 啦 啦 |
  啦 啦 啦 啦， % |
  啦 啦 啦 |
  啦 啦 啦 啦 啦 啦 |
  啦。 |
  你 用 你 那 |
  母 亲 的 温 情， |
  和 我 诉 说。 |
  _ _ _ _ _ |
  _ _ _ _ |\break
  
  _ _ _ _ _ _ |
  _ |
  _ _ _ _ _ |
  _ _ _ _ |\break
  
  _ _ _ _ _ _ |
  _ _ _ |
  _ |
  | \break
  
  我 的 祖 国 和 我， |
  像 海 和 浪 花 一 朵。 |
  浪 是 那 海 的 赤 子， |
  海 是 那 浪 的 依 托。 |
  每 当 大 海 在 微 笑， |
  我 就 是 笑 的 漩 涡。 |
  我 分 担 着， |
  海 的 忧 愁， |
  分 享 海 的 欢 乐。 |
  啦 啦 啦 啦 啦 啦 |
  啦 啦 啦 啦， % |
  啦 啦 啦 |
  啦 啦 啦 啦 啦 啦 |
  啦。 |
  永 远 给 我，
  碧 浪 清 波， 心 中 的 歌。
  %----
  
  我 和 我 的 祖 国, |
  一 刻 也 不 能 分 割。 |
  不 论 我 走 到 哪 里， |
  都 流 出 一 首 赞 歌。 |
  我 歌 唱 每 一 座 高 山， |
  我 歌 唱 每 一 条 河。 |
  袅 袅 炊 烟， |
  小 小 村 落， |
  路 上 一 道 辙。 |
  啦 啦 啦 啦 啦 啦 |
  啦 啦 啦 啦,  % |
  啦 啦 啦 |
  啦 啦 啦 啦 啦 啦 |
  啦。 |
  永 远 给 我，
  碧 浪 清 波， 心 中 的 歌。 |
  啦 啦 啦 啦 啦 啦 |\break
  
  啦 啦 啦 啦， % |
  啦 啦 啦 |
  啦 啦 啦 啦 啦 啦 |
  啦 |\break
  
  永 远 给 我，
  碧 浪 清 波， 心 中 的 歌！ |
  
}

\score {
  \keepWithTag #'pdf
  % \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "upper" { \new Voice = "singer" \upper }
    \new Lyrics \lyricsto "singer" \text
    \new Staff = "lower" \lower
  >>
  \layout {
    % indent = 0\cm
    \context {
      \Lyrics
      \override LyricText.font-name = #"楷体"
    }
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
  \line { 
    原谱来自：\with-url #"http://www.jianpu.cn/pu/23/231415.htm" {
      歌谱简谱网（http://www.jianpu.cn/pu/23/231415.htm）
  } }
  \line {修改点：}
  \line {1、高音谱指法统一在上方；低音谱指法统一在下方。}
  \line {2、修改三段高音谱，都使用相同的指法。}
  \line {3、为了方便比较代码，第二、三段还是按照第一段的方式进行分行（而不是按照原谱进行分行）。}
  \vspace #1
  \line {
    听歌曲： 
    \with-url #"https://music.163.com/#/song?id=257350" {
      "网易云音乐（https://music.163.com/#/song?id=257350）"
  } }
} }
