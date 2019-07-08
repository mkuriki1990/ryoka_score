\version "2.18.2"

\paper {indent = 0}

\header {
  title = "流るる光途"
  subtitle = "大正7年桜星会歌"
  composer = ""
  poet = ""
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
  d8. d16 d8. d16 |
  b'8. b16 g8. ~[ g16 ] |
  a8. a16 a8. a16 |
  d,4. r8 | \break
  e8. e16 d8. d16 |
  g8. a16 b4 |
  a8. a16 ( g8. ) b16 |
  d4. r8 | \break
  d8. d16 d8. b16 |
  e8. e16 e4 |
  d8. b16 g8. b16 |
  a4. r8 | \break
  b8. ([ c16 )] d8. b16 |
  g8. g16 e8. e16 |
  d8. d16 g8. a16 | 
  b4. r8 | \break
  b8. ([ a16 )] g8. b16 |
  g8. a16 d,8. d16 |
  g8. a16 g8. a16 |
  b4. r8 | \break
  e8. ~ [ e16 ] d8. d16 |
  d8. b16 g8. g16 |
  a8. a16 d8. d16 |
  g,4. r8
  \bar "|."
}

text = \lyricmode {
  な が る る ひ か り ー か さ ね き て、
  さ い そ う こ こ に し じ~ゅ う ね ん、
  ほ く と の ひ か り さ す と こ ろ、
  さ ー く ら か ざ し て ぜ ん じ ん の、
  た ー て し れ き し を し の ぶ と き、
  た ー れ か ち し お の わ か ざ ら ん。
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


