\version "2.18.2"

\paper {indent = 0}

\header {
  title = "雲海貫く"
  subtitle = "平成20年第100回記念祭歌"
  composer = "木川明音君 作曲"
  poet = "石井翔君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 120
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 2/4
  \set melismaBusyProperties = #'()
  d8. [d16] d8 [d8] |
  d8. [d16] b8 [d8] |
  g8. [g16] fis8 [e8] |
  d4 r4 | \break
  e8. [e16] e8 [e8] |
  d4 b8 [g8] |
  a8. [b16] a8 [cis8] |
  d4 r4 | \break
  d8. [d16] d8 [d8] |
  d8. [d16] b8 [d8] |
  e8. [e16] d8 [b8] |
  a8 [g8] a4 | \break
  g'8. [g16] e8 [d8] |
  e8. [e16] d8 [e8] |
  e8. [e16] fis8 [a8] |
  g4 r4 | \break
  \override NoteHead.style = #'cross
  d8. [d16] d8 [d8] |
  d8. [d16] d8 [d8] |
  d8. [d16] d8 [d8] |
  d8 [d8] d4
  \bar "|." 
}

text = \lyricmode {
  う ん か い つ ら ぬ く た い ざ ん に
  ご さ ん を は せ と ほ え る く ま
  ぞ く や に み ー て る し め ん の そ か
  を し ん り の た け び で ふ く と ば す
  マ ツ リ ダ マ ツ リ ダ マ ツ リ ダ ヒ グ マ
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


