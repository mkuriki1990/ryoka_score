\version "2.18.2"

\paper {indent = 0}

\header {
  title = "MARCHING SONG"
  subtitle = "1915年"
  composer = "Prof.Paul Rowland 作曲"
  poet = "Prof.Paul Rowland 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c''{
  \tempo 4 = 104
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \partial 4 c4 ^\markup "Resolutely" |
  g4 a4 g4 f4 |
  e4. d8 c4 d4 | \break
  e8 ([ f8 ]) g8 ([ a8 ]) b4 c4 |
  c4 b4 r4 g4 | \break
  a4. g8 a4 g4 |
  f4. e8 f4 e4 | \break
  d4. e8 d4 a'4 |
  g4 g4 r4 g4 | \break
  c4 c4 b4 a4 |
  g4. f8 e4 g4 | \break
  a4 g4 g8 ([ f8 ]) e4 |
  e4 d4 r4 c8 d8 | \break
  e4 ^> e4 ^> e4 ^> e8 f8 |
  g4 g4 g4 r8 g8 | \break
  a8 b8 c4 c4. ^\markup \italic "(Broadly)" b8 |
  c4 ^> c4 ^> r4
  \bar "|."
}

text = \lyricmode {
  Come all ye men of Sap -- po -- ro, Come
  sing _ our _ far -- fam'd col -- lege; Our
  hearts a -- fire with high de -- sire, We're
  here to share her know -- ledge: By
  I -- shi -- ka -- ri's migh -- ty flood, With
  moun -- tains furm _ de -- fend -- ing, Give a
  cheer, cheer, cheer Fo -- r our mo --ther dear,
  Her thou -- sand sons be -- frien -- ding.
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


