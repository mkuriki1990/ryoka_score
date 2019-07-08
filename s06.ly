\version "2.18.2"

\paper {indent = 0}

\header {
  title = "平和の光輝ける"
  subtitle = "昭和6年寮歌"
  composer = "金景洙君 作曲"
  poet = "広瀬英三君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 2/4
  \set melismaBusyProperties = #'()
  \mark \markup {\small 緩るやかに}
  g8. g16 c8. c16 |
  d8. c16 g4 |
  c8. d16 e8. e16 |
  d4. r8 | \break
  a'8. a16 g8. g16 |
  e8. d16 c4 |
  d8. d16 d8. c16 |
  a4. r8 | \break
  g8. g16 a8. g16 |
  c8. d16 e4 |
  e8. g16 c8. a16 |
  g4. r8| \break
  c8. c16 a8. a16 |
  g8. e16 c4 |
  d8. d16 d8. e16 |
  d4. r8 | \break
  e8. g16 c8. c16 |
  e8. c16 g4 |
  c8. c16 d8. e16 |
  d4. r8 | \break
  c8. c16 a8. g16 |
  e8. d16 c4 |
  d8. c16 a8. g16 |
  c4. r8 |
  \bar "|." \break
}

text = \lyricmode {
  へ い わ の ひ か り か が や け る、
  は る ま だ あ さ き あ け ぼ の に、
  あ や な す く も を わ け い で て、
  い ろ ど ら れ ゆ く せ い し~ゅ ん の、
  く お ん の ゆ め を も と め つ つ、
  こ え た か ら か に う た わ な ん。
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


