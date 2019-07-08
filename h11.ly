\version "2.18.2"

\paper {indent = 0}

\header {
  title = "清華の誓"
  subtitle = "平成11年度寮歌"
  composer = "小出隆広君 作曲"
  poet = "荒木洋祐君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 120
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \set Timing.measureLength = #(ly:make-moment 1/4)
  e4 |
  \set Timing.measureLength = #(ly:make-moment 4/4)
  fis4. fis8 fis4 e8. [fis16] |
  e2 d4 d4 |
  g4. g8 fis4 e8. [fis16] | \break
  e2 r4 fis8. [g16] |
  a4. a8 g4 fis4 |
  d'2 r4 fis,8. [fis16] |
  fis2 e4 e8. [dis16] | \break
  e2 r4 e8. [e16] |
  fis2 fis4 e8. [fis16] | 
  e2 d4 d4 |
  g4. g8 fis4 e8. [fis16] | \break
  e2 r4 fis8. [g16] |
  a4. a8 g4 fis4 |
  d'2 r4 fis,8. [fis16] |
  fis2 e4 e8. [e16] | \break
  d2 r4 fis8. [fis16] |
  b4. b8 g4 b8. [g16] |
  a2 r4 fis8. [fis16] |
  g4. fis8 e4 d8. [e16] | \break
  fis2 r4 fis8. [fis16] |
  b2 g4 b8. [g16] |
  a2 r4 fis8. [fis16] |
  g4. g8 a4 a8. [b16] | \break
  a2 r4 b8. [a16] |
  fis2 fis4 e8. [d16] |
  e2 r4 fis8. [e16] |
  d4. d8 d4 cis8. [b16] | \break
  cis2 r4 b8. [cis16] |
  b2 \once \stemDown b4 d8. [e16] |
  d2 fis8 r8 fis8. [fis16] |
  g4. fis8 e4 d8. [e16] |
  d2 r2
  \bar "|." 
}

text = \lyricmode {
  ゆ き ま う ち へ い に ひ と き わ は え
  る り っ か の も ん ぞ わ れ ら が と り 
  で や し ん は み ー ち て ふ ゆ ぞ ら こ が
  し じゅ か ん の か ぜ は お も い  を は こ
  ぶ さ か づ き に う つ る じ だ い ー を み よ
  う よ あ か し か た る こ の と き に こ ー
  そ カ ペ ラ の え い ち オ リ オ ン の ぶ ゆ
  う て ん よ 　 や み よ ー わ れ ら ー に た ま え
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