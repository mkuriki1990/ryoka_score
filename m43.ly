\version "2.18.2"

\paper {indent = 0}

\header {
  title = "帝都を北に"
  subtitle = "明治43年寮歌"
  composer = "柳沢秀雄君 作曲"
  poet = "谷村愛之助君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 2/4 
  \set melismaBusyProperties = #'()
  c8. e16 g8. g16 | 
  e8. d16 c4 |
  g'8. g16 e8. c16 |
  d4. r8 | \break
  e8. d16 c8. e16 |
  g8. e16 c4 |
  d8. d16 d8. e16 |
  c4. r8 | \break
  c'8. c16 d8. e16 |
  d8. c16 a4 |
  g8. g16 e8. g16 |
  a4. r8 | \break
  g8. [(a16)] g8. [(e16)] |
  d8. e16 c4 |
  e8. e16 d8. e16 |
  c4. r8 | \break
  g'8. g16 d8. g16 |
  a8. a16 g4 |
  a8. a16 c8. c16 |
  d4. r8 | \break
  c8. d16 c8. a16 |
  g8. ([g16] e8.) c16 |
  d8. g16 d8. e16 |
  c4. r8 | \break
    
}

text = \lyricmode {
  て い と を  き た に さ ん び~ゃ く り、
  つ が る の  う み を こ え  く れ ば、
  こ う じ ん た え  て そ ら き よ く、
  しょ~う ー しょ~う ー と し て み ず さ む  し。
  た い り く の せ い あ つ ま り て、
  わ が ほ く しゅ~う ー ー の し ま と こ る。
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


