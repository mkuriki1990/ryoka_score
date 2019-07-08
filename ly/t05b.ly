\version "2.18.2"

\paper {indent = 0}

\header {
  title = "荒潮繞る"
  subtitle = "大正5年北寮寮歌"
  composer = "橋本吉郎君 作曲"
  poet = "桜井芳次郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key f \major 
  \time 2/4 
  \set melismaBusyProperties = #'()
  d8. f16 a8. a16 |
  a8. a16 a8. ~ [a16]
  f8. e16 d8. f16 | \break
  a4. r8 |
  bes8. bes16 bes8. a16 |
  d8. [(e16)] d8. bes16 | \break
  a8. a16 f8. a16 |
  e4. r8 |
  d8. e16 f8. a16 | \break
  f8. e16 d8 [(e8)] |
  d8. a16 d8. e16 |
  f4. r8 | \break
  d8. f16 a4 |
  bes8 d4 c16 a16 |
  f8. f16 e8. f16 |
  d4. r8| \break
}

text = \lyricmode {
  あ ら し お め ぐ る ー き た の さ
  と、 け ん ら ん の ー と き
  い と た か く、 み よ き~ょ く
  こ う に ー て ら さ れ て、
  ゆ め に ま ど ろ む は る の せ い。
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


