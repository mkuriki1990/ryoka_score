\version "2.18.2"

\paper {indent = 0}

\header {
  title = "敝れし衣"
  subtitle = "大正14年寮歌"
  composer = "三溝清美君 作曲"
  poet = "外山徳次郎君 作歌"
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
  g8. c16 e8. e16 |
  e8. e16 e8. e16 |
  e8. f16 e8. a16 |
  g4. r8 | \break
  c,8. d16 e8. g16 |
  a8. ~ [a16] a8. c16 |
  a8. g16 d8. e16 |
  c4. r8 | \break
  b8. c16 d8. d16 |
  d8. d16 d4 |
  c8. c16 e8. g16 |
  a4. r8 | \break
  g8. g16 a8. c16 |
  b8. a16 g4 |
  g8. g16 b8. d16 |
  c4. r8 |
  \bar "|." \break  
}

text = \lyricmode {
  や ぶ れ し こ ろ も の そ で に ち る、
  ふ こ う の は ー な の さ よ あ ら し、
  さ び し く つ よ く い き ぬ べ く、
  て い ね の み ね に ひ び く か な。
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


