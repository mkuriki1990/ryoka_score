\version "2.18.2"

\paper {indent = 0}

\header {
  title = "茫々はるか"
  subtitle = "大正13年寮歌"
  composer = "神島辰雄君 作曲"
  poet = "高野芳雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 4/4
  \set melismaBusyProperties = #'()
  g8. [(g16)] c8 [(c8)] e8. e16 d8. c16 |
  g8. c16 e8. e16 d8. c16 d8 r8 | \break
  g,8. g16 c8. c16 e8. e16 d8. c16 |
  g8. c16 e8. a16 g8. f16 e8 r8 | \break
  g8. g16 c8. a16 a8. g16 e8. c16 |
  d8. d16 d8. d16 d8. e16 d8 r8 | \break
  c8. c16 d8. d16 e8. e16 g8. g16 |
  c8. a16 a8. g16 e8. a16 g8 r8 | \break
  c,8. e16 g8. a16 g8. g16 e8. e16 |
  d8. d16 d8. d16 d8. e16 c8 r8 | \break
  g8. (g16 a4.\fermata g8 e'8. d16 |
  c2.) r4 | 
  \bar "|." \break
}

text = \lyricmode {
  ぼ う ぼ う は る か に み ど り に も え て、
  い し か り げ ん と う、 び の か に よ え ば、
  た か な り あ ふ る る わ こ う ど の ち や、
  あ あ、 こ の こ こ ろ の あ こ が れ の ち に、
  し~ょ こ う に か が や く れ い め い つ ぐ る、
  か ね を つ か ば や。
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


