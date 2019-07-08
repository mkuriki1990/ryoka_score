\version "2.18.2"

\paper {indent = 0}

\header {
  title = "STUDENTENLIED"
  subtitle = ""
  composer = "Prof.Hans Koller 作曲"
  poet = "Prof.Hans Koller 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 2/4
  \partial 8 d8 ^\markup "Muter bewegt" |
  b'8. a16 g8. e16 |
  d8 e8 d4 | \break
  d8 c'8 a4 |
  d,8 b'8 g8 d8 |
  b'8. a16 g8. e16 | \break
  d8 e8 d4 |
  d8 c'8 a8 fis8 |
  g4 g4 | \break
  a8 b8 a8 b8 |
  a8 b8 a4 |
  a8 a8 b8 cis8 | \break
  d8 d,8 d4 |
  d8 d8 g8 g8 |
  b8 b8 d4 | \break
  c8 d,8 a'4 |
  b8 d,8 g4 |
  d8 d8 g8 g8 | \break
  b8 b8 d4 |
  c8 d,8 a'8 d,8 |
  g4 r8
  \bar "|."
}

text = \lyricmode {
  Erst kommt der jun -- ge Stu -- di -- o,
  tra -- la -- la, tra -- la -- la, Ganz still und scheu nach
  Sap -- po -- ro, tra -- la -- la, tra -- la -- la.
  Die erste Zeit wirt ihm nicht leicht, Denn oft das Heimweh
  ihn besch -- leicht. Ju -- pei -- di, pei -- di, pei -- da,
  ju -- pei -- di, ju -- pei -- da, ju -- pei -- di, pei --
  di, pei -- da, ju -- pei -- di, pei -- da!
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


