\version "2.18.2"

\paper {indent = 0}

\header {
  title = "生命の争闘"
  subtitle = "大正10年寮歌"
  composer = "小峰三千男君 作曲"
  poet = "青野正男君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 63
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor 
  \time 2/4
  c8. c16 c8. ees16 |
  d8. d16 c4 |
  ees8. ees16 d8. c16 |
  g'4. r8 | \break
  aes8. aes16 g8. ees16 |
  c8. d16 ees4 |
  d8. g16 ees8. d16 |
  c4. r8 | \break
  g'8. g16 c8. d16 |
  ees8. ees16 d4 |
  c8. c16 aes8. c16 |
  g4. r8 | \break
  ees8. ees16 g8. g16 |
  aes8. c16 g4 |
  ees8. g16 d8. d16 |
  c4. r8 | \break
  g'8. g16 c8. d16 |
  ees8. ees16 d4 |
  c8. c16 aes8. c16 |
  g4. r8 | \break
  ees8. ees16 g8. aes16 |
  c4 aes8. g16 |
  ees8. g16 d8. d16 |
  c4. r8 |
  \bar "|." \break
}

text = \lyricmode {
  い の ち の い く さ や ぶ れ じ と、
  ゆ き げ の の べ に も え い で し、
  あ さ み ど り な る わ か く さ の、
  の び ゆ く い の ち お も う と き、
  わ か き ち か ら の よ ろ こ び は、
  わ れ ら が む ね に あ ふ る な り。
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


