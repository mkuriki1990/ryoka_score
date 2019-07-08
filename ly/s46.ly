\version "2.18.2"

\paper {indent = 0}

\header {
  title = "朔北に"
  subtitle = "昭和46年寮歌"
  composer = "伊藤正朗君 作曲"
  poet = "伊藤正朗君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 69
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 6/8
  \slurUp
  \set melismaBusyProperties = #'()
  g'4 ( g8 c,4 d8 |
  e4. e4 ) r8 |
  e4 (e8 g4 g8 |
  c,4 d8 e4. |
  e4 d8 c4 d8 | \break
  e4. ~ e4 ) r8 |
  e4 ( e8 g4 g8 |
  c,4 d8 e4. |
  d4 c8 a4 c8 |
  c4. ~ c8 ) r8 r8 | \break
  e4 ( e8 g4 f8 |
  d4 d8 a4. c4 c8 d4 d8 |
  e4. e8 ) r8 r8 |
  e4 ( d8 f4 e8 | \break
  d4 d8 a4. |
  b4 b8 c4 d8 |
  c4. ~ c8 ) r8 r8 |
  c4 ( g8 e'4 c8 |
  g'4 e8 e4. | \break
  c4 c8 d4 d8 |
  e4. ~ e4 ) r8 |
  e4 ( c8 g'4 e8 |
  a4 g8 g4. |
  c4 c8 b4 a8 | \break
  g4. ~ g8 ) r8 r8 |
  e4 ( e8 f4 a8 |
  c4. c4 a8 |
  g4 g8 g4 f8 |
  e4. ~ e8 ) r4 | \break
  c'4 ( c8 g4 g8 |
  e4. a4 a8 ) |
  c,4 ( d8 e4 e8 |
  e4 d8 c4 ) r8 
  \bar "|."
}

text = \lyricmode {
  さ く ほ く に ー、 て い ね お ろ し の こ え た え
  て ー、 し じ ま に い た し と お き て き ー、
  い て つ く は ら に か ん げ つ の ー、 あ お き、 ひ
  か り の さ し そ え ば ー、 ポ プ ラ の か げ は
  た け く し て ー、 そ ら さ す か な た や ど り や
  の ー、 ひ は こ よ い ま た、 た び び と の ー、
  つ ぎ つ ち か い し、 み ち を さ と せ り。
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