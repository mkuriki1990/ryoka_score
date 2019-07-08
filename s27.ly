\version "2.18.2"

\paper {indent = 0}

\header {
  title = "永遠の水のひろごり"
  subtitle = "昭和27年寮歌"
  composer = "田畑実君 作曲"
  poet = "村上啓司君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor 
  \time 4/4
  \set melismaBusyProperties = #'()
  \partial 2 \partial 4 g4 |
  c2 ees4. d8 |
  d2. r4 |
  c4. c8 b4 c4 |
  d4. d8 g,2 | \break
  aes'4. aes8  g4 f4 |
  g4. g8 g2 |
  g,4. g8 g4 c4 |
  d4. d8 c2 | \break
  g'4. g8 aes4 g8 [(f8)] |
  g2. r4 |
  c4. c8 c4 b 8 c8 |
  d4. d8 d2 | \break
  ees4. (ees8) d4 c4 |
  aes4. c8 g2 |
  aes4. g8 f4 ees4 |
  d4 ees4 c2 |
  bes4. (c8)ees4 g8 bes8 | \break
  c4. c8 c2 |
  d4. c8 bes4 g4 |
  c4. c8 c2 |
  bes4 bes8 aes8 g4 f4 |
  aes4. aes8 g2 | \break
  f8 aes8 g8 f8 ees4 d4 |
  c2. r4 |
  c4. d8 ees4 f4 |
  g4. g8 g2 |
  aes4. c8 c4 b8 [(c8)] | \break
  d4. c8 g2 |
  c4. c8 aes4 f4 |
  aes4 aes4 g2 |
  aes8 g8 f8 ees8 d4 g4 |
  c,2.
  \bar "|." 
}

text = \lyricmode {
  え い え ん の、 み ず の ひ ろ ご り
  い に し す べ て の、 な ご り を し る す。
  ひ の ひ か ー り、 み の も に わ た ら ず、
  あ ー つ き く も の ひ く く た れ た り、 お ー い な る
  み ず と つ よ き か ぜ と の、 し~ゅ ゆ な る、 し ず け さ
  い ま ぞ や ぶ れ ん。 む げ ん の か こ の な ご り を ー
  な み と、 い ま こ そ わ れ ら お お し く た た ん。
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

