\version "2.18.2"

\paper {indent = 0}

\header {
  title = "天地人"
  subtitle = "平成10年第90回記念祭歌"
  composer = "長谷川健君 作曲"
  poet = "一谷英樹君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 90
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key a \major
  \time 2/4
  \set melismaBusyProperties = #'()
  cis8. [cis16] cis8. [e16] |
  fis4 b,8. [b16] |
  a8. [a16] a8. [b16] |
  a8. [a16] a8 r8 | \break
  cis8. [cis16] cis8. [e16] |
  fis4 b,8. [b16] |
  a8. [a16] a8. [b16] |
  a4. r8 | \break
  gis'8. [gis16] gis8. [gis16] |
  gis4 e8. [gis16] |
  a8. [a16] gis8. [gis16] |
  fis8. [fis16] e4 | \break
  fis4 e4 |
  b8. [cis16] b8. [a16] |
  b2~ |
  b4 r4 | \break
  gis'8. [gis16] gis8. [gis16] |
  fis4 e8. [gis16] |
  a8. [a16] gis8. [gis16] |
  fis8. [gis16] e4 | \break
  fis4 fis4 |
  fis4 b4 |
  b2~ |
  b4 r4 | \break
  cis8. [cis16] cis8. [cis16] |
  cis8. [b16] a4 |
  fis8. [fis16] fis8. [cis'16] |
  d4. r8 | \break
  d8. [d16] cis8. [cis16] |
  b8. [b16] cis8. [cis16] |
  r8 r16 e,16 e8. [b'16] |
  a4. r8
  \bar "|."
}

text = \lyricmode {
  こ う て ん か な た お お わ し ま い て
  あ か ね さ す あ さ ひ も は ゆ る
  て ん よ り お つ る カ ム イ の ば く ふ
  ち に と ど ろ く や 　
  や き た か ま り て ぎ ん か ん の ほ し
  き ら め く や 　 
  ほ く て ん の ぞ み こ こ の そ じ
  お お い な る ち か ら も と め ん
}

harmony = \chordmode {
  a2 b:m d a
  a d d a
  cis:m cis:m fis:m fis:m
  d:m b:m e e
  cis:m cis:m fis:m fis:m
  b:m b:m e e
  a b:m d e
  b:m e a a
}

\score {
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