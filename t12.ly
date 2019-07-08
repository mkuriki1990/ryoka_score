\version "2.18.2"

\paper {indent = 0}

\header {
  title = "春雨に濡る"
  subtitle = "大正12年寮歌"
  composer = "西田貫道君 作曲"
  poet = "高橋北雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \time 2/4
  \tempo "静かに" 4 = 69
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  c8. c16 g'8. g16 |
  g8.~ g16 ees8. d16 |
  c8. c16 c8. d16 |
  c4. r8 |
  aes'8. aes16 g8. c,16 |
  aes'4 g8. ees16 |
  d8. c16 d8. ees16 |
  c4. r8 |
  c'8. ees16 d8. c16 |
  g8. g16 g4 |
  aes8. g16 aes8. c16 |
  c4. r8 |
  g8. g16 aes8. g16 |
  c8. d16 ees4 |
  d8. d16 d8. c16 |
  ees4 ( d4 ) |
  c8. d16 ees8. d16 |
  c4 aes8. g16 |
  ees8. ees16 d8. c16 |
  g'4. r8 |
  ees8. g16 aes8. g16 |
  c8. d16 ees4 |
  d8. d16 g,8. aes16 |
  c4. r8 |
}

text = \lyricmode {
  は る さ め |
  にー ぬ る |
  ア カ シヤ ば | 
  な、 | 
  と お り の | 
  と も し | 
  は な や か に、 | 
  ち は ぎ ん | 
  ね ず に | 
  た そ が る | 
  る、 | 
  し ず か に | 
  あ る く　|　
  わ こ う ど | 
  がー、 |
  こ こ ろ に | 
  め ざ む | 
  さ わ や か | 
  の、 |
  う る お み | 
  み て る | 
  ち か ら か | 
  な。 |
}

harmony = \chordmode {
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
    %\new DrumStaff \with{
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