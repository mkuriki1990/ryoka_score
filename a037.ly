\version "2.18.2"

\paper {indent = 0}

\header {
  title = "大正9年応援歌"
  subtitle = ""
  composer = "置塩奇君 作曲"
  poet = "熊谷巌君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor
  \time 2/4
  \set melismaBusyProperties = #'()
  f8. f16 f8. a16 |
  c4 a8 r8 |
  a8. c16 a8. g16 |
  f4. r8 | \break
  g8. a16 g8. a16 |
  c4 a8 g8 |
  f8. f16 f8. f16 |
  f4. r8 | \break
  a16 c8. a16 c8. |
  a4 c8. a16 |
  g8. f16 d8. f16 |
  c4. r8 | \break
  c8. c16 c8. g'16 |
  g8. f16 a4 |
  g8. f16 a8 g8 |
  f4. r8
  \bar "|."
}

text = \lyricmode {
  ひ ば ほ く しゅ~う に い な な き て、
  ゆ う と に も ゆ る わ が ち し お、
  ち~ょ う こ ん に ぎ る も ろ う で に、
  お の こ の い き は お ど る な り。
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


