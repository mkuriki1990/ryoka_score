\version "2.18.2"

\paper {indent = 0}

\header {
  title = "うす紅の"
  subtitle = "昭和54年寮歌"
  composer = "高田和重君 作曲"
  poet = "鶴原文孝君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 69
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \repeat volta 5 {
  a16 a8. d8. e16 fis16 fis8. fis4 |
  a16 a8. fis8. d16 b16 b8. b4 |
  a16 a8. d8. e16 fis16 fis8. fis4 | \break
  e16 e8. e8. fis16 e2 |
  a,16 a8. (d8.) e16 fis16 fis8. fis4 |
  a16 a8. fis8. d16 b16 b8. b4 | \break
  a16 a8. d8. e16 fis16 fis8. fis4 |
  e16 e8. d8. cis16 d2 |
  d16 d8. g8. a16 b16 b8. b4 | \break
  cis16 cis8. cis8. b16 a16 fis8. fis4 |
  b16 b8. b8. a16 fis4 e8. d16 | } \alternative {{
  b4 e8. fis16 d2 \bar ":|." \break}{
  b4 e8. fis16 d2 \bar "||"
  b'16 b8. cis8. d16 cis4 b8. b16 |
  a4 cis8. cis16 d2 
  \bar "|."}}
}

text = \lyricmode {
  う す く れ な い の あ き ゆ う ぐ れ に、 ほ ろ び の か ぜ は
  ふ き す さ ぶ、 し~ゃ よ~う ー か げ さ す ひ に う つ ろ い て、
  か た む く す が た い た ま し く、 わ が む ね に み つ
  い に し ひ の は え、 お も い は け~い て き と と も に
  を と わ に。 お も い は け~い て き よ と わ に。
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