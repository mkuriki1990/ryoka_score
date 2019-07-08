\version "2.18.2"

\paper {indent = 0}

\header {
  title = "蒼天へ"
  subtitle = "平成14年度寮歌"
  composer = "千葉直樹君 作曲"
  poet = "上川雄之君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c''{
  \tempo 4. = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 12/8
  \set melismaBusyProperties = #'()
  g4. g4 g8 f4. e4 d8 |
  c2.~ c4. c4 b8 |
  a4. ~ a4 c8 e4. d4 c8 |
  d2. ~ d4. r4. | \break
  g8 [g8 g8] g8 [g8 g8] g4. e4 d8 |
  c8 c4 c4 d8 c2. |
  a4 c8 c4. g8 [c8 c8] c4. |
  d4 d8 d8 [c8 b8] c4. r4. | \break
  f8 [f8 f8] f8 [f8 g8] a2. |
  e8 [e8 e8] e8 [e8 f8] g2. |
  f8 [f8 f8] f8 [f8 g8] a2. |
  b4 b8 b4 c8 b2. | \break
  e8 [e8 d8] c4. c8 [c8 b8] a4. |
  g8 [g8 g8] g8 [d8 e8] c2
  \bar "|." 
}

text = \lyricmode {
  あ お き さ み ど り 　 あ ま り 　 に ふ か ー く 　 
  わ か ば に ふ せ し か ぜ ふ く お か の こ こ で つ ち か う こ の お ー も い
  と も と の ゆ め は し の の め あ か り た た ず み う つ ろう あ こ が れ を
  い ま こ そ わ が み の つ ば さ と な さ ん
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


