\version "2.18.2"

\paper {indent = 0}

\header {
  title = "魂の故郷"
  subtitle = "昭和12年寮歌"
  composer = "平城鷹雄君 作曲"
  poet = "山崎善陽君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 4/4
  \mark "Con mato"
  \set melismaBusyProperties = #'()
  e8.^\mf e16 a8. a16 b4. r8 |
  e,8.^\mp^\< e16 a8. b16 c8. \> b16 b4 \! | \break
  a8. a16 f8. f16 e4. r8 |
  e'8. e16 e8. e16 d8. d16 d4 |
  c8.^\> c16 b8. a16\! e4. r8 | \break
  f8.^\< e16 a8. c16\> e8. c16 b4\! |
  c8.^> b16 b8. a16 a4. r8 | \break
  e8. e16 a8. f16 e8. d16 f8. (e16) |
  e8. c16 b8. a16 b4. r8 | \break
  a8.^\mf a16 b8. b16 c8. d16 e4 |
  e8. e16 a8. c16 b4. r8 | \break
  a8. a16 d,8. f16 e4 d8. c16 |
  b8. b16 b8. c16 a4. r8 | \break
  e'8. e16 a8. b16^\< c8. b16\! a4 |
  e'8.^\f e16 d8. c16 e,8. f16 a4 |
  \bar "|." \break  
}

text = \lyricmode {
  た ま し い の ふ る さ と に た つ、
  ほ し き よ き エ ル ム の そ の よ、 は な か お る
  さ ん し~ゅ ん の ゆ め、 か ん げ き の
  な み だ あ ふ れ て ー、 も り か げ に
  さ か づ き か わ す、 わ か き ひ の
  か た み の う た げ、 う た う な り
  じ ち と じ ゆ う の た か き ほ こ り を。
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


