\version "2.18.2"

\paper {indent = 0}

\header {
  title = "憧憬の故郷"
  subtitle = "昭和50年寮歌"
  composer = "関川哲夫君 作曲"
  poet = "佐藤守君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 116
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key f \major  
  \time 4/4 
  r4 a'8 a a a a a | 
  a2. g8 f | \break
  e4. e8 e e4. | 
  e2. r4 | 
  r d f4. g8 | \break
  a a4. a8 a4. | 
  r4 c8 c c c c c | 
  c2. r4 | \break
  r a8 a a a a a | 
  c2. f,8 e | 
  d4. d8 d d4. | \break
  bes'2. r4 | 
  r d, f4. g8 | 
  a a4. a8 a4. | \break
  g8 g g g~g2~ | 
  g2 r4 g8 a | 
  f1 
  \bar "|."|
}

text = \lyricmode {
  な が ふ る さ と は、
  い ず こ に あ り や、
  あ つ き ち し お に
  み は あ ふ れ ど も、
  の ぞ み を む ね に、
  ゆ く え も し れ ず 
  か ぜ に み を よ せ、
  さ す ら いー い で ん
}

harmony = \chordmode {
  f1~f 
  a:m a:7 d:m
  f c:7sus4 c:7 
  f a:m bes
  bes:m d:m a:m 
  g1.:m a2:7 f1
}

drum = \drummode{ 
  r4 bd8 bd r4 bd8 r8 | 
  r4 bd8 bd r4 bd8 r8 | 
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  r4 bd8 bd r4 bd8 r8 |
  bd4 r2. |
  r4 bd8 bd r4 bd8 r8 | 
}

\score {
  <<
    % ギターコード
    \new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}{
      \set chordChanges = ##t
      \harmony
    }
    
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
