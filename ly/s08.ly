\version "2.18.2"

\paper {indent = 0}

\header {
  title = "タンネの氷柱"
  subtitle = "昭和8年寮歌"
  composer = "白石祐義君 作曲"
  poet = "卜部清君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major  
  \time 2/4 
  c8. c16 e8. e16 | 
  g8. g16 e4 | 
  d8. d16 c8. e16 | 
  g4. r8 | \break
  g8. g16( a8.) g16 | 
  c,8. d16 e4 | 
  g8. e16 e8. d16 | 
  c4. r8 | \break
  a'8. a16 a8. c16 | 
  d8. c16 a4 | 
  a8. g16 e8. a16 | 
  g4. r8 | \break
  a8. a16 a8. g16 | 
  c,8. d16 e4 | 
  d8. c16 a8. c16 | 
  c4. r8 | \break
  c8. c16 e8. e16 | 
  d8. e16 g4 | 
  a8. g16 c8. a16 | 
  g4. r8 | \break
  a8. a16 g8. g16 | 
  c,8. d16 e4 | 
  d8. c16 a8. c16 | 
  c4. r8 
  \bar "|."|
}

text = \lyricmode {
  タ ン ネ の つ ら ら き ゆ る こ ろ、
  こ ちょ_う は ね む る は な の や ど、
  ま き ば に む す ぶ ゆ め は る か、
  あ を き の ぞ み の み ね こ え て、
  し か い に は ぶ る わ か ど り の、
  い し か り を た つ い き を み ん。
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
