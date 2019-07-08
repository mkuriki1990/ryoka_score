\version "2.18.2"

\paper {indent = 0}

\header {
  title = "若人よ"
  subtitle = "平成12年度寮歌"
  composer = "村中剛洋君 作曲"
  poet = "野路直之君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 120
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 3/4
  \mark \markup "Presto possibile"
  \set melismaBusyProperties = #'()
  \set Timing.measureLength = #(ly:make-moment 1/4)
  a8. [a16] |
  \set Timing.measureLength = #(ly:make-moment 3/4)
  fis'4 e4 d8. [d16] |
  cis2 cis8. [cis16] |
  cis4 ~ cis8. [d16] cis8. [b16] |
  a2 a4 | \break
  b2 b8. [a16] |
  cis2 cis4 |
  cis4 ~ cis8. [cis16] cis8. [d16] |
  a2 a8. [a16] | \break
  fis'4 e4 d8. [d16] |
  cis2 cis8. [cis16] |
  cis4 ~ cis8. [cis16] cis8. [d16] |
  e2 a,4 | \break
  b4~ b8. [b16] b8. [a16] |
  cis2 cis4 |
  d2 d8. [e16] |
  d2 d8. [cis16] | \break
  b4 ~ b8. [b16] b8. [b16] |
  a2 a8. [a16] |
  b4 ~ b8. [b16] b8. [a16] |
  cis2 cis8. [b16] | \break
  a4 ~ a8. [d16] d8. [cis16] |
  b2 b4 |
  b2 cis8. [d16] |
  e2 a,4 | \break
  fis'4 e8. [e16] e8. [a16] |
  d,2 a8. [a16] |
  b4 ~ b8. [d16] g8. [fis16] |
  e2 e8. [e16] | \break
  a4 ~ a8. [a16] a8. [a16] |
  b2 d,8. [cis16] |
  b4 ~ b8. [b16] fis'8. [e16] |
  d2
  \bar "|." 
}

text = \lyricmode {
  しゅ ん ぷ う お こ せ わ が わ 　 こ う ど よ ち
  を き み の い ろ 　 に そ め よ り ち
  な か り し も け っ き 　 そ そ が ば ひ
  か 　 り の み ち ひ ら か れ ん な み
  だ 　 た ぎ り て く も を 　 な が せ ば つ き
  も 　 わ れ ら を た た え ん や いっ
  し の た け り が せ い し 　 と な り て て ん
  に 　 の ぼ る は い ま こ 　 の と き ぞ
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


