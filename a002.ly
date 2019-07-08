\version "2.18.2"

\paper {indent = 0}

\header {
  title = "朝葉末の"
  subtitle = "第3期卒業生贈桜星会歌"
  composer = "角倉邦彦君 作曲"
  poet = "加藤義夫君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 2/4
  \set melismaBusyProperties = #'()
  \mark \markup \small "中庸に"
  d8. e16 ( fis8 ) g8 |
  d8. g16 b8. a16 |
  a8 a8 g8 a8 |
  b4. r8 | \break
  d4 e8 d8 |
  b8 b8 g8 g8 |
  a8 a8 d,8 d8 |
  g4. r8 | \break
  a8. a16 b8 a8 |
  b8 d8 a4 |
  d8. d16 b8 g16 ([ b16 )] |
  a4. r8 | \break
  b4 g8 b8 |
  d8. d16 b8. b16 |
  g8. g16 e8. e16 |
  d4. r8 | \break
  d8. d16 a'8 g8 |
  d8 b'8 d,4 |
  g8. ([ fis16 )] g8 b8 |
  a4. r8 | \break
  d,8 d8 g8 g8 |
  a8 a8 b4 |
  a8 a8 d,8 d8 |
  g4. r8
  \bar "|."
}

text = \lyricmode {
  あ し ー た は ず え の つ ゆ を う け、
  ゆ う べ き ち~ょ う の か げ や ど し、
  あ け ぼ の に お う い し か り ー に、
  た ま の い ず み と わ き し よ り、
  お も え ば こ こ に み ー と せ の、
  す ぎ に し あ と を し の ぶ か な。
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


