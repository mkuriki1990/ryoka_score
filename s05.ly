\version "2.18.2"

\paper {indent = 0}

\header {
  title = "嗚呼青春の"
  subtitle = "昭和5年寮歌"
  composer = "有村徹君 作曲"
  poet = "児山信蔵君 作歌"
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
  c8. d16 e8. e16 |
  e8. e16 e4 |
  e16 g8. e8. g16 |
  c4. r8 | \break
  a8. b16 c8. c16 |
  c8. [(d16)] c8. a16 |
  g8. g,16 c8. d16 |
  e4. r8 | \break
  c8. d16 e8. e16 |
  e8. e16 e4 |
  e16 g8. e8. g16 |
  c4. r8 | \break
  d8. d16 c8. a16 |
  g4 e8. c16 |
  d8. d16 d8. e16 |
  d4. r8 | \break
  g8. g16 c,8. d16 |
  e8. e16 d4 |
  f8. d16 d8. c16 |
  d4. r8 | \break
  g8. [(g16)] a8. b16 |
  c4 b8 a8 |
  g8. g16 g8. g16 |
  c,4. r8 |
  \bar "|." \break
}

text = \lyricmode {
  あ あ、 せ い し~ゅ ん の ゆ め た か く、
  り そ う の あ ー と に あ こ が れ て、
  に れ の、 は な ち る み や こ に ぞ、
  さ と し を も と む わ こ う ど は、
  は な を、 な が し て ゆ く み ず に、
  じ~ゅ ー く の は る を、 な げ く な り。
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


