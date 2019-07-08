\version "2.18.2"

\paper {indent = 0}

\header {
  title = "昭和6年応援歌"
  subtitle = ""
  composer = "北大管弦楽部 作曲"
  poet = ""
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c''{
  \tempo 4 = 104
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \mark \markup "March"
  g4 a8 g8 c4 g8 e8 |
  f4 e4 c2 |
  c4. d8 e4 g4 |
  e2. r4 | \break
  g4. f8 e4. f8 |
  e4 f4 d2 |
  c4. d8 e4 f8 f8 |
  g2. r8 g8 ( | \break
  c4. c8 g4. e8 |
  a2 g4. ) e8 ^( |
  f4. e8 a8 g8 f8 e8 |
  d2. ) r4 | \break
  c4. e8 g8 g8 f8 f8 |
  e4 f4 d2 |
  g4. g8 a4 b4 |
  c4 d4 c2 | \break
  c4. c8 c4. c8 |
  g4 a4 g4 r4 |
  a4 ^> r4 g4. g8 |
  c4. b8 ^> c4 ^> r4 | \break
  c4. d8 c4 b4 |
  a4 b4 c2 |
  d4 ^> r4 g,4 g4 |
  c4 d4 ^> c4 ^> r4
  \bar "|."
}

text = \lyricmode {
  た た か い の く も い ま ひ く く た れ、
  か ん せ い す ご き ほ く しゅ~う の そ ら く
  ひ~ゃ く の お の こ、 む ね は ひ と も え て、
  ね つ る い も て う た う い ざ す す め と も、
  か が や く は け ん お~ゝ、 ほ く だ~い よ か、
  か が や く は け ん お~ゝ、 ほ く だ~い よ か。
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


