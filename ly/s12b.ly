\version "2.18.2"

\paper {indent = 0}

\header {
  title = "春未だ浅き"
  subtitle = "昭和12年第30回記念祭歌"
  composer = "宍戸昌夫君 作曲"
  poet = "平城鷹雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major 
  \time 4/4
  e8. e16 b8. b16 g'8. fis16 e4 |
  c8. c16 c8. c16 b4. r8 | \break
  b8. b16 e8. fis16 b8. b16 g4 |
  fis8. fis16 fis8. fis16 e4. r8 | \break
  e'8. e16 fis8. e16 c8. c16 b4 |
  g8. g16 fis8. e16 b'4. r8 | \break
  c8. c16 b8. c16 e8. e16 b4 |
  c8. b16 g2 fis4 |
  e2. r4 |
  \bar "|." \break
}

text = \lyricmode {
  は る ま だ あ さ き は く よ う の、
  ゆ き げ の こ み ち た た ず め ば、
  し ば し き け と て さ ざ め き の、
  こ の ま、 も れ く る ゆ う あ ら し。
}

drum = \drummode{
  
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


