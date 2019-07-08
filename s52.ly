\version "2.18.2"

\paper {indent = 0}

\header {
  title = "新な燈火"
  subtitle = "昭和52年寮歌"
  composer = "元辻毅君 作曲"
  poet = "石川徹君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \partial 2 \partial 4 a4 |
  d2. \tuplet 3/2 { cis8 [d8 fis8] } |
  a2. \breathe \tuplet 3/2 { g4 fis8} |
  e2. \tuplet 3/2 { e8 [dis8 e8] } |
  g2 r4 a,4 | \break
  d2. \tuplet 3/2 { cis8 [d8 fis8] } |
  a2. \breathe \tuplet 3/2 { g4 fis8} |
  e2. \tuplet 3/2 { e8 [fis8 g8] } |
  e2. a,4 | \break
  fis'2 e4 a,4 |
  d2 r4 d4 |
  b2 d4 \tuplet 3/2 { d8 [d8 e8] } |
  fis2. \breathe fis4 | \break
  g2 fis4 eis4 |
  fis2. \breathe fis4 |
  g2 g4 \tuplet 3/2 { g8 [b8 a8] } |
  fis2. \breathe fis4 | \break
  g2 b4 d4 |
  cis2. \breathe a4 |
  b4 b4 \tuplet 3/2 { g4 g8 } \tuplet 3/2 { b4 b8 } |
  d2. \breathe a4 | \break
  b4 b4 a4 g4 |
  a2. \breathe a,4 ^( |
  fis'4 g4 e2 |
  e2 d2 ~ |
  d2. ) 
  \bar "|."
}

text = \lyricmode {
  き た ぐ ー に の す さ ぶ ふ ぶ き に、 に
  れ の ー き の た か く そ び え る も
  り の な か。 は て る こ と な く お
  お し く て、 ひ と の ま ぶ た に い
  つ ま で も あ ざ や か に き ざ む そ
  の す が た を、 け い て き りょ~う は ー。
}

harmony = \chordmode {
  r4 d1 d e:m a:7
  d d e:m a:7
  d2 a:7 d1 b:m fis:m
  e2:m fis:m fis:7 b:7 e1:m fis:m
  e2:m e:m7 fis:7 a:7 g1 d
  g a:7 d4 g4 e2:m a:7 d 
}


\score {
  <<
    % ギターコード
    \new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}{
      \set chordChanges = ##t
      \harmony
    }
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


