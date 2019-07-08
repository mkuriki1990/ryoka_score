\version "2.18.2"

\paper {indent = 0}

\header {
  title = "島浪かへる"
  subtitle = "大正3年桜星会歌"
  composer = "岩崎直砥君 作曲"
  poet = "木原均君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 52
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  \time 4/4
  \set melismaBusyProperties = #'()
  \mark \markup \small "荘重に"
  bes4 ees4 ees8 ([ f8 )] g4 |
  ees4 bes'8 ([ c8 )] bes2 |
  bes2 ees,8 ( f16 ) g16 aes4 | \break
  d,4 ( c16 [d16 ees16 ) c16 ] bes2 |
  bes4 ees4 ees8 ([ f8 ]) g4 |
  ees4 bes'8 [( c8 )] bes2 | \break
  bes4 c8 [( ees8 )] bes4 g8 ([ f8 ]) |
  ees2. r4 |
  bes4 ees4 ees8 ([ g8 )] bes4 | \break
  c8 ees8 bes2 c8 bes8 |
  ees,2 f4 ^( g8 [ aes8 ] ) |
  g4 f4 bes2 | \break
  bes,4 bes4 c8 ([ d8 ]) ees4 |
  ees8 [( bes8 ) ees8 ( g8 )] bes2 |
  bes4 c4 bes4 ( g8 ) [ f8 ] |
  ees2. bes8 bes8 | \break
  bes2 ( bes8 ) g'8 bes,8 ees8 |
  ees2. bes8 ees8 |
  g2 g4 ees8 g8 |
  bes2. c8 c8 | \break
  c2 ~ c8 ees8 bes8 g8 |
  ees2. c8 bes8 |
  bes2 bes'4 g8 f8 |
  ees2. r4
  \bar "|."
}

text = \lyricmode {
  し ま な ー み か え ー る、 ほ く ー め い
  さ ー ー ー し て、 い し か ー り の み ー ず
  す え ー と お ー く か す み ー の
  あ な た、 な が る る ー ー く に に、
  あ け く ー れ な ー れ ー し、 わ が と ー も の、 ま な
  び ー に つ ど う、 ゆ え い の に わ に、 け ん
  ら ー ん の は る、 ま た、 お と ず れ ぬ。
}

harmony = \chordmode {
}

\score {
  <<
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


