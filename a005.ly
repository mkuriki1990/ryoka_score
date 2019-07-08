\version "2.18.2"

\paper {indent = 0}

\header {
  title = "瓔珞みがく"
  subtitle = "大正9年桜星会歌"
  composer = "置塩寄君 作曲"
  poet = "佐藤一雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major  
  \time 2/4 
  c8. g16 c8. d16 | 
  e8. d16 g4 | 
  e8. d16 e8. a16 | 
  g4. r8 | \break
  a8. c16 c8. a16 | 
  g4 a8. g16 | 
  a8. g16 e8. d16 | 
  c4. r8 | \break
  c'8. c16 c8. c16 | 
  c8. d16 e4 | 
  d8. c16 a8. b16 | 
  c4. r8 | \break
  a8. c16 c8. a16 | 
  c8. a16 g4 | 
  a16 g16 e4 d8 | 
  c4. r8 
  \bar "|."|
}

text = \lyricmode {
  よ う ら く み が く い し か り の、
  み な も と と お く と い く れ ば、
  げ ん し の も り は く ら く し て、
  ゆ き げ の い ず み た ま と わ く。
}

harmony = \chordmode {
  
}

drum = \drummode{
  bd2 bd |
  bd4 bd bd r |
  bd2 bd |
  bd4 bd bd r |
  bd2 bd |
  bd4 bd bd r |
  bd2 bd |
  bd4 bd bd r |
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
