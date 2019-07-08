\version "2.18.2"

\paper {indent = 0}

\header {
  title = "沈黙の杜に"
  subtitle = "昭和60年寮歌"
  composer = "佐々木徹也君 作曲"
  poet = "角田勤君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 61
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor
  \time 6/8
  \set melismaBusyProperties = #'()
  \partial 2 \partial 8 
  c8 |
  a'4 a8 a4 bes8 |
  c4. a4 c,8 |
  a'4 a8 bes8 a8 g8 |
  \set Timing.measurePosition = #(ly:make-moment 7/8)
  f4 e8 d4 \break
  \set Timing.measureLength = #(ly:make-moment 1/8)
  c8 |
  \set Timing.measureLength = #(ly:make-moment 6/8)
  d4 e8 f4 g8 |
  a4. c,4 c8 |
  d4 d8 d8 f8 a8 |
  \set Timing.measurePosition = #(ly:make-moment 7/8)
  g4. r4 \break
  \set Timing.measureLength = #(ly:make-moment 1/8)
  c,8 |
  \set Timing.measureLength = #(ly:make-moment 6/8)
  a'4 a8 a4 bes8 |
  c4.a4 d,8 |
  a'4 a8 bes8 a8 g8 |
  \set Timing.measurePosition = #(ly:make-moment 7/8)
  f4 e8 d4 \break
  \set Timing.measureLength = #(ly:make-moment 1/8)
  c8 |
  \set Timing.measureLength = #(ly:make-moment 6/8)
  d4 e8 f4 g8 |
  a4 c8 a4 c,8 |
  d4 f8 g8 f8 g8 |
  \set Timing.measurePosition = #(ly:make-moment 7/8)
  f4. r4 \break
  \set Timing.measureLength = #(ly:make-moment 1/8)
  f8 |
  \set Timing.measureLength = #(ly:make-moment 6/8)
  d'4 d8 d4 d8 |
  c4 a8 a4 g8 |
  f4 f8 d8 e8 f8 |
  g4.~ g4 r8 \break
  a4. g4 f8 |
  d8 e8 f8 bes4 c,8 |
  d4. e4 g8 |
  f4.~ f4 r8 |
}

text = \lyricmode {
  し じ ま の も り に し~ゅ ん ら い ー つ げ ー る
  か お り か ぐ わ し こ ぶ し の は な よ
  し ろ き ざ ん せ つ い ま だ き え や ら ー ず
  な が き か ん と ー お し の ば る る か な
  きょ ー しゅ ー む ね ー に ー み つ る ー と も ー
  さ れ ど け い て き こ こ に あ り ー
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