\version "2.18.2"

\paper {indent = 0}

\header {
  title = "清き生命の"
  subtitle = "昭和34年寮歌"
  composer = "中川清吾君 作曲"
  poet = "吉野生壮君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 2/4
  \set melismaBusyProperties = #'()
  e16 ^"Andante" e8. a8. [(b16)] |
  c16 c8. b8. a16 |
  f16 f8. \tuplet 3/2 {g8 [(a8)] b8} |
  e,4. r8 | \break
  c16 b8. a8. b16 |
  e16 e8. f8. e16 |
  c16 e8. b8. c16 |
  a4. r8 \bar"||" \time4/4 | \break
  d4 ^(d8. d16 d4 b8 [d8] |
  f2 e4) r8 d8 ( |
  c'4. b8 a4 f8. a16 |
  e2. ) r4 | \bar"||" \time 2/4 | \break
  a16 a8. a8. c16 |
  b16 (a8.) f8. e16 |
  a,16 a8. b8. c16 | \break
  b4. r8 |
  a16 a8. b8. c16 |
  e16 e8. f4 | \break
  e4 e'4 ( |
  e4 ) c4 |
  b8. gis16 a4 |
  a2
  \bar "|."
}

text = \lyricmode {
  き よ き ー い の ち の は つ し ー お に、
  だ い な る こ こ ろ を う ち た て ん、
  ま な び や の ー あ お き え ん と す れ ど、
  も と め て や ー ま ぬ た ん き~ゅ う
  の、 こ こ ろ は つ ね に、
  か わ ー る、 こ と な く。
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

