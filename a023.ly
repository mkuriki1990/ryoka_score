\version "2.18.2"

\paper {indent = 0}

\header {
  title = "ラグビー部賛歌"
  subtitle = ""
  composer = "村岡五郎君 作曲"
  poet = "村岡五郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c''{
  \tempo 4 = 100
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 4/4
  \set melismaBusyProperties = #'()
  b4. a8 g8. e16 e8 e8 ^( |
  e2 d2 ) |
  d4. ( e8 ) d2 |
  a'4. ( b8 ) a2 | \break
  b4. ( c8 d4 b4 |
  g4 e4 g2 ) |
  d2 \(( b'4. ) a8 |
  g2. \) r4 | \break
  a2 ( a4 b4 |
  c4 c4 a2 |
  b2 b4 c4 |
  d2. ) d4 \( | \break
  e4. e8 d4 b8 ([ a ]) ||
  g2 e4 \) c'4 ( |
  b2 a2 | \break
  g2. ) r8 d8 ^\(( |
  a'2 ) d,4 \) d4 \( |
  b'4. ( a8 ) g4 \) g4 ( | \break
  c4. c8 c4 e4 |
  d2 b4 ) b4 \( |
  c4. ( b8 a4 ) g8 ([ fis ]) | \break
  e4. ( e'8 ) d4 \) c4 ( |
  b4. b8 a4. a8 |
  g2. ) r4
  \bar "|."
}

text = \lyricmode {
  い し か り の、 は ら に、 く ー さ も ー え、
  ね~っ さ ま く な つ の お ー ぞ ら、
  ぼ~う ぼ~う と こ お る あ ら の や、 ゆ~う
  づ き に あ ー き は、 お つ と
  も、 ち ー と、 あ せ ー に、 わ
  か き し し む れ、 た ま ー を、 お ー
  い ー て、 た~い ち を か け る。
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


