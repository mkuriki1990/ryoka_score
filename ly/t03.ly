\version "2.18.2"

\paper {indent = 0}

\header {
  title = "我が運命こそ"
  subtitle = "大正3年寮歌"
  composer = "赤木顕次君 作曲"
  poet = "樋口桜五君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 4/4
  \set melismaBusyProperties = #'()
  g'8. f16 e8. g16 c8. d16 c4|
  c8. c16 d8. c16 a8. a16 g4 | \break
  a8. a16 a8. a16 g8. g16 e4 |
  d8. d16 d8. e16 c4. r8 | \break
  e8. e16 f8. e16 d8. d16 g4 |
  a8. g16 c8. a16 g8. a16 g4 | \break
  a8. a16 a8. a16 c8. c16 a8.~ [a16] |
  g8. g16 c,8. d16 e4. r8 | \break
  e8. e16 f8. e16 d8. d16 g4 |
  a8. g16 e8. c16 d8. e16 d4 | \break
  c8. c16 e8. e16 g8. g16 a8. [(g16)] |
  c8. c16 b8. d16 c4. r8 | \break
}

text = \lyricmode {
  わ が さ だ め こ そ あ お う ず わ け る、
  ち ひ ろ の う み の ま た ま と り、
  う ま し お も い に あ こ が る る み は、
  お ご り の は る に ー え い し れ て、
  た わ る る ひ と を ゆ め  と は、 み つ つ、
  さ か ま く な み を ー ひ ら き ゆ く。
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


