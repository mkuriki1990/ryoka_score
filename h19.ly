\version "2.18.2"

\paper {indent = 0}

\header {
  title = "恵迪小唄"
  subtitle = "平成19年度寮歌"
  composer = "八城雄太君 作曲"
  poet = "井関俊介君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 140
  %\autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major  
  \time 2/4 
  r8. a'16 a8.[ a16] | 
  a8.[ a16] fis8.[ a16] | 
  b8.[ b16] a8.[ fis16] | 
  a8.[ b16] a8. r16 | \break
  b8.[ d16] d8.[ d16] | 
  a8.[ a16] g8.[ fis16] | 
  fis8.[ fis16] e8.[ d16] | 
  e4 r | \break
  r8. d16 d8.[ d16] | 
  e8.[ e16] d8.[ e16] | 
  fis8.[ a16] a8.[ b16] | 
  a8.[ a16] fis8.[ a16] | \break
  b4~ b8.[ b16] | 
  a8.[ a16] fis8.[ d16] | 
  e8.[ a16] e8.[ a16] | 
  d,8. r16 d'8.[ b16] | \break
  d8.[ d16] b8.[ a16] | 
  d8.[ d16] b8.[ a16] | 
  d8.[ d16] d8.[ d16] | 
  d4 r | \break
  \bar "|."|
}

text = \lyricmode {
  か ね が | 
  な い の が | 
  さ い しょ の | 
  え ん で | 
  は い っ て | 
  み た の は | 
  よ い け れ | 
  ど
  す~み か は | 
  ぼ ろ や に | 
  え た い の | 
  し れ ぬ う | 
  え の | 
  ね ん め が | 
  ひ と か ら | 
  げ ヤ レ | 
  お も え ば | 
  と お く へ | 
  き た も ん | 
  だ | 
}

harmony = \chordmode {
}

drum = \drummode{
  bd8. bd16 r4 |
  bd2 |
  bd8. bd16 r4 |
  bd2 |
  bd8. bd16 r4 |
  bd2 |
  bd8. bd16 r4 |
  bd2 |
  bd8. bd16 r4 |
  bd2 |
  bd8. bd16 r4 |
  bd2 |
  bd8. bd16 r4 |
  bd2 |
  bd8. bd16 r4 |
  bd2 |
  bd8. bd16 r4 |
  bd8. bd16 r4 |
  bd4 bd |
  bd2 |
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
