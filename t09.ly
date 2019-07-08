\version "2.18.2"

\paper {indent = 0}

\header {
  title = "無窮の空に"
  subtitle = "大正9年寮歌"
  composer = "藤田篤君 作曲"
  poet = "戸田早苗君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \minor
  \time 2/4
  bes8. bes16 bes8. d16 |
  f8. f16 f4 |
  g8. f16 d8. f16 | \break
  bes4. r8 |
  g8. g16 bes8. g16 |
  f8. d16 bes4 | \break
  c8. c16 c8. d16 |
  c4. r8 |
  d8. f16 bes8. c16 | \break
  bes8. g16 f4 |
  g8. f16 g8. a16 |
  bes4. r8 | \break
  bes8. c16 d8. bes16 |
  g8. bes16 f4 |
  d8. d16 c8. d16 |
  bes4. r8 |
  \bar "|." \break  
}

text = \lyricmode {
  む き~ゅ う の そ ら に れ い め い
  の、 け だ か き す が た
  あ ま か け り、 あ た ら し
  き ひ は き た れ り と、
  ば ん し~ょ う の こ え ひ び く か な。
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


