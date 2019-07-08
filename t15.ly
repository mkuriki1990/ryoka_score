\version "2.18.2"

\paper {indent = 0}

\header {
  title = "ああ青春の歓喜を"
  subtitle = "大正15年寮歌"
  composer = "牧野千代治君 作曲"
  poet = "木村左京君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 4/4
  \set melismaBusyProperties = #'()
  g'8. g16 g8. e16 e8. d16 c4 |
  a'8. a16 a8. a16 a4. r8 | \break
  g8. g16 g8. e16 g8. ~ [g16] g8. e16 |
  d8. d16 e8. e16 c4. r8 | \break
  d8. d16 d8. d16 c8. d16 e4 |
  g8. g16 g8. g16 g4. r8 | \break
  a8. ~ [a16] a8. a16 g8. a16 c8. c16 |
  d8. d16 d8. d16 d4. r8 | \break
  e8. ~ [e16] e8. d16 c8. c16 a8. a16 |
  g8. g16 g8. e16 d4. r8 | \break
  e8. [(g16)] a8. a16 g8. a16 c8. c16 |
  d8. d16 d8. e16 d4. r8 |
  \bar "|." \break  
}

text = \lyricmode {
 あ あ、 せ い し~ゅ ん の よ ろ こ び を、
 う た げ の よ ー い と い う は た れ、
 わ が ゆ く か た の と お け れ ば、
 し ー ば し こ の や に い こ い し て、
 く ー さ を し と ね の た び ま く ら、
 あ ー す の た び じ を ゆ め に み ん。
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


