\version "2.18.2"

\paper {indent = 0}

\header {
  title = "穹蒼高く"
  subtitle = "大正5年南寮寮歌"
  composer = "黒住須賀夫君 作曲"
  poet = "長崎次郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \mark "Adagio"
  \tempo 4 = 63
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \repeat volta 5{
    fis4.fis8 fis4. d8 |
    cis4 ( b4 ) fis4 b4 |
    cis4. b8 fis4. b8 |
    cis2. r4 | \break
    d4. cis8 b4. fis8 |
    fis'2 d4 (cis8) b8 |
    cis4. b8 d4. cis8 |
    b2. r4 | \break
    fis'4. b8 b4. b8 |
    b4 b4 cis2 |
    fis4. d8 cis4. b8 |
    cis2. r4 | \break
    b4 b4 g4. b8 |
    fis2 d4 (cis8) b8 |
    cis4. cis8 cis4 d8 [(cis8)] |
    b2. r4 |
    fis'4. fis8 e4. fis8 | \break
    g2 b4 b4 |
    fis4. b8 cis4. cis8 |
    cis2. r4 |
  }\alternative {{  
    b4. b8 g4. (b8) |
    fis4. fis8 d4. b8 | \break
    cis4 cis4 cis4 d8 [(cis8)] |
    b2. r4 |
  }{
    b'4. b8 g4. b8 |
    fis4.~ fis8 d4. b8 |
    cis4. cis8 b'4. b8 | \break
    cis2. r4 |
    b4. b8 g4. b8 |
    fis4.~ fis8 d4. b8 |
    cis4 cis4 cis4 d8 [(cis8)] |
    b2. r4 
    \bar ":|."
  }}
}

text = \lyricmode {
  お お ぞ ら た ー か く よ は ふ か く、
  し じ ま の も り ー に そ び え た つ、
  か つ ら の こ ず え さ す と こ ろ、
  ほ く と の さ え ー に、 き み み ず ー や、 わ が わ こ
  う ど よ な が の ぞ み、 わ れ に ー か も に て
  た か く あ ー れ。 か ち え ん と ー き は ち か か ら
  ん、 な ど、 か ち え ー ざ る こ と あ ら ー ん
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


