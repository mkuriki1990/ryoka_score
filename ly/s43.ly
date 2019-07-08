\version "2.18.2"

\paper {indent = 0}

\header {
  title = "樹梢霧海に"
  subtitle = "昭和43年寮歌"
  composer = "佐藤菊男君 作曲"
  poet = "新橋登君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  \time 2/4
  \set melismaBusyProperties = #'()
  \repeat volta 4 {
  c16 c8. c8. ~ [c16] |
  g'16 g8. g8. g16 |
  g16 g8. \tuplet 3/2 { aes8 [(g8)] f8} |
  g4. r8 | \break
  aes16 aes8. aes8. g16 |
  c16 c8. aes8. g16 |
  aes16 g8. ees8. d16 |
  c4. r8 | \break
  d16 d8. d8. d16 |
  f16 f8. ees8. d16 |
  c16 b8. c8. ees16 |
  g4 aes8. g16 |
  c4. d8 | \break
  c16 c8. aes8. (g16) } \alternative {{
  ees16 g8. g8. f16 | 
  ees4. r8 \bar":|."  }{
  ees16 g8. aes8. g16 \bar"||" \time4/4 c2 r4 \bar"||" \break }}
  bes,4 ees4. ~ ees8 ees4 d8. ees16 |
  f4 f4 r4 bes,8 bes8 |
  f'4. f8 g8 aes8 g8. ees16 |
  f2. g4 | \break
  g4. (f8) ees4 aes8. [(bes16)] |
  c8 c8 c8 c8 c4 bes4 |
  bes,2 a4 g'8. [(f16)] |
  ees2. r4 | \break
  r8 f4 d8 f8. g16 aes4 |
  g8. g16 g8 ees8 g8. aes16 bes4 |
  r8 c4 c8 c4 bes4 |
  aes8 g4 f8 bes4 bes4 | \break
  ees4. des8 c4 b4 |
  c4. aes8 f4 d4 |
  bes'2 a4 c4 |
  bes2. r4 | \break
  g8 ees8 r4 aes8. bes16 c8 c8 |
  c2. bes4 |
  bes,2 a4 g'8. [(f16)] |
  ees2. r4 |
  \bar "|."
}

text = \lyricmode {
  じ~ゅ しょ う ー む か い に き え い ー り て、
  ほ く め い が じ~ょ う の な つ の よ い、
  な ん こ う ふ ら く を ほ こ り し も、 と き ち~ょ う
  す い の ー か ぜ つ よ し め ざ さ ん や。
  \set stanza = #"転句" ゆ り~ょ ー の に し~ゅ ん に や ど せ る し ら つ ゆ の、 い
  の ー ち み ー じ か に し て、 よ し と す ー るー
  さ に あ ら ば わ れ ら が と も よ、 と わ な る ほ し ー に、 す~う
  げ ん に た い し を つ げ る べ く、
  い ま た か ら か に、 ち か い け ー ん。
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