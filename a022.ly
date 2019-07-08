\version "2.18.2"

\paper {indent = 0}

\header {
  title = "ラグビー部部歌"
  subtitle = "昭和9年"
  composer = "飯田毅君 作曲"
  poet = "坂井稔君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 108
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  c4 ( d4 e4 g4 |
  c4 g2 a4 |
  e4. e8 d4 d4 |
  g2. ) r4 | \break
  c,4 ( d4 e4 g4 |
  c8. c16 a2 ) c4 ( |
  b2 a4. a8 |
  g2. ) r4 | \break
  a4 \(( a4 ) c4 a4 |
  c4 g2 g4 |
  a4 g4 f4 e4 |
  d2. \) r4 | \break
  c4 ( d4 e4 f4 |
  g4 a4 b4 ) c8. ( c16 |
  d8. c16 a4 b4. b8 | \break
  c1 |
  g4 f8. e16 d2 ) |
  c4 ^> d4 ^> e4 ^> g4 ^> | \break
  c4 ^> g2 a4 |
  e4. e8 d4. d8 ( |
  c2. ) r4
  \bar "|."
}

text = \lyricmode {
  こ う じ ん は る か へ だ て た る、
  こ ゝ ほ く め い の、 げ ん し り ん、
  す だ ち し わ か き あ ら わ し の、
  い き ぞ、 み て~る フェ~ア プレ~ー、 み よ、 い き の ほ く
  だ~い よ か ラ ガ~ー、 ファ~イト ファ~イト ファ~イト ファ~イト
  ファ~イト オ~ン ワー~ズ ヴ~ィ ク ト リ ー。
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


