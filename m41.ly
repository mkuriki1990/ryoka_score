\version "2.18.2"

\paper {indent = 0}

\header {
  title = "太虚の齢"
  subtitle = "明治41年寮歌"
  composer = "早川直瀬君・前川徳次郎君 作曲"
  poet = "田中義麿君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 2/4
  \set melismaBusyProperties = #'()
  g'8. g16 d8. c'16 | 
  g8. g16 c8.~ [c16] |
  d8. c16 a8. c16 |
  d4. r8 | \break
  c8. c16 d8. c16 |
  a8. a16 g8. [g16] |
  a8. g16 e8. c16 |
  d4. r8 | \break
  c8. c16 d8. c16 |
  e8. e16 e8. [(g16)] |
  a8. g16 a8. c16 |
  d4. r8 | \break
  a8. a16 c8. [c16] |
  d8. c16 a8. c16 |
  g8. g16 d'8. e16 |
  d4. r8 | \break
  d,8. d16 d8. e16 |
  g8. g16 c8. [c16] |
  b8. a16 g8. a16 |
  g4. r8 | \break
  d'8. d16 d8. e16 |
  d8. c16 a8. [(c16)] |
  g8. c16 c8. a16 |
  g4. r8 | \break
}

text = \lyricmode {
  た い き~ょ の れ い は ー し ら ね ど も、
  こ う は い う つ る ー ひ と の よ の、
  ぶ ん か の あ と は ー し せ ん ね ん、
  あ り し ー む か し を た ず ね き て、
  わ が よ の さ ま を ー な が む れ ば、
  の ぞ  み、 は え あ る ー ゆ く て か な
}

drum = \drummode{
  
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


