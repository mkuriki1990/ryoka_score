\version "2.18.2"

\paper {indent = 0}

\header {
  title = "若芽の出づる"
  subtitle = "平成3年度寮歌"
  composer = "柴田一君 作曲"
  poet = "柴田一君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c{
  \tempo 4 = 90
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 6/8
  \set melismaBusyProperties = #'()
  \set Timing.measureLength = #(ly:make-moment 1/8)
  fis8^"初めの音階" |
  \set Timing.measureLength = #(ly:make-moment 6/8)
  fis'4 e8 d4 cis8 |
  d4 cis8 b4. |
  a4. a8 [b8 cis8] | \break
  fis,4.~ fis4 fis'8 |
  e4 fis8 cis4 e8 |
  d4 cis8 b4 d8 |
  cis4 b8 a4 cis8 | \break
  b4.~ b4 fis'8 |
  b4 d8 e4 cis8 |
  a4 fis8 fis4 e8 |
  d4 d8 e4 d8 | \break
  fis4. e4 fis,8 |
  fis'4 e8 d4 cis8 |
  d4 cis8 b4 b8 |
  a4 a8 a8 [b8 cis8] | \break
  b2 ~ b8 r8 \bar "|." \break
  \key c \major
  \set Timing.measureLength = #(ly:make-moment 1/8)
  f8^"今の音階" |
  \set Timing.measureLength = #(ly:make-moment 6/8)
  a'4 g8 f4 e8 |
  f4 g8 d4. |
  c4. c8 [d8 e8] | \break
  a,4. ~ a4 a'8 |
  g4 a8 e4 g8 |
  f4 e8 d4 f8 |
  e4 d8 c4 e8 | \break
  d4. ~ d4 a'8 |
  d4 f8 g4 e8 |
  c4 a8 a4 g8 |
  f4 fis8 g4 fis8 | \break
  a4. g4 a,8 |
  a'4  g8 f4 e8 |
  f4 e8 d4 d8 |
  c4 c8 c8 [d8 e8] | \break
  d4. ~ d8 r8 \bar ":|."
  \bar "|."
}

text = \lyricmode {
   　 　 　 　 　   　 　 　 　 　   　 　 　 　 　
   　 　 　 　 　   　 　 　 　 　   　 　 　 　 　   　 　 　 　 　   　 　 　 　 　
     　 　 　 　 　   　 　 　 　 　   　 　 　 　 　   　 　 　 　 　
  わ か が の い づ ー る そ うしゅ ん ー
  に 　 こ え い も じ せ ー ぬ わ こ う ー ど
  の 　 せ ん ぷ う た い ー を ー つ ら ぬ け
  ば ー み な ぎ る ー た い し の い ぶ き ー あ り
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