\version "2.18.2"

\paper {indent = 0}

\header {
  title = "暁の渚離りて"
  subtitle = "昭和22年寮歌"
  composer = "竹内五男君 作曲"
  poet = "篠原昭壽君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 69
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 3/4
  \set melismaBusyProperties = #'()
  \mark \markup {"Andantino" \small "美しく"}
  d8^\mp ^\([(e8)] g4. fis8 |
  e8 [(b)] d2 \) |
  d8 (d8 e4 g4 |
  b8 a8 a2) | \break
  g4 ^\( a4. g8 |
  g8 [(fis8)] fis2 \) |
  d8 (d8 g4 a4 |
  b8 a8 g2) | \break
  e4^\p ^\( fis4. g8 |
  fis8 [(b,8)] b2 \) |
  b8^\markup \italic "cresc." (b8 e4 fis4 |
  g8 e8 b'2) | \break
  c4^\mf (c4. c8 |
  b8 [a8] g2) |
  fis8 ^(fis8 fis4 e4 |
  g8 fis8 e2) | \break
  b8 ^\([(c8)] d4. d8 |
  e8 [(d8)] d2 \) |
  g8 (g8 g4 a4 |
  b8 a8 a2) | \break
  b4 \( c4. b8^\< |
  a8\! [(g8)] a2 \) |
  b8^\f (b8 c4. b8 | \break
  a8 g8 fis2) |
  b,8^\p ^(b8 e4. g8 |
  fis8 e8 e2) | 
  \bar "|." 
}

text = \lyricmode {
  あ ー か つ き ー の、 な ぎ さ、 さ か り て、
  ふ る き も ー の、 ひ か り な き も の、
  そ こ い な ー き、 う み に、 ほ う れ ば、
  い さ さ け ー き、 み な わ が よ ぼ う、
  お ー も い で ー の、 ふ り し、 し ぐ さ に
  つ ぐ る な ー り、 い た き、 わ
  か れ を、 い た き、 わ か れ を。
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

