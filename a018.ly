\version "2.18.2"

\paper {indent = 0}

\header {
  title = "College Hymn"
  subtitle = "1916年"
  composer = "Prof.Paul Rowland 作曲"
  poet = "Prof.Paul Rowland 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c''{
  \tempo 4 = 69
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  %\set melismaBusyProperties = #'()
  \repeat volta 4 {
  g4 ^\markup "Heartily" e8 f8 g4. g8 |
  a4 b4 c4. g8 | \break
  c4 g4 f4 e4 |
  d4 ( fis4 ) g4. g8 | \break
  a4 a4  d4. b8 |
  g4 g4 c4. c8 | \break
  c4 g4 e4 c4 |
  d4 d4 g4. g8 | \break
  g4.e8 d4 c4 |
  a'4 a4 g4. g8 | \break
  a4 b4 c4 b4 |
  a4 a4 g4. g8 |
  c4 g4 f4 e4 | \break }
  \alternative {{
    d4 d4 c2 }{
      a'2 b2 |
      c2. r4 }}
  \bar "|."
}

text = \lyricmode {
  Fair Al -- ma Ma -- ter, this our hymn Of
  filial loy -- al -- ty we chant; A --
  midst thy grove of A -- ca -- deme, In
  clois -- ter'd qui -- et dost thou grant To
  ev' -- ry ar -- dent ear -- nest youth Vi -- 
  sions of Beau -- ty, Vir -- tue, Truth! Vi sions of Beau -- ty,
  Vir -- tue, Truth! and for Man!
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


