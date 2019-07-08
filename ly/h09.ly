\version "2.18.2"

\paper {indent = 0}

\header {
  title = "昇龍の夢"
  subtitle = "平成9年度寮歌"
  composer = "石井英一君 作曲"
  poet = "長谷川健君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 100
  \autoBeamOn
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 4/4 
  e8. e16 e8. e16 e2~ | 
  e1 | 
  fis8. fis16 e8. e16 cis8. b16 a8. cis16 | 
  e8. e16 e8. e16 e2 | \break
  fis8. a16 a8. b16 a2~ | 
  a4. fis8 a8. fis16 cis8. d16 | 
  e8. e16 e4~ e2~ | 
  e1 | \break
  d8. d16 cis8. cis16 b8.b16 a4 | 
  a8. a16 a8. a16 a2 | 
  d8. d16 d8. d16 fis8. fis16 fis8. fis16 | 
  a8. a16 a8. b16 a4 cis8. b16 | \break
  a8. a16 a4~ a2~ | 
  a2~ a8. fis16 e8. cis16 | 
  e8. e16 e8. e16~ e2~ | 
  e1 | \break
  fis8. a16 a8. b16a2~ | 
  a1~ | 
  a4 a8. gis16 a8. a16 g8. a16 | 
  fis1~ | \break
  fis2.~ fis8. cis16 | 
  a8. a16 a2.~ | 
  a1 | 
  b'8. b16 b8. b16 e2~ | \break
  e2~ e8. e16 d8. cis16 | 
  d8. cis16 a4~ a2~ | 
  a2. a8. a16 | 
  b8. b16 b8. b16 e,2 | \break
  r2 fis8. a16 a8. b16 | 
  a1~ | 
  a | \break
  %
  % ここから繰り返し
  %
  e8. e16 e8. e16 e2~ | 
  e1 | 
  fis8. fis16 e8. e16 cis8. b16 a8. cis16 | 
  e8. e16 e8. e16 e2 | \break
  fis8. a16 a8. b16 a2~ | 
  a4. fis8 a8. fis16 cis8. d16 | 
  e8. e16 e4~ e2~ | 
  e1 | \break
  d8. d16 cis8. cis16 b8.b16 a4 | 
  a8. a16 a8. a16 a2 | 
  d8. d16 d8. d16 fis8. fis16 fis8. fis16 | 
  a8. a16 a8. b16 a4 cis8. b16 | \break
  a8. a16 a4~ a2~ | 
  a2~ a8. fis16 e8. cis16 | 
  e8. e16 e8. e16~ e2~ | 
  e1 | \break
  fis8. a16 a8. b16a2~ | 
  a1~ | 
  a4 a8. gis16 a8. a16 g8. a16 | 
  fis1~ | \break
  fis2.~ fis8. cis16 | 
  a8. a16 a2.~ | 
  a1 | 
  b'8. b16 b8. b16 e2~ | \break
  e2~ e8. e16 d8. cis16 | 
  d8. cis16 a4~ a2~ | 
  a2. a8. a16 | 
  b8. b16 b8. b16 e,2 | \break
  r2 fis8. a16 a8. b16 | 
  a1~ | 
  a2. a8. a16 | 
  b8. b16 b8. b16 b2~ |
  b2 b8. b16 cis8. cis 16 | 
  d8. cis16 a4~ a2~ | 
  a2. a4 | \break
  b8. b16 b8. b16 b8. b16 b8. cis16 | 
  e2 fis,8. a16 a8. b16 | 
  a1~ | 
  a2. a4 | \break
  b8. b16 b8. b16 b8. b16 b8. cis16 | 
  e2 fis,8. a16 a8. b16 | 
  a1~ | 
  a
  \bar "|." | 
}

text = \lyricmode {
  か す み こ めー た ー け き は や し を ぬ け い で て 
  た ど り つ きー し わ が ふ る さ と のー
  か き ね は さ ん が ひ は お ち て 
  お お い な る う み に つ き は ゆ る 
  ふ る き よ きー ち か ら づ よ き ー 
  ふ る さ と にー は ぐ く ま れ しー
  あ あ わ れ はー ふ え の お もー い ひ き さ げ てー
  りゅ う の ご と く に の ぼ り ゆ くー
  し か れ ど も い つ し か そ れ も み を う つ し ー
  む か し を し の ぶ こ の わ れ に ー
  と き の な が れ を か ん じ つ つ
  い ー ま ー あ た り を み わ た せ ば あ た ら し き
  せ~か い の ひ ろ が り あ た ら し き
  も の こ こ に み て わ れ お も_う
  か れ の お も い ひ き さ げ て
  わ か き ち か ら で の ぼ り ゆ け
  ふ と あ お ぎ み る く れ な い ぞ ら に
  りゅう の く も は か た く ず し な が れ ゆ く
  りゅう の く も は か た く ず し な が れ ゆ く
}

harmony = \chordmode {
}

drum = \drummode{
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd1 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd1 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd1 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd1 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
  bd8. bd16 bd8. bd16 bd8. bd16 bd8. bd16 | 
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
     \new DrumStaff \with{
      \remove "Time_signature_engraver"
      drumStyleTable = #percussion-style
      \override StaffSymbol.line-count = #1
      \hide Stem
    }
    \drum
  >>
  
\midi {}
\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

}
