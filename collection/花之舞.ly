\version "2.18.2"

songName = "花之舞"
\include "../lib/paper-footer.ily"

\header {
  title = \songName
  subtitle = "Flower Dance"
  composer = "DJ Okawari 曲"
  meter = "快板"
}

keyTime = {
  \key b \major
  \time 4/4
  \numericTimeSignature
}

upper_one = \relative c' {
  <dis' gis ais dis>1\arpeggio
}

upper_one_midi = \relative c' {
  \set tieWaitForNote = ##t
  \grace { dis'8~[ gis~ ais~ dis~ ] } <dis, gis ais dis>1\arpeggio
  \unset tieWaitForNote
}


upper_two = \relative c' {
  <ais' cis fis>4\arpeggio
}

upper_two_midi = \relative c' {
  \set tieWaitForNote = ##t
  \grace { ais'16~[ cis~ fis~ ] } <ais, cis fis>4\arpeggio
  \unset tieWaitForNote
}

upper_gd = \relative c' {
  <gis'' dis'>4\arpeggio
}

upper_gd_midi = \relative c' {
  \set tieWaitForNote = ##t
  \grace { gis''16~[ dis'~ ] } <gis, dis'>4\arpeggio
  \unset tieWaitForNote
}

upper_gbd = \relative c' {
  <gis' b dis>4\arpeggio
}

upper_gbd_midi = \relative c' {
  \set tieWaitForNote = ##t
  \grace { gis'16~[ b~ dis~ ] } <gis, b dis>4\arpeggio
  \unset tieWaitForNote
}

upper_bdg = \relative c' {
  <b''' dis gis>4\arpeggio
}

upper_bdg_midi = \relative c' {
  \set tieWaitForNote = ##t
  \grace { b'''16~[ dis~ gis~ ] } <b, dis gis>4\arpeggio
  \unset tieWaitForNote
}


upper = \relative c'' {
  \clef treble
  \keyTime
  \tempo 4=80
  
  dis8 cis gis' cis, dis cis gis cis |
  dis8 cis gis' cis, dis cis gis cis |
  dis8 cis gis' cis, dis cis gis cis |
  dis8 cis gis' cis, dis cis gis cis |\break
  
  % 5
  dis8 cis gis' cis, dis cis gis cis |
  dis8 cis gis' cis, dis cis gis cis |
  dis8 cis gis' cis, dis cis gis' cis, |
  \tag #'pdf \upper_one
  \tag #'midi \upper_one_midi
  |\break
  
  % 9
  \tempo 4=100
  dis4 r16 gis, b dis <fis, ais cis>4  
  
  \tag #'pdf \upper_two
  \tag #'midi \upper_two_midi
  |
  <ais cis>8. ais'16 gis8. g16  gis4 dis' |
  gis,4 
  \tag #'pdf \upper_gd
  \tag #'midi \upper_gd_midi
  cis8 \tuplet 3/2 { cis16 dis cis } ais8 fis |
  gis2. r8 dis |\break
  
  % 13
  \tag #'pdf \upper_gbd
  \tag #'midi \upper_gbd_midi
  r16 gis, b dis  <fis, ais cis>4 <ais cis fis> |
  <ais cis>8  <ais g'>  gis' ais  dis,16 b' cis, ais' b, gis' ais, fis' |
  gis16 dis' cis dis  gis, dis' cis dis  gis, dis' cis dis gis, dis' cis dis |
  gis,16 dis' bis dis gis, dis' bis dis  gis, dis' bis dis gis,8 dis |\break
  
  % 17
  b'16 dis, ais' dis, b' dis, cis' dis, ais' ais, gis' ais, fis'8 dis16 fis |
  gis16 b, fis' b, gis' b, b' b, fis' b, e b dis8 dis16 fis |
  e16 gis, dis' gis,  cis gis e' gis,  dis' dis, cis' dis, b' dis, dis' dis, |
  cis'16 e, b' e, ais e gis e  <cis e g>8-. <cis e gis>-. <cis e ais> dis |\break
  
  % 21
  b'16 dis, ais' dis,  b' dis, cis' dis,  ais' ais, gis' ais,  fis' ais, dis fis |
  gis16 b, fis' b,  gis' b, gis' b fis b, e b  dis8 dis16 fis |
  e8 e'16 dis cis b ais8 dis16 cis dis e dis cis b ais |
  gis8 dis' g,  dis'  gis,2 |\break
  
  % 25
  \tag #'pdf \upper_gbd
  \tag #'midi \upper_gbd_midi
  r16 gis b dis   <fis, ais cis>4    <ais cis fis> |
  <ais cis>8. ais'16   gis8. g16   gis4   dis' |
  gis,4   
  \tag #'pdf \upper_gd
  \tag #'midi \upper_gd_midi
  cis8 \tuplet 3/2 { cis16 dis cis }    ais8 fis |
  gis2.   r8 dis |\break
  
  % 29
  \tag #'pdf \upper_gbd
  \tag #'midi \upper_gbd_midi
  r16 gis, b dis   <fis, ais cis>4   <ais cis fis> |
  <ais cis>8 <ais g'> gis' ais   dis,16 b' cis, ais'   b, gis' ais, fis' |
  gis16 dis' cis dis   gis, dis' cis dis   gis, dis' cis dis   gis, dis' cis dis |
  gis,16 dis' bis dis   gis, dis' bis dis   gis, dis' bis dis   gis,4 |\break
  
  % 33
  \tag #'pdf \upper_gbd
  \tag #'midi \upper_gbd_midi
  r16 gis, b dis   <fis, ais cis>4   <ais cis fis> |
  <ais cis>8. ais'16   gis8. g16   gis4   dis' |
  gis,4   
  \tag #'pdf \upper_gd
  \tag #'midi \upper_gd_midi
  cis8 \tuplet 3/2 { cis16 dis cis }   ais8 fis |
  gis2.   r8 dis |\break
  
  % 37
  \tag #'pdf \upper_gbd
  \tag #'midi \upper_gbd_midi
  r16 gis, b dis   <fis, ais cis>4   <ais cis fis> |
  <ais cis>8 <ais g'> gis' ais   dis,16 b' cis, ais'   b, gis' ais, fis' |
  gis16 dis' cis dis   gis, dis' cis dis   gis, dis' cis dis   gis, dis' cis dis |
  gis,16 dis' bis dis   gis, dis' bis dis   gis, dis' bis dis   gis,8 dis |\break
  
  % 41
  b'16 dis, ais' dis,   b' dis, cis' dis,   ais' ais, gis' ais,   fis'8 dis16 fis |
  gis16 b, fis' b,   gis' b, b' b,   fis' b, e b   dis8 dis16 fis |
  e16 gis, dis' gis,   cis gis e' gis,   dis' dis, cis' dis,   b' dis, dis' dis, |
  cis'16 e, b' e,   ais e gis e   <cis e g>8-. <cis e gis>-. <cis e ais> dis |\break
  
  % 45
  b'16 dis, ais' dis,   b' dis, cis' dis,   ais' ais, gis' ais,   fis' ais, dis fis |
  gis16 b, fis' b,   gis' b, gis' b   fis b, e b   dis8 dis16 fis |
  e8 e'16 dis   cis b ais8   dis16 cis dis e   dis cis b ais |
  gis8 dis' g, dis'   gis,2 |\break
  
  % 49
  gis'16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   ais' b, fis' b,   gis' b, fis' b, dis b fis' b, |
  gis'16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   cis' cis, dis' dis,   cis' cis, b'4 gis8 |\break
  
  % 53
  gis16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   ais' b, fis' b,   gis' b, fis' b,   dis b fis' b, |
  gis'16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis2.   r8 gis |\break
  
  % 57
  gis16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   ais' b, fis' b,   gis' b, fis' b,   dis b fis' b, |
  gis'16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   cis' cis, dis' dis,   cis' cis, b'4 gis8 |\break
  
  % 61
  % 除第一个音符外，其它同 53-56 小节
  r16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   ais' b, fis' b,   gis' b, fis' b,   dis b fis' b, |
  gis'16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis2.   r8 gis |\break
  
  % 65
  % 同 57-60 小节
  gis16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   ais' b, fis' b,   gis' b, fis' b,   dis b fis' b, |
  gis'16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   cis' cis, dis' dis,   cis' cis, b'4 gis8 |\break
  
  % 69
  gis16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais | % 同 65 节
  gis16 b, b' b,   ais' b, fis' b,   gis' b, fis' ais,   dis gis, fis' fis, | % 前3小段同 66 节， 最后1段不同
  gis'8 b,   gis'16 b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis,,16 b dis gis   b dis gis b  \ottava #1 \set Staff.ottavation = #"8va" dis gis b dis
  \tag #'pdf \upper_bdg
  \tag #'midi \upper_bdg_midi
  \ottava #0 | \break
  
  % 73
  gis,,16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   ais' b, fis' b,   gis' b, fis' b,   dis b fis' b, |
  gis'16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   cis' cis, dis' dis,   dis' dis, dis' dis,   dis' dis, fis' fis, |\break
  
  % 77
  \ottava #1 \set Staff.ottavation = #"8va"
  gis'16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  gis16 b, b' b,   ais' b, fis' b,   gis' b, fis' ais,   dis gis, fis' fis, |
  gis'16 gis, b dis   gis b, dis gis   ais cis, dis gis   ais cis, b' ais |
  \ottava #0
  gis,,,16 b dis gis   b dis gis b   \ottava #1 \set Staff.ottavation = #"8va" dis gis b dis
  \tag #'pdf \upper_bdg
  \tag #'midi \upper_bdg_midi
  \ottava #0 |
  r2    r16 cis,, dis b'   ais gis ais g |\break
  
  % 82
  b16 dis, ais' dis,   b' dis, cis' dis,   ais' ais, gis' ais,   fis'8 dis16 fis |
  gis16 b, fis' b,   gis' b, b' b,   fis' b, e b   dis8 dis16 fis |
  e16 gis, dis' gis,   cis gis e' gis,   dis' dis, cis' dis,   b' dis, dis' dis, |
  cis'16 e, b' e,   ais e gis e   <cis e g>8-. <cis e gis>-. <cis e ais> dis |\break
  
  % 86
  b'16 dis, ais' dis,   b' dis, cis' dis,   ais' dis, gis dis   fis ais, dis fis |
  gis16 b, fis' b,   gis' b, gis' b   fis b, e b   dis8 dis16 fis |
  e8 e'16 dis   cis b ais8   dis16 cis dis e   dis cis b ais |
  gis8 dis' g, dis'   gis,4. gis8 |\break
  
  % 90
  b16 dis, ais' dis,   b' dis, cis' dis,   ais' ais, gis' ais,   fis' ais, dis fis |
  gis16 b, fis' b,   gis' b, gis' b   fis b, e b   dis8 dis16 fis |
  e8 e'16 dis   cis b ais8   dis,8 dis'16 cis   b ais gis8 |
  r8 e''16 dis   cis b ais gis   g dis cis b   ais gis g dis |\break
  
  % 94 
  b'16 dis, ais' dis,   b' dis, cis' dis,   ais' ais, gis' ais,   fis' ais, dis fis |
  gis16 b, fis' b,   gis' b, gis' b   fis b, e b   dis8 dis16 fis |
  e8 e'16 dis   cis b ais8   dis16 cis dis e   dis cis b ais |
  gis8 dis' g, dis'   gis,2 |\break
  
  % 98
  dis'8 cis gis' cis,   dis cis gis cis |
  \tempo 4=95
  dis8 cis gis' cis,   dis cis gis cis | % 同 98 节
  dis16 <ais' cis> <b dis>8   gis cis,   dis cis gis cis |
  dis8 cis gis' cis,   dis cis gis cis |\break
  
  % 102
  % 同 98-101，只有最后一个音多了修饰
  \tempo 4=90
  dis8 cis gis' cis,   dis cis gis cis |
  \tempo 4=85
  dis8 cis gis' cis,   dis cis gis cis |
  \tempo 4=78
  dis16 <ais' cis> <cis, b' dis>8   gis' cis,   dis cis gis cis |
  dis8 cis gis' cis,   dis cis gis cis\fermata |\bar "|."
}


lower_one = \relative c {
  <gis, gis'>1\arpeggio
}

lower_one_midi = \relative c {
  \set tieWaitForNote = ##t
  \grace { gis,8~ [ gis'~ ] } <gis, gis'>1\arpeggio 
  \unset tieWaitForNote
}


lower_two = \relative c {
  <gis' dis' gis>2\arpeggio
}

lower_two_midi = \relative c {
  \set tieWaitForNote = ##t
  \grace { gis'8~ [ dis'~ gis~ ] } <gis, dis' gis>2\arpeggio 
  \unset tieWaitForNote
}


lower = \relative c {
  \clef bass
  \keyTime
  \override Hairpin.to-barline = ##f
  \dynamicUp
  
  e8 b' e fis gis4 e,, |
  fis'8 cis' fis gis ais4 fis,, |
  gis'8 dis' gis ais b4 gis,, |
  \clef treble
  r8 \ottava #1 \set Staff.ottavation = #"8va" dis'''' gis ais b  ais gis dis \ottava #0 | \break
  
  % 5
  \clef bass
  e,,,8 b' e fis gis4 <e,, e'> |
  fis'8 cis' fis gis ais4 <fis,, fis'> |
  gis'8 dis' gis ais b4 <gis,, gis'> |
  \tag #'pdf \lower_one
  \tag #'midi \lower_one_midi
  | \break
  
  % 9
  r8 b'4 r8 fis8 cis' fis4 |
  dis,8 ais' dis g   gis, dis' gis dis |
  e,8 b' e b   fis cis' fis cis |
  gis8 dis' gis ais b dis, gis4 |\break
  
  % 13
  e,8 b'4 r8   fis cis' fis4 |
  dis,8 ais' dis ais'  
  \tag #'pdf \lower_two
  \tag #'midi \lower_two_midi
  |
  e,8 b' e b   fis cis' fis cis |
  gis8 dis' gis ais    bis <gis, gis'> <dis dis'> <gis, gis'> |\break
  
  % 17
  <gis gis'>8 b'16 ais   cis b ais b    dis,8 <fis ais dis> q4 |
  <e, e'>8 gis'16 fis   gis8 b16 gis  b,8 <b' dis>~ <b dis fis> fis' |
  <cis,, cis'>8 e''16 dis   cis b ais8   <b,, b'> dis'16 cis   b ais gis fis |
  <ais, ais'>8 e''16 fis   gis ais b dis   <cis, cis'>8-. <b b'>-.   <ais ais'>4 |\break
  
  % 21
  <gis gis'>8 b'16 ais   cis b ais b   dis,8 <fis ais> fis4 |
  <e, e'>8 gis'16 fis   gis ais b gis   b,8 fis' b fis |
  e,8 e'16 dis   cis b ais8   <dis, dis'> <cis cis'> <b b'> <dis dis'> |
  <cis cis'>8 <b b'>   <ais ais'>8. <gis gis'>16   q8 dis'' gis4 |\break
  
  % 25
  <e, e'>8 e' <b' e> e,   <fis, fis'> fis' <cis' fis> fis,  |
  <dis, dis'>8 dis' g dis   <gis, gis'> gis' <dis' gis> gis, |
  <e, e'>8 e' <b' e> e,   <fis, fis'> fis' <cis' fis> fis, |
  <gis, gis'>8 gis' <b dis> gis   <b dis> <gis, gis'> <b' dis> gis |\break
  
  % 29
  <e, e'>8 e' <b' e> e,   <fis, fis'> fis' <cis' fis> fis, |
  <dis, dis'>8 dis' g dis   <gis, gis'> gis' <dis' gis> gis, |
  e,8 b'   <e gis>4   fis,8 cis'   <fis ais>4 |
  gis,8 dis' gis ais   bis4. fis8 |\break
  
  % 33
  % 同 25-28 节
  <e, e'>8 e' <b' e> e,   <fis, fis'> fis' <cis' fis> fis,  |
  <dis, dis'>8 dis' g dis   <gis, gis'> gis' <dis' gis> gis, |
  <e, e'>8 e' <b' e> e,   <fis, fis'> fis' <cis' fis> fis, |
  <gis, gis'>8 gis' <b dis> gis   <b dis> <gis, gis'> <b' dis> gis |\break
  
  % 37
  % 同 29-31 节
  <e, e'>8 e' <b' e> e,   <fis, fis'> fis' <cis' fis> fis, |
  <dis, dis'>8 dis' g dis   <gis, gis'> gis' <dis' gis> gis, |
  e,8 b'   <e gis>4   fis,8 cis'   <fis ais>4 |
  gis,8 dis' gis ais   bis <gis, gis'> <dis dis'> <gis, gis'> |\break
  
  % 41
  <gis' gis'>8 b'16 ais   cis b ais b   dis,8 <fis ais dis>   q4 |
  <e, e'>8 gis'16 fis  gis ais b gis   b,8 <b' dis>~ <b dis fis> fis' |
  <cis,, cis'>8 e''16 dis   cis b ais8   <b,, b'>8 dis'16 cis   b ais gis fis |
  <ais, ais'>8 e''16 fis   gis ais b dis   <cis, cis'>8-. <b b'>-.   <ais ais'>4 |\break
  
  % 45
  <gis gis'>8 b'16 ais   cis b ais b   dis,8 <fis ais>   fis4 |
  <e, e'>8 gis'16 fis   gis ais b gis   b,8 fis' b fis |
  e,8 e'16 dis   cis b ais8   <dis, dis'>8 <cis cis'> <b b'> <dis dis'> |
  <cis cis'>8 <b b'>   <ais ais'>8. <gis gis'>16   q8 dis''   gis4 |\break
  
  % 49
  e'4 e fis dis |
  gis4 dis gis, dis' |
  e4 gis fis dis |
  gis4 dis b' dis, |\break
  
  % 53
  e2 fis4 dis |
  gis4 dis gis dis |
  e2 fis4 dis |
  gis,8 dis' gis ais   b dis,   gis4 |\break
  
  % 57
  e,8 b' e b   fis cis' fis cis |
  gis8 dis' b' fis   gis, gis' dis b' |
  e,,8 b' e b   fis cis' fis cis |
  gis8 dis' gis dis   b' dis, gis dis |\break
  
  % 61
  e,8 b' e b   fis cis' fis cis | % 同 57 节
  gis8 dis' gis dis   b' dis, gis, dis' |
  e,8 b' e b   fis cis' fis cis | % 同 59 节
  <gis, gis'>8 gis' <b dis> gis   <b dis> <gis, gis'> <b' dis> gis |\break
  
  % 65
  e,16 b' e gis   b8 gis   fis,16 cis' fis ais   cis8 ais |
  dis,,16 fis ais dis   fis8 dis   gis,16 dis' gis b8 dis,16 <gis b>8 |
  e,16 b' e gis   b8 gis   fis,16 cis' fis ais    cis8 ais |
  <gis, gis'>8 gis' <b dis> gis   <b dis> <gis, gis'> <b' dis> gis |\break % 同 64 节
  
  % 69
  % 同 65-68 节
  e,16 b' e gis   b8 gis   fis,16 cis' fis ais   cis8 ais |
  dis,,16 fis ais dis   fis8 dis   gis,16 dis' gis b8 dis,16 <gis b>8 |
  e,16 b' e gis   b8 gis   fis,16 cis' fis ais    cis8 ais |
  gis,8 dis' gis dis   b' dis, gis dis |\break
  
  % 73
  e,16 b' e gis   b8 gis   fis,16 cis' fis ais   cis8 ais |
  dis,,16 fis ais dis   fis8 dis   gis,16 dis' gis b8 dis,16 <gis b>8 |
  e,16 b' e gis   b8 gis   fis,16 cis' fis ais   cis8 ais |
  <gis, gis'>8 gis' <b dis> gis   <b dis> <gis, gis'> <b' dis> gis |\break
  
  % 77
  % 同 73-75
  e,16 b' e gis   b8 gis   fis,16 cis' fis ais   cis8 ais |
  dis,,16 fis ais dis   fis8 dis   gis,16 dis' gis b8 dis,16 <gis b>8 |
  e,16 b' e gis   b8 gis   fis,16 cis' fis ais   cis8 ais |
  gis,8 dis' gis ais   b4 gis, |
  <gis, gis'>4 q q <g g'> |\break
  
  % 82
  <gis gis'>8 b'16 ais   cis b ais b   dis,8 <fis ais dis>   q4 |
  <e, e'>8 gis'16 fis   gis ais b gis   b,8 <b' dis>~ <b dis fis> fis' |
  <cis, cis'>8 e''16 dis   cis b ais8   <b,, b'>8 dis'16 cis   b ais gis fis |
  <ais, ais'>8 e''16 fis   gis ais b dis   <cis, cis'>8-. <b b'>-.   <ais ais'>4 |\break
  
  % 86
  <gis gis'>8 b'16 ais   cis b ais b   dis,8 <fis ais>   fis4 |
  <e, e'>8 gis'16 fis   gis ais b gis   b,8 fis' b fis |
  e,8 e'16 dis   cis b ais8   <dis, dis'>8 <cis cis'> <b b'> <dis dis'> |
  <cis cis'>8 <b b'>   <ais ais'>8. <gis gis'>16   q8 dis''   gis4 |\break
  
  % 90
  <gis, gis'>8 b'16 ais   cis b ais b   dis,8 <fis ais>   fis4 |
  <e, e'>8 gis'16 fis   gis ais b gis   b,8 fis' b fis |
  e,8 e'16 dis   cis b ais8   <dis, dis'>8 <cis cis'> <b b'> <dis dis'> |
  <gis cis e gis>2   <dis dis'>8 <f f'> <g g'> <dis dis'> |\break
  
  % 94
  <gis gis'>8 b'16 ais   cis b ais b   dis,8 <fis ais>   fis4 |
  <e, e'>8 gis'16 fis   gis ais b gis   b,8 fis' b fis |
  e,8 e'16 dis   cis b ais8   <dis, dis'>8 <cis cis'> <b b'> <dis dis'> |
  <cis cis'>8 <b b'>   <ais ais'>8. <gis gis'>16   q8 dis''   gis4 |\break
  
  % 98
  e8 b' e fis   gis4   e,, |
  fis'8 cis' fis gis   ais4   fis,, |
  gis'8 dis' gis ais   b4   gis,, |
  \clef treble
  r8 \ottava #1 \set Staff.ottavation = #"8va" dis'''' gis ais   b ais gis dis \ottava #0 |\break
  
  %102
  \clef bass
  e,,,8 b' e fis   gis4   <e,, e'> |
  fis'8 cis' fis gis   ais4   <fis,, fis'> |
  gis'8 dis' gis ais   b4 <gis,, gis'> |
  gis'1 |\bar "|."
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
    \context {
      \Score
      \override SpacingSpanner.common-shortest-duration =
        #(ly:make-moment 1/2)
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


\markup { 原谱来自：微信公众号“环球钢琴网”的文章《花之舞 — Flower Dance》}

\markup {网址: 
  \with-url #"https://mp.weixin.qq.com/s/sUIxeEGbuSb2PTtYTRXX5g" {
    https://mp.weixin.qq.com/s/sUIxeEGbuSb2PTtYTRXX5g
  }
}

