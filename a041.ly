\version "2.18.2"

\paper {indent = 0}

\header {
  title = "昭和8年応援歌"
  subtitle = ""
  composer = "脇坂君 作曲"
  poet = "石井君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 2/4
  \set melismaBusyProperties = #'()
  c8. e16 g4 ~ |
  g8. g16 a8. g16 |
  c4. r8 \bar "||" \time 3/4 \break
  d8. ([ c16 ]) a8. ([ g16 ]) e8. a16 |
  g2 r4 \bar "||" \time 2/4
  g4 c | \break
  b4 a |
  c8. c16 g4 \bar "||" \time 3/4 a8. g16 e4 c |
  d2 r4 \bar "||" \time 2/4 \break
  e8. g16 c4 |
  c8. b16 c8. d16 |
  e4 c | \break
  d8. c16 b8 a |
  d4 e |
  c8. c16 c8 c | \break
  b4. b8 |
  a4 g8. g16 |
  a4 g  \bar "||" \time 4/4
  c2. r4
  \bar "|."
}

text = \lyricmode {
  ち か ら ー か た む け、
  き ー た ー え た る、 か い
  な を ぶ し て い く さ、 ま つ、
  み よ、 お う せ い の は た
  ひ る が え り、 あゝ、 た た か わ
  ず し て、 て き を の む。
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


