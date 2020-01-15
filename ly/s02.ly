\version "2.18.2"

\paper {indent = 0}

\header {
  title = "蒼空高く翔らむと"
  subtitle = "昭和2年寮歌"
  composer = "長谷川吉郎君 作曲"
  poet = "土井恒喜君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 88
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major  
  \time 2/4 
  a8. a16 d8. e16 | 
  fis8. fis16 a4 | 
  b8. a16 fis8. b16 | 
  a4. r8 | \break
  fis8. fis16 fis8. fis16 | 
  fis8. g16 fis4 | 
  e8. fis16 e8. d16 | 
  d4. r8 | \break
  b8. d16 b8. d16 | 
  b8. d16 b4 | 
  a8. a16 d8. e16 | 
  fis4. r8 | \break 
  a,8. a16 d8. e16 | 
  fis8. fis16 a4 | 
  fis8. fis16 e8. a,16 | 
  d4. r8 | 
  \bar "|."|
}

text = \lyricmode {
  そ う く う | 
  た か く | 
  か け ら ん | 
  と、 | 
  し ば し、 や | 
  す ら う | 
  に れ の か | 
  げ、 | 
  ち か ら は | 
  む ね に | 
  あ ふ れ つ | 
  つ、 | 
  つ ば さ、 つ | 
  く ろ う | 
  お も い か | 
  な。
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
