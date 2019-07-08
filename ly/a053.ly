\version "2.18.2"

\paper {indent = 0}

\header {
  title = "水産逍遥歌"
  subtitle = "昭和12年"
  composer = "塩見潔君 作曲"
  poet = "斉藤光治君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 60
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 6/8
  \set melismaBusyProperties = #'()
  \mark \markup "Adagio"
  a4 ~ a8 a ([ b ]) c |
  e4 e8 e ([ c ]) e |
  a4 a8 b ([ a ]) f |
  e4. ~ e4 r8 | \break
  f4 f8 e4 b'8 |
  a4 f8 e4. |
  c4 b8 a4 c8 |
  e4. ~ e4 r8 | \break
  b'4 b8 b4 e,8 |
  c'4 b8 a4. |
  f8 ([ e ]) c' b ([ a ]) f |
  e4. ~ e4 r8 | \break
  f4 f8 a4 f8 |
  e4. a4 b8 |
  c4 c8 c ([ a ]) c |
  b4. ~ b4 r8 | \break
  a,4 c8 b4 c8 |
  e4 e8 e ([ d ]) e |
  a4 a8 b ([ a ]) c |
  b4. ~ b4 r8 | \break
  a4 f8 e4 c8 |
  e4 ~ e8 c4 a8 |
  b4 c8 b ([ a ]) b |
  a4. ~ a4 r8
  \bar "|."
}

text = \lyricmode {
  ほ ー し ー の す が た ー に あ こ が ー れ て ー、
  よ こ つ の お か に さ ま よ え ば ー、
  た そ が れ て ゆ く お ー お ぞ ー ら に ー、
  ま つ ま え じ~ょ う の ゆ め の ー あ と ー、
  え い が は ち じ~ょ う ー の た ま ゆ ー ら の ー、
  い つ し の は ー な に い の ち ー あ り ー。
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


