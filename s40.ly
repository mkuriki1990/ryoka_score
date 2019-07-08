\version "2.18.2"

\paper {indent = 0}

\header {
  title = "新しき陽は"
  subtitle = "昭和40年寮歌"
  composer = "西雪弘光君 作曲"
  poet = "金子公良君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \partial 2 \partial4 c4 ^\mf ^\markup "Moderato" |
  e2 g4 g8. [(a16)] |
  g2. c8. c16 |
  b4 a4 g4 e4 | \break
  d2. f4 |
  f2 e4 f4 |
  g2. e8. g16 |
  a4. g8 d4 d4 | \break
  c2. c4 |
  a2 c4 f4 |
  f2. f8. f16 |
  f4 g4 a4. a8 | \break
  g2. g8. ^\f g16 |
  c4 c4 a4 g8. g16 ^\markup \italic "cresc." \bar "||" 
  \time3/4 a8. a16 a4 c4 \bar "||"\time4/4 | \break
  d2. c8. c16 |
  c4 g4  g4 \fermata g8. ^\markup \italic "rit." g16 |
  a4. a8 g4. g8 |
  c,2.
  \bar "|."
}

text = \lyricmode {
  あ た ら し ー き ひ は い ま の ぼ
  り、 そ ら の は て れ い め い を つ
  ぐ く ろ き く も に し に な が れ 
  ん、 ふ き す さ ぶ、 あ ら し を つ き 
  て、 へ い わ を と、 こ え は と ど ろ く。
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