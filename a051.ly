\version "2.18.2"

\paper {indent = 0}

\header {
  title = "北海道帝国大学附属水産専門部歌"
  subtitle = "昭和3年"
  composer = "大阪音楽学校長 永井幸次氏 作曲"
  poet = "西村真琴氏 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c''{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  \time 2/4
  \set melismaBusyProperties = #'()
  bes8. c16 bes4 |
  g8. aes16 g8 ees |
  f8. ees16 g8 f16 ([ ees ]) |
  bes8. c16 bes4 | \break
  ees8. ( d16 ) ees8 f |
  g8. ( f16 ) c'8 bes |
  aes16 g f ees f8 g |
  ees4. r8 | \break
  f8. f16 bes4 |
  c8. bes16 ees8 ~ [ ees ] |
  d16 c bes a bes8 c |
  bes4. r8 | \break
  ees8. ( ees16 ) bes8. c16 |
  bes8 g ees ~[ ees ] |
  f16 ees f g aes8 bes |
  ees,4. r8 | \break
  bes'8. c16 bes8 bes |
  ees8. ees16 bes8 ~[ bes ] |
  c8. bes16 aes8 g | \break
  f4 bes |
  ees,2 ~ |
  ees4 r4
  \bar "|."
}

text = \lyricmode {
  よ う の ひ ん が し あ き つ し ー ま ね は、
  か ん か い じ ー つ に ば ん り を こ え て、
  て ん け~い ふ か き ー す い さ ん の く に、
  し ん に っ ぽ ん の ー し め い に い き よ、
  じ だ い は き た る ー わ れ ら が
  じ だ い ー。
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


