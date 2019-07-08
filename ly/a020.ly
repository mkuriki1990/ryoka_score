\version "2.18.2"

\paper {indent = 0}

\header {
  title = "スキー部部歌"
  subtitle = "大正14年頃"
  composer = "小野鉄之助君 作曲"
  poet = "相川正義君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 2/4
  \set melismaBusyProperties = #'()
  c8. e16 g8. g16 |
  g8. g16 g4 |
  e8. g16 e'8. e16 |
  d4. r8 | \break
  c8. c16 a8. g16 |
  e8. d16 c4 |
  d8. g16 c8. a16 |
  g4. r8 | \break
  a8. a16 a8. g16 |
  e8. ([ g16 ]) e'8. e16 |
  e8. d16 c8. c16 |
  d4. r8 | \break
  d8. c16 a8. g16 |
  c,8. c16 ~ c8. a'16 |
  g8. g16 e8. d16 |
  c4. r8
  \bar "|."
}

text = \lyricmode {
  み よ や わ か う ど み は る か す、
  き た や ま な み の い た だ き に、
  チ タ ン の い ー き は こ り は て て、
  ふ ゆ お ご そ か ー に お と ず れ ぬ。
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


