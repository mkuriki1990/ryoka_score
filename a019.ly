\version "2.18.2"

\paper {indent = 0}

\header {
  title = "柔道部東征歌"
  subtitle = "大正末期"
  composer = "小峰三千男君 作曲"
  poet = "河合九州夫君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  c4. e8 g4. g8 |
  g4. g8 g2 |
  e4. g8 c4. c8 |
  c2. r4 | \break
  a4. a8 c4. c8 |
  c4. d8 c4. a8 |
  g4. g8 e4. a8 |
  g2. r4 | \break
  c,4. d8 e4. e8 |
  e4. d8 c2 |
  c4. d8 e4. a8 |
  g2. r4 | \break
  g4. a8 g4 g4 |
  c4. d8 c4. a8 |
  g4. g8 e4. d8 |
  c2. r4 | \break
  e'2 e4. e8 |
  e4. d8 c4. a8 |
  g4. g8 e4. c8 |
  g'2. r4 | \break
  g2 a4. c8 |
  c4. c8 a4. a8 |
  g4. g8 e4. d8 |
  c2. r4 
  \bar "|."
}

text = \lyricmode {
  ほ う ふ う ほ ゆ る ほ っ か い の、
  き し べ に く る う ー な み の は な、
  う ん え ん と お く な が れ い る、
  い し か り か が ん に ね じ ろ し て
  おう せ い の ー は た ひ る が え し、
  た て る わ が ぶ ぞ ち か ら あ り。
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


