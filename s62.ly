\version "2.18.2"

\paper {indent = 0}

\header {
  title = "北斗遙かに"
  subtitle = "昭和62年度寮歌"
  composer = "吉田崇君 作曲"
  poet = "佐久間朗君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 116
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 4/4
  \set melismaBusyProperties = #'()
  %\set Timing.measureLength = #(ly:make-moment 1/4)
  b8. [c16]^"March Maestoso" d4. d8 b'4 |
  a4 d,2. |
  d4 fis2 fis4 ~ |
  fis8 [g8] b2. | \break
  b,8. [c16] d4. d8 d4 |
  fis4 g2. |
  g4 c2 b8 [g8] ~ |
  g8 [a8] g2 r4 | \break
  g8. [g16] c4. c8 c8 [b8] |
  a8 [c8] b4 a8. [a16] e4 |
  a8. [a16] a4. a8 a8 [g8] |
  fis8 [a8] g4 g8. [g16] g4 | \break
  g8. [g16] c4. c8 c8 [b8] |
  a8 [c8] b4 a8. [a16] e4 |
  a8. [a16] a8 [a8] a8 [a8] a4 |
  a8. [a16] a4 e'4^\markup \italic "rit." d4\fermata | \break
  b,8.^\markup \italic "accel. a tempo" [c16] d4. d8 e4 |
  fis8. [fis16] g4 c4 d4 |
  g,4 c4. b8 [a8] g8 ~ |
  g8 [b8] a2. | \break
  b,8. [c16] d4. d8 e4 |
  fis8. [fis16] g4 a4 b4 |
  g4 c4. b8 [a8] fis8 ~ fis8 [a8] g2.
  \bar "|."
}

text = \lyricmode {
  ほ く と は ろ か に ひ ろ が 　 れ る
  は と う き ら め く す い へ い 　 せ ん
  う つ り ゆ く み ず わ た る か ぜ ふ ゆ の お も い を と ど め れ ど
  し ん りょ く き ざ す こ う や に は わ か き い の ち の い ぶ き あ り
  あ あ と き の か お り み つ こ の き た の 　 ち に
  あ ら た な る ゆ め を え て の ぞ み か な 　 え ん
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