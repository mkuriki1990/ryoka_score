\version "2.18.2"

\paper {indent = 0}

\header {
  title = "折れたポプラよ"
  subtitle = "平成16年度寮歌"
  composer = "山口駿君 作曲"
  poet = "高橋直樹君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  %\autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \tempo 4 = 60
  \time 6/8
  \partial 8 g16( a) | 
  b4. b8[ d g] | 
  fis2 r8 e16[ d] | 
  e8.[ e16 e d] e4 d8 | \break
  d[ c b] a4 b16[ c] | 
  d4. b8[ d g] | 
  a2 r8 g16[ fis] | 
  e4. fis8[ e fis] | \break
  g2 r8 b,16[ b] | 
  e8.[ e16 e dis] e4 e16[ g] | 
  fis8[ e fis] d4 d16[ d] | 
  g16[ g8 g16 g a] b4 e,8 | \break
  c'8[ b g] a4 g8 | 
  fis4 r8 b,8[ ais b] | 
  g'8.[ e16 e fis] g4 g16[ g] | 
  fis4 b16[ fis] fis4 e16[ d] | \break
  e8.[ c16 c d] e4 e8 | 
  dis8.~[ dis16 dis e] fis4 ais,16[ b] | 
  g'8.[ e16 e fis] g4 g8 | 
  fis8.[ fis16 b fis] fis4 e16[ d] | \break
  c8.[ c16 c d] e4 e8 | 
  fis8.[ fis16 fis g] a4 a16[ g] | 
  fis16[ fis8 fis16 fis g] a4 dis,16[ c'] | 
  b8[ a g16 a] b4 e,16[ e] | \break
  c'8.[ c16 c b] c4 a16[ c] | 
  b4 b16[ a] g8.[ g16 g fis] | 
  e8[ e16 e d e] fis8.[ fis16 g a] | 
  g2 r4 | 
}

text = \lyricmode{
  お_れ | 
  た ポ プ ラ | 
  よ お ま | 
  え は な に を い | 
  わ ん と す さ け | 
  つ ぎ か わ | 
  し ほ ー | 
  し た ー よ | 
  の み あ | 
  げ た つ き の か た | 
  わ ー ら で お ま | 
  え の に お い が う つ ら な い ー ー
  し ん ぱ い 　 せ な や と も ど ち ー よ 
  と わ に か わ ら ず つ い_ー で や る 
  た と え こ の よ が か わ れ ど ー も 
  お れ や と も ら が う た う だ ろ う 
  い の ち の つ ぎ め が お わ れ ー ど ー も 
  し ん ぱ い せ な や と も ど ち ー よ 
  お ま え は 　 こ こ に い き て い る 
}

harmony = \chordmode{
  r8 g2. b:m c4. c:/b 
  a4.:m7 d:7 g2. b:m7 c4. d:7 
  g2. e:m b4.:m d:7 g e:m 
  a:m d:7 b2.:7 e:m b2.:m/d 
  c2. fis4.:m7 b:7 e2.:m b2.:m/d 
  c4. c:/b a4.:m7 d:7 b2.:7 e4.:m gis:dim
  a:m7 d:7 g4 b8:7 e4.:m a:m7 d:7 g2
}

\score{
  <<
    % ギターコード
    \new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}{
      \set chordChanges = ##t
      \harmony
    }
    
    % メロディーライン
    \new Voice = "one"{\melody}
    % 歌詞
    \new Lyrics \lyricsto "one" \text
    % 太鼓
    %\new DrumStaff \with{
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
