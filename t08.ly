\version "2.18.2"

\paper {indent = 0}

\header {
  title = "暗雲低く"
  subtitle = "大正8年寮歌"
  composer = "置塩奇君 作曲"
  poet = "熊谷巌君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 63
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor 
  \time 4/4
  \set melismaBusyProperties = #'()
  c8. ees16 g8. aes16 g8. ees16 c8 [(g8)] |
  c8. g16 c8. ees16 g4. r8 | \break
  aes8. aes16 g8. ees16 g8. aes16 c4 |
  aes8. g16 ees8. c16 d4. r8 | \break
  ees8. d16 c8. ees16 g8. aes16 g4 |
  ees8. g16 c8. d16 c4. r8 | \break
  ees8. d16 c8. aes16 c8. g16 ees8. [(c16)] |
  d8. c16 d8. ees16 g4. r8 | \break
  c,8. c16 c8. d16 ees8. d16 c4 |
  ees16 [g8 (f16)] g8. aes16 g4. r8 | \break
  c8. d16 c8. aes16 g4 ees8. c16 |
  d8. d16 d8. ees16 c4. r8 |
  \bar "|." \break
}

text = \lyricmode {
  あ ん う ん ひ く く ー み だ れ て し、
  え ん さ の こ え の お さ ま る や、
  さ か ま く な み も な ご み き て、
  ほ し か げ あ わ き ー し の の め に、
  へ い わ の ひ か り う ら ー う ら と、
  み ど り の う み に か が や き ぬ。
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


