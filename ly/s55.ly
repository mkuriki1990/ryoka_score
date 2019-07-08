\version "2.18.2"

\paper {indent = 0}

\header {
  title = "楡は枯れず"
  subtitle = "昭和55年寮歌"
  composer = "奥田和人君 作曲"
  poet = "新井桂二君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 120
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 4/4 
  d'4. d8 cis4. b8 | 
  fis4. fis8 fis4. r8 | 
  b4. b8 a4. fis8 | 
  d4. d8 d4. r8 | 
  d4. e8 g4. a8 | 
  b4. b8 b4. r8 | 
  a4. a8 a4. cis8 | 
  a2. r4 | 
  d4. d8 cis4. b8 | 
  fis4. fis8 fis4. r8 | 
  b4. b8 a4. fis8 | 
  d4. r8 d4. d8 | 
  e4. fis8 g4. b8 | 
  d4. r8 d4. d8 | 
  d2 e | 
  d4. r8 a4. a8 | 
  fis'2. e4 |
  fis4. fis8 e4. d8 | 
  b4. cis8 d4. b8 | 
  a4. r8 fis4. g8 | 
  a4. a8 b4. cis8 | 
  d4. r8 d4. d8 | 
  d2 e | 
  b2. r4 \bar "|." 
}

text = \lyricmode {
  あ さ も や | 
  け む る | 
  い ま ひ と |
  と き の | 
  う ま い の | 
  ゆ め の | 
  し あ わ せ | 
  よ | 
  さ め て う | 
  つ つ に | 
  み わ た せ | 
  ば び は | 
  く ず れ ゆ | 
  く ほ く | 
  と な | 
  り て ん | 
  く う | 
  つ~ね に く も | 
  い だ け ど | 
  も エ ル | 
  ム は も え | 
  て ち を | 
  ま ね | 
  く 
}

harmony = \chordmode {
}

drum = \drummode{
  bd1 bd |
  bd2 bd bd r |
  bd1 bd |
  bd2 bd bd r |
  bd1 bd |
  bd2 bd bd r |
  bd1 bd |
  bd2 bd bd r |
  bd2 bd |
  bd2 bd bd bd |
  bd r bd1 |
  bd bd2 bd bd r |
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
     \new DrumStaff \with{
      \remove "Time_signature_engraver"
      drumStyleTable = #percussion-style
      \override StaffSymbol.line-count = #1
      \hide Stem
    }
    \drum
  >>

  \midi {}
  \layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
}

