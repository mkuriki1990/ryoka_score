\version "2.18.2"

\paper {indent = 0}

\header {
  title = "天地の奥に"
  subtitle = "昭和18年寮歌"
  composer = "池田政晴君 作曲"
  poet = "橋爪秀雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 2/4 
  e8. e16 e8. e16 |
  a8. a16 c4 |
  b16 c8. a8. e16 |
  b'4. r8 | \break
  a8. a16 c8. c16 |
  b8. b16 a4 |
  f8. f16 d8. f16 |
  e4. r8 | \break
  e8. e16 f8. e16 |
  a8. a16 b4 |
  c16 c8. b8. a16 |
  e'4. r8 | \break
  f8. f16 e8. a,16 |
  c8. c16 b4 |
  c8. c16 b8. gis16|
  a4. r8 | \bar "|." \time4/4 \break
  e4. e8 f4 e4 |
  e4. e'8 e2 |
  f4. e8 c4 b4 |
  e2. r4 | \break
  f4. f8 e4 a,4 |
  c4. c8 c2 |
  e,4. e8 gis4 b4 |
  a2. r4 |
  \bar "|." 
}

text = \lyricmode {
  て ん ち の お く に ゆ く わ れ や、
  こ じ~ょ う、 む げ ん に た び だ ち て、
  け い ら ん は る か た ず ね こ し、
  ゆ り~ょ う の や ど や さ ん し~ゅ ん の、
  た び に し あ れ ど そ は ふ か き、
  あ あ、 た ま し い の ふ る さ と か。
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


