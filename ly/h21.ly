\version "2.18.2"

\paper {indent = 0}

\header {
  title = "六華雪解に"
  subtitle = "平成21年度寮歌"
  composer = "丸田潤君 作曲"
  poet = "丸田潤君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c''{
  \tempo 4 = 90
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  \time 3/4
  \set melismaBusyProperties = #'()
  \set Timing.measureLength = #(ly:make-moment 1/4)
  g4 |
  \set Timing.measureLength = #(ly:make-moment 3/4)
  g2 ees4 |
  f2 g4 |
  ees2 c4 |
  bes2 r4 | \break
  ees2 g4 |
  ees4 d4 ees4 |
  f2. ~ |
  f4 r4 f4 |
  g2 bes4 | \break
  g2 f4 |
  ees2 c4 |
  bes2 r4 |
  ees2 g8 [aes8] |
  g4 f4 d4 | \break
  ees2. ~ |
  ees2 r4 |
  d2 ees4 |
  f2 g4 |
  g2 f4 | \break
  ees2 r4 |
  f2 f4 |
  f2 g4 |
  f2. ~ |
  f4 r4 f4 | \break
  g2 bes4 |
  g2 f4 |
  ees2 c4 |
  bes2 r4 |
  ees2 g8 [aes8] | \break
  g4 f4 d4 |
  ees2. ~ |
  ees2
  \bar "|." 
}

text = \lyricmode {
  り っ か ゆ き げ ー に
  た た ず ー み て 　 こ きょ う
  を さ り ー し わ こ ー う ー ど
  が 　 き よ き や し ん
  を む ね に ひ め 　 し
  ば ー し い こ わ ん こ の ー
  や ー ど り
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


