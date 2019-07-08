\version "2.18.2"

\paper {indent = 0}

\header {
  title = "野性に吠えろ"
  subtitle = "平成22年度寮歌"
  composer = "林祥史君 作曲"
  poet = "林祥史君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c''{
  \tempo 4 = 140
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 3/4
  \set melismaBusyProperties = #'()
  a8. [a16] a8. [g16] a8. [b16] |
  c2 a4 |
  g8. [g16] g8. [e16] g8. [a16] | \break
  g2 r4 |
  a8. [a16] a8. [g16] a8. [b16] |
  c2 a4 | \break
  g8. [g16] g8. [a16] e8. [d16] |
  c2 r4 \bar "||" 
  \key c \minor
  c'8. [c16] c8. [bes16] c8. [d16] | \break
  ees2 c4 |
  bes8. [bes16] bes8. [g16] bes8. [c16] |
  bes2 r4 | \break
  c8. [c16] c8. [bes16] c8. [d16] |
  ees2 c4 |
  bes8. [bes16] bes8. [c16] g8. [f16] | \break
  ees2 r4
  \bar "|." 
}

text = \lyricmode {
  し ず か に く ら す ー う さ ば ら し よ
  り い き は じ さ す ら い
  な ー す が ま ま に や せ い に ほ え
  ろ ー う た え よ お ど れ 
  や せ い に ほ え ろ ー く る え よ く る え
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


