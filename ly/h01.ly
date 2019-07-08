\version "2.18.2"

\paper {indent = 0}

\header {
  title = "惡魔死す瞬間"
  subtitle = "平成元年度寮歌"
  composer = "田口拓君 作曲"
  poet = "宜寿次盛生君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c''{
  \override Stem.neutral-direction = #down
  \tempo 4 = 90
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 4/4
  \set melismaBusyProperties = #'()
  d8. [d16] b8. [a16] g8. [e16] a4 |
  a8. [a16] a8. [g16] b2 |
  d8. [d16] b8. [a16] g4 a8. [g16] | \break
  e8. [e16] g8. [fis16] e2 |
  a4. a8 a4 <<
          {
            \voiceOne
            g8. [a16]
          }
          \new Voice = "splitpart" {
            \voiceTwo
            g8 [a8]
          }
  >> 
  b2 b2 | \break
  d4. b8 g4 e4 |
  b'2. r4 |
  d,8. [d16] e8. [d16] g8. [a16] b4 | \break
  a8. [b16] fis8. [d16] e2 \bar ":|."
  e8.^"４番の後のみ" [b16] e8. [fis16] g8. [a16] b4 |
  a8. [b16] fis8. [d16] e2 
   
  
       \bar "|."
}

text = \lyricmode {
  \set stanza = #"1." サ タ ン し す と き な に を み る と け ざ る の ろ い お に が し ま
  ほ く め い の く に こ の し ろ に
  わ れ た び だ ち の と き を ま つ い ま た び だ ち の と き を ま つ
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

