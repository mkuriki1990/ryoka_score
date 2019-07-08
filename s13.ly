\version "2.18.2"

\paper {indent = 0}

\header {
  title = "津軽の滄海の"
  subtitle = "昭和13年寮歌"
  composer = "高橋寛君 作曲"
  poet = "二階堂孝一君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor 
  \time 2/4
  c8. c16 g'8. g16 |
  g8. g16 g8 r8 |
  aes8. g16 f8. f16 |
  f8. aes16 g8 r8 | \break
  c,8. d16 ees8. f16
  g8. g16 g8 r8 |
  ees8. g16 d8. d16 |
  d8. ees16 c8 r8 | \break
  c'8. c16 c8. c16 |
  ees4 ees8. d16 |
  c8. c16 f,8. aes16 |
  g8. f16 g8 r8 | \break
  c,8. d16 ees8. f16 |
  ees8. ees16 c'8 r8 |
  aes8. aes16 g8. ees16 |
  d8. d16 c8 r8 |
  \bar "|." \break  
}

text = \lyricmode {
  つ が る の う み の う ず し お わ け て、
  お お き お も い を ほ く と に は す る。
  わ か き こ こ ろ は き た の し ぜ ん に、
  い だ か れ て い ま や し ん つ ち か う。
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


