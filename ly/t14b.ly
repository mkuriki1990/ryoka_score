\version "2.18.2"

\paper {indent = 0}

\header {
  title = "大地はなごやかに"
  subtitle = "大正14年開舎20周年記念寮歌"
  composer = "三溝清美君 作曲"
  poet = "黒沢徹君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major  
  \time 2/4 
  c8. e16 g8. g16 | 
  g8. g16 g4 | 
  c8. b16 a8. c16 | 
  g4. r8 | \break
  c,8. e16 g8. g16 | 
  g4 e8. c16 | 
  d8. d16 d8. e16 | 
  c4. r8 | \break
  g'8. g16 g8. g16 | 
  c8. c16 c4 | 
  c8. e16 d8. c16 | 
  d4. r8 | \break
  a8. g16 a8. c16 | 
  b8. a16 g4 | 
  e8. e16 d8. g16 | 
  c,4. r8 | \break
  g'8.([ g16]) g8. g16 | 
  e'8. e16 e8. e16 | 
  f8. e16 e8. c16 | 
  e4. r8 | \break
  d4( \grace{c16[ d])} e8. c16 | 
  a8. g16 g4 | 
  e8. e16 d8. g16 | 
  c,4. r8 | 
  \bar "|."|
}

text = \lyricmode {
  ち は な ご | 
  や か に | 
  う る お い | 
  て、 | 
  お か の な | 
  ぞ え の | 
  わ か く さ | 
  や、 | 
  さ ゆ ら ぐ | 
  に れ の | 
  わ か ば に | 
  も、 | 
  は る し ん | 
  せ い の | 
  き は あ ふ | 
  る、 | 
  もー り の | 
  み ど り に | 
  な が れ く | 
  る、 | 
  あー、 せ い | 
  しゅ ん の | 
  た た え う | 
  た。 
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
  bd4 bd r8 \tuplet 3/2 {bd8. bd bd} |
  bd4 bd bd bd|
  bd4 bd r8 \tuplet 3/2 {bd8. bd bd}|
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
