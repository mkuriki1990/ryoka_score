\version "2.18.2"

\paper {indent = 0}

\header {
  title = "花を褥"
  subtitle = "大正7年寮歌"
  composer = "峰秀雄君 作曲"
  poet = "松本五六君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 2/4
  \set melismaBusyProperties = #'()
  a'8. a16 d,8. e16 |
  fis8. fis16 fis4 |
  a8. fis16 a8. b16 |
  a4. r8 | \break
  fis8. g16 fis8. e16 |
  d4 b8 b8 |
  a8 d8 fis8. e16 |
  d4. r8 | \break
  e8~ ^([e8] e8 e8 |
  e8 fis8 g4) |
  fis8. (fis16 fis8 fis8 |
  fis8 b8 a4) |
  d8. (d16 cis8. b16 | \break
  a8~ a8 b8. cis16 |
  fis,8. fis16 e8 a8 |
  a4.) r8 |
  a8. a16 fis8 d8 |
  b'8. b16 a4 | \break
  fis8. g16 a8 g8 |
  fis8 g8 a4 |
  a8. a16 fis8 d8 |
  b'8. b16 a4 |
  fis8. g16 a8. b16 | \break
  a4. r8 |
  b8. b16 b8. b16~ |
  b8. d16 e8. d16 |
  b8. b16 a8. fis16 |
  a4. r8 | \break
  d,4 (e8 fis8 |
  a8. b16 d8. b16 |
  a8. d,16 fis8 e8 |
  d4.) r8   
  \bar "|." \break
}

text = \lyricmode {
  は な を、 し と ね の く さ ま く ら、
  か す み に く る る の べ の は る、
  ロ ー マ の あ し た ナ イ ル の ゆ う べ、 え い が よ
  あ ー わ れ ゆ め の あ と、 か た む く つ き に 
  な お、 こ こ ろ せ ず、 お ご り に え い し ひ と び と
  の、 ね む り を ー や ぶ る お た け び や、
  け ん じ ぎ を と る き た の く に。
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


