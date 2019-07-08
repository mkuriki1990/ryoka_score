\version "2.18.2"

\paper {indent = 0}

\header {
  title = "あらうれし"
  subtitle = "大正元年桜星会歌"
  composer = "柳沢秀雄君 作曲"
  poet = "横山芳介君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c''{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 4/4
  \set melismaBusyProperties = #'()
  d16 b8. a16 b8. g4 r4 |
  d'8. b16 b8. a16 a8. g16 g8. b16 |
  b8. a16 g8. e16 d4 r4 | \break
  d8. g16 b2. |
  e,8. a16 d,2. |
  a'8. a16 a2. |
  g8 d'16 b16 a2. | \break
  r8 d,8 g8. a16 b2 |
  c8 b16 a16 b2 d8. e16 |
  b2 ~ b8 a8 a8. b16 | \break
  g2. r4 |
  d'2 cis4. d8 |
  b4 a8. g16 g2 |
  d8 e8 a2 c4 | \break
  c4 b8 b4. b8. a16 |
  e2 fis2 |
  g2. r4 |
  d'4 e8. ([ d16 ]) b2 | \break
  a8. ([ b16 )] a8. g16 d2 |
  e4. e8 d8 ([ g8 )] e8 ([ d8 )] |
  d'2. d,4 | \break
  g4. b8 d4 d8 e8 |
  b2. b4 |
  a4. a8 b4 c4 |
  e4 d2. \fermata
  \bar "|."
}

text = \lyricmode {
  あ ら う れ し わ れ ら が い の ち は、 わ か け れ ば、
  あ つ き ち し お、 つ よ き ち か ら に
  み な ぎ る は る ひ の、 ひ か り ー ぞ、 に お
  う。 あ わ れ、 わ が と も さ く ら と
  ほ し に、 あ け く れ を、 ち ぎ ー り
  か ー た め て と も ど ー も ー に、 ま
  な ぶ は、 う れ し、 う つ く し き く に。
}

harmony = \chordmode {
}

\score {
  <<
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


