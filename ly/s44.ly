\version "2.18.2"

\paper {indent = 0}

\header {
  title = "孤独に満てる"
  subtitle = "昭和44年寮歌"
  composer = "服部泰明君 作曲"
  poet = "山崎芳行君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor
  \time 2/4
  \set melismaBusyProperties = #'()
  \repeat volta 2 {
  a8.^"Adagio" d16 e8. f16 |
  e4 d8. d16 |
  a'8. a16 bes8. a16 |
  f8. d16 e4 | \break
  f8. a16 e8. d16 |
  e8. f16 bes8. (a16) |} \alternative {{
  f8. f16 e8. d16 |
  e4. r8 | \bar":|." \break }{
  bes'8. a16 f8. e16 |
  d4. r8 |
  g8. a16 g8. f16 |
  e4 e16 d8. |
  f8. f16 e8. f16 | \break }}
  a4 bes16 a8. |
  bes8. bes16 a8. f16 |
  a4 a16 d8. |
  f8. f16 e8. e16 |
  d4. r8 | \break
  d,4 a'4 |
  bes8. a16 g16 f16 e8 ~ |
  e8 d8 a'8. f16 |
  e16 d8. e4 | \break
  f8. e16 a8. a16 |
  d4 bes8. a16 |
  f8. a16 e8. a,16 |
  d4. r8 
  \bar "|."
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
    \addlyrics {
      こ と く に み て る わ が せ い し~ゅ ん に、
      い つ し か は る も ー お と ず れ ぬ、
      さ く ら ば な。 あ さ つ ゆ に ぬ れ あ ら た な
      と も と、 さ か づ き か わ す た の し さ よ、
      あ あ、 わ れ ひ と り ー に、 あ ら ず し て
      わ が せ い し~ゅ ん は、 と も と あ り。
    }
    \addlyrics {
      ま だ も え や ら ぬ し ば ふ の う え に、
      ひ と ひ ら ま い ち る
    }
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