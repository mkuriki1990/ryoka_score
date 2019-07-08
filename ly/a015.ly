\version "2.18.2"

\paper {indent = 0}

\header {
  title = "文武会歌"
  subtitle = "昭和15年"
  composer = ""
  poet = ""
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 108
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  c4. e8 g4 g4 |
  g2 ~ g8 r8 g4 |
  c4 g8. e16 a4 a4 | \break
  g2 ~ g8 r8 e4 |
  a2 a4. a8 |
  a2 ~ a8 r8 c8. c16 | \break
  b4 a4 f4 e8. ([ d16 ]) |
  g2 ~ g8 r8 e4 ^\mp |
  e4. e8 d4 c4 | \break
  d2 ~ d8 r8 g8. g16 |
  e4. f8 g4 c8. ([ d16 ]) |
  e2 ~ e8 r8 d4 | \break
  e4 d8. c16 b4 a4 |
  d2 ~ d8 r8 c4 |
  a4. _( b8 ) c4 d4 | \break
  g,2 ~ g8 r8 a4 |
  g2 f4 e4 |
  d2 ~ d8 r8 e4 |
  d2 c4 e4 | \break
  g4. a8 g4 a8. ([ b16 ]) |
  c2 d4 e4 |
  d2. r4 |
  e4. ^\f e8 e4 d4 | \break
  c4 a4 g4. r8 |
  a4. ^\ff g8 a4 c4 |
  d4 e4 c4. r8 
  \bar "|."
}

text = \lyricmode {
  ほ う す う は ー つ ど い、 き た り
  ぬ ー、 れ い ろ う の ー、 エ ル
  ム の そ の ー よ ー、 あ い ぜ ん た
  り ー、 せ い き に あ ふ ー れ ー、 ひ
  か り に み ち て ー、 い ざ ー と も
  よ ー わ か き ひ の ー、 い の ち の
  か ぎ り ー む ー つ み て は、 は ぐ く ま
  ん か な ぶ ん ぶ の せ い か。
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


