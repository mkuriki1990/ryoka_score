\version "2.18.2"

\paper {indent = 0}

\header {
  title = "郭公の声に"
  subtitle = "昭和3年寮歌"
  composer = "宮本正治君 作曲"
  poet = "古河勝夫君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor 
  \time 2/4
  \set melismaBusyProperties = #'()
  d4 a'4 |
  a8. a16 a8. a16 |
  a8. a16 a8. a16 |
  bes8. a16 f8. a16 |
  d2 ( \grace { e8 )}| \break
  f8. f16 e8. d16 |
  bes8. bes16 a4 |
  f8. f16 e8. d16 |
  e8. a16 d,4 | \break
  d8. e16 f8. g16 |
  a8. bes16 a4 |
  bes8. d16 d8. bes16 |
  a8. bes16 a4 | \break
  a8. a16 bes8. a16 |
  d2 |
  f8. f16 e8. d16 |
  bes8. bes16 a4 | \break
  f8. f16 e8. d16 |
  e8. a16 d,4 |
  d8. e16 f8. g16 |
  a8. bes16 a4 | \break
  bes8. d16 d8. bes16 |
  a8. bes16 a4 |
  a8. a16 a8. a16 |
   a2 | \break
   a8. a16 f8. a16 |
   d8. e16 f4 |
   e8. e16 e8. d16 |
   f8. e16 d4 |
  \bar "|." \break
}

text = \lyricmode {
  か~っ こ~う の こ え に、 め い む の よ は あ け て—、
  し こ ん の く も の い ろ も さ め ゆ き、
  は る し ば く さ に か ぜ の そ よ げ ば、
  きょ く こ う は—、 み よ し の の め の、
  し じ ま を や ぶ り し  ぜ ん の す が た、
  あ け に ゆ ら ぎ ぬ た た  え な ん、
  う ら わ か き ひ の、 あ さ の く し び を。
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


