\version "2.18.2"

\paper {indent = 0}

\header {
  title = "今日の寮歌"
  subtitle = "平成5年度寮歌"
  composer = "柳谷信吾君 作曲"
  poet = "小川太郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c''{
  \tempo 4 = 90
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 4/4
  \set melismaBusyProperties = #'()
  d4 b8. [a16] g8. [g16] g8. [a16] |
  b8. [b16] a8. [g16] a4 r4 | \break
  c8. [b16] a8. [g16] fis8. [fis16] fis8. [g16] |
  a8. [g16] g8. [a16] b4 r4 | \break
  b4 d8. [d16] b8. [b16] a8. [g16] |
  a8. [b16] b8. [a16] g4 r4 | \break
  d'4 e8. [fis16] g8. [g16] e8. [d16] |
  e8. [d16] c8. [b16] a4 r4 | \break
  b4 d8. [d16] b8. [b16] a8. [g16] |
  a8. [g16] b8. [a16] g4 r4 
  \bar "|."
}

text = \lyricmode {
  きょ う は ワ シ ら が ふ ろ そ う じ
  た ま り に た ま っ た み ず あ か を
  なん ど も な ん ど も す り お と す
  せ な を た が い に な が し あ い
  ふ ね に つ か り て う た う な る
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