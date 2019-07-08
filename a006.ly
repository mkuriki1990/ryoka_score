\version "2.18.2"

\paper {indent = 0}

\header {
  title = "心の故郷"
  subtitle = "大正11年桜星会歌"
  composer = ""
  poet = ""
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  c8. c16 d8. e16 g8. g16 g4 |
  e8. g16 a8. c16 c4. r8 | \break
  a8. a16 g8. c16 b8. a16 g4 |
  e8. e16 d8. d16 c4. r8 | \break
  d8. c16 d8. e16 g8. g16 g4 |
  a8. a16 c8. d16 c4. r8 | \break
  a8. a16 g8. g16 c,8. d16 e4 |
  c'8. c16 d8. e16 e4. r8 | \break
  a,8. a16 a8. a16 g8. a16 c4 |
  c8. c16 d8. e16 e4. r8 | \break
  e8. d16 c8. c16 b8. a16 g4 |
  e8. f16 e8. d16 c4. r8
  \bar "|."
}

text = \lyricmode {
  こ こ ろ の さ と よ い し か り の、
  ゆ め、 は る か な る く さ の の べ、
  は な は、 け ぶ り て か げ ほ の に、
  い の ち の は え と よ ろ こ び を、
  う つ つ に つ つ む あ こ が れ の、
  ば ら い ろ の も や し た わ し や。
}

harmony = \chordmode {
}

\score {
  <<
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


