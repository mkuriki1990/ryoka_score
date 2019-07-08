\version "2.18.2"

\paper {indent = 0}

\header {
  title = "彷徨へる心のままに"
  subtitle = "昭和24年寮歌"
  composer = "伊藤嘉弘君 作曲"
  poet = "池田基君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 4/4
  \slurUp
  \mark \markup "Adagio maestoso"
  \set melismaBusyProperties = #'()
  b4 (d4 fis4 g4 |
  fis2.) r4 |
  b4 (d4 cis4 b4 |
  ais cis fis,2 | \break
  g4 g4 g4 b4 |
  fis2.) r4 |
  g4 (fis4 e4 d4 cis4 d4 e2 | \break
  d4 d4 cis4 b4 |
  cis2.) r4 |
  b4 \( fis'4 b4 d4 |
  cis4 b4 ais2 | \break
  b4 (b4) b4 (d4) |
  cis2. \) r4 |
  g4 (fis4 e4 d4 | 
  cis2 fis2 |
  b,2.) r4 | \break
  b4 (cis4 d4 e4 |
  fis2.) r4 |
  b4 (e4 cis4 b4 |
  ais4 cis4 fis,2\fermata ) | \break
  b,4 (cis4 d4 e4 |
  fis2.) r4 |
  g4 (fis4 e4 d4 |
  cis2 fis2 | 
  b,2.) r4\fermata |
  \bar "|." 
}

text = \lyricmode {
  さ ま よ え る、 こ こ ろ の ま ま に
  み か え り の、 お か を の ぼ れ ば
  の は、 は る か、 い に し ひ の か げ
  し~ょ う し~ょ う の、 や み に と け ゆ く、
  か く あ る は、 ひ と の さ だ め か、
  あ め つ ち に、 ほ し の と ぶ な り。
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

