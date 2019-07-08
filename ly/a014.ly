\version "2.18.2"

\paper {indent = 0}

\header {
  title = "北海道帝国大学文武会創基五十周年祝歌"
  subtitle = ""
  composer = "河口忠雄君 作曲"
  poet = "秋野豊太君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 88
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 2/4
  \set melismaBusyProperties = #'()
  \mark \markup "Tempo di marcia"
  e4 e8. e16 |
  d8. d16 c8. c16 |
  g'16 ([ g8. ]) g8. a16 |
  g4. r8 | \break
  a16 ([ a8. ]) g8. c16 |
  g4 e8. c16 |
  d8. d16 d8. e16 |
  d4. r8 | \break
  e4 c8. d16 |
  e16 ([ e8. ]) e8. g16 |
  a16 ([ a8. ]) a8. d16 |
  c4. r8 | \break
  c8. d16 ( c8. ) a16 |
  g16 ([ g8. ]) e8. c16 |
  a'8. g16 e4 ~ |
  e8 d8 c4 \fermata
  \bar "|."
}

text = \lyricmode {
  に れ の も り か げ み ど り し て、
  わ か く さ か お る が く て い に、
  ぶ  ん か け ん ら ん は る く れ ば、
  そ う ー き ご じ~ゅ う の か ね ぞ ー な る。
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


