\version "2.18.2"

\paper {indent = 0}

\header {
  title = "快速エアポート"
  subtitle = "平成24年度寮歌"
  composer = "丸田潤君 作曲"
  poet = "丸田潤君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 140
  %\autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key e \major 
  \time 2/4
  gis'8[ g] gis[ g] | 
  gis gis4 e8 | 
  fis fis fis gis | 
  fis4 r8 e~ | 
  e[ e] e[ e] | 
  e[ cis] cis[ cis] |
  dis[ dis] dis[ e] | 
  dis4 r | 
  cis8[ c] cis[ e~] | \break
  e[ cis] cis[ cis] | 
  b[ b] e[ fis] | 
  gis4 r | 
  fis8 fis4 fis8 | 
  fis8[ e] cis[ cis] | 
  dis[ dis] e[ f] | 
  fis4 r | 
  gis8[ gis] g[ gis~] | \break
  gis[ g] gis[ g] | 
  gis[ g] gis[ g] | 
  gis4 r8 cis,~ | 
  cis[ cis] dis[ dis] | 
  e[ e] fis[ e] | 
  gis[ g] fis[ e~] | 
  e4 r8 cis | \break
  cis[ e] gis[ fis] | 
  r b4 a8 | 
  gis[ a] gis[ e~] | 
  e4 r8 cis | 
  cis[ e] fis[ e] | 
  gis fis4 e8~ | 
  e2~ | 
  e4 r | \break
  cis8[ cis] dis[ dis] | 
  e4 b8[ cis~] | 
  cis[ cis] dis[ dis] | 
  e4 cis8[ cis] | 
  cis[ b] b[ gis] | 
  b4 r8 cis~ | 
  cis[ b] b[ gis] | 
  b4 r | \break
  cis8[ cis] dis[ dis] | 
  e4 b8[ cis~] | 
  cis[ cis] dis[ dis] | 
  e[ e] fis[ fis(] | 
  gis[) g] gis[ g] | 
  gis[ a] r b~ | 
  b2~ | 
  b4 r | \break
  cis8[ cis] cis[ cis~] | 
  cis[ b] a[ gis] | 
  fis[ fis] gis[ fis~] | 
  fis4 r | 
  b8[ b] b[ b~] | 
  b[ a] gis[ fis] | 
  f[ f] fis[ gis~] | \break
  gis4 r | 
  a gis8[ e] | 
  a4 gis8[ e~] | 
  e[ fis] fis[ gis] | 
  \tuplet 3/2 {a4 gis fis} | 
  b b | 
  c8[ c] r b | 
  b2~ | 
  b4 r |
  % ここで繰り返し
  gis8[ g] gis[ g] | 
  gis gis4 e8 | 
  fis fis fis gis | 
  fis4 r8 e~ | 
  e[ e] e[ e] | 
  e[ cis] cis[ cis] |
  dis[ dis] dis[ e] | 
  dis4 r | 
  cis8[ c] cis[ e~] | \break
  e[ cis] cis[ cis] | 
  b[ b] e[ fis] | 
  gis4 r | 
  fis8 fis4 fis8 | 
  fis8[ e] cis[ cis] | 
  dis[ dis] e[ f] | 
  fis4 r | 
  gis8[ gis] g[ gis~] | \break
  gis[ g] gis[ g] | 
  gis[ g] gis[ g] | 
  gis4 r8 cis,~ | 
  cis[ cis] dis[ dis] | 
  e[ e] fis[ e] | 
  gis[ g] fis[ e~] | 
  e4 r8 cis | \break
  cis[ e] gis[ fis] | 
  r b4 a8 | 
  gis[ a] gis[ e~] | 
  e4 r8 cis | 
  cis[ e] fis[ e] | 
  gis fis4 e8~ | 
  e2~ | 
  e4 r | \break
}

text = \lyricmode {
  か い そ く | 
  エア ポー ト | 
  ぼ く を の | 
  せ きー て き を | 
  な ら し て | 
  か け ぬ け | 
  る | 
  りょ こ う しゃー た ち は りょ う う で に | 
  し ろ い | 
  こ い び と | 
  さ げ て い | 
  る | 
  しゃ そ う なー が れ る | 
  ま ち を せ | 
  に カー ン バ の | 
  は や し を | 
  ぬ け れ ばー
  ぼ く は も う ひ と り ぼ っ ち
  さ ー よ な ら youth- ful days 
  お も い う か ぶ よ ね ん ま え の 
  は ー る の こ と あ の と き も
  ぼ く は ひ と り こ の れ っ しゃ に
  ゆ ー ら れ て い た よ 
  き ぼ う に ふ く ら む ゆ め と
  い ち ぶ の ふ あ ん か か え て
  ゆ き の の こ る ま ど の そ と を
  な が め て た
}

harmony = \chordmode {
  
}

drum = \drummode{
  
}

\score {
  <<
    % ギターコード
    %{
    \new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}{
      \set chordChanges = ##t
      \harmony
    }
    %}
    
    % メロディーライン
    \new Voice = "one"{\melody}
    % 歌詞
    \new Lyrics \lyricsto "one" \text
    % 太鼓
    % \new DrumStaff \with{
    %   \remove "Time_signature_engraver"
    %   drumStyleTable = #percussion-style
    %   \override StaffSymbol.line-count = #1
    %   \hide Stem
    % }
    % \drum
  >>

  \midi {}
  \layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
}

