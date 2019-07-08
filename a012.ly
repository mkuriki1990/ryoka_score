\version "2.18.2"

\paper {indent = 0}

\header {
  title = "開校祝賀の歌"
  subtitle = ""
  composer = ""
  poet = ""
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 2/4
  \set melismaBusyProperties = #'()
  c8. c16 e8. e16 |
  g8. ~ [ g16 ] g8. g16 |
  c8. c16 d8. e16 |
  d4. r8 | \break
  e8. e16 d8. c16 |
  a8. a16 c8. a16 |
  g8. a16 g8. e16 |
  g4. r8 | \break
  a8. ~ [ a16 ] g8. e16 |
  a8. a16 c8. c16 |
  d8. c16 d8. e16 |
  d4. r8 | \break
  e8. e16 d8. ([ c16 )] |
  a8. a16 c8. a16 |
  g8. a16 g8. e16 |
  d4. r8 | \break
  e8. e16 d8. ([ c16 ]) |
  e8. e16 g8. g16 |
  a8. g16 a8. c16 |
  g4. r8 | \break
  a8. a16 g8. a16 |
  c8. d16 c8. ([ a16 ]) |
  g8. c16 e8. d16 |
  c4. r8
  \bar "|."
}

text = \lyricmode {
  し ん と う に ー せ ん ご ひ~ゃ く ね ん、
  と う か い の、 は て に ね む り た る、
  や ー ま と し ま ね の み ん し~ゅ う は、
  み よ や ー め ざ め て め い ぢ の よ
  て ん の ー し め い を は た す べ く、
  し ん し~ゅ の は た を ー ふ り た て ぬ。
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


