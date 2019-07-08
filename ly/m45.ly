\version "2.18.2"

\paper {indent = 0}

\header {
  title = "都ぞ弥生"
  subtitle = "明治45年寮歌"
  composer = "赤木顕次君 作曲"
  poet = "横山芳介君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 2/4 
  d8. fis16 a8. a16 |
  b8. a16 fis8. e16 |
  d8. fis16 a8. a16 |
  a8. b16 a8 r |
  d,8. fis16 a8. a16 | 
  b8. a16 fis8. fis16 | 
  e8. d16 fis8. fis16 |
  e8. e16 d8 r | % 8
  b'8. b16 b8. a16 | 
  d8. d16 d8. d16 | 
  e8. d16 b8. a16 |
  fis8. a16 a8 r |
  b8. b16 b8. a16 |
  d8. d16 b8. a16 | 
  b8. a16 fis8. d16 \bar "||" | 
  e8. e16 d4 | 
  \time 4/4 
  d8.( fis16) a4 a2 \bar "||" |
  b8. d16 d4 d2 | 
  \time 3/4 
  e8. d16 b4 a \bar "||" | 
  fis8. a16 a2 | 
  %bartimesig: 
  \time 4/4 
  d,8. fis16 a4 a2 \bar "||" | 
  b8. d16 d4 d2 | 
  \time 3/4 
  b8. a16 fis4 d \bar "||" | 
  e8. e16 d2 | 
  \time 4/4 
  d8. d16 d4 d2 \bar "||" | 
  e8. fis16 a4 a2 | 
  %bartimesig: 
  \time 3/4 
  b8. b16 d4 b \bar "||" | 
  a8. fis16 a2      | % 28
  %bartimesig: 
  \time 2/4 
  a8. a16 a8. a16      | % 29
  a2 | 
  b8.( a16) fis8. e16 | 
  d8. fis16 a8. a16 | 
  fis8. fis16 e8. e16 |
  d4. r8 \bar "|." 
}


text = \lyricmode {
  み や こ ぞ | 
  や よ い の | 
  く も む ら | 
  さ き に | 
  は な の か | 
  た だ よ う | 
  う た げ の | 
  む し ろ | 
  つ き せ ぬ | 
  お ご り に | 
  こ き く れ | 
  な い や | 
  そ の は る | 
  く れ て は | 
  う つ ろ う | 
  い ろ の | 
  ゆ_め こ そ | 
  ひ と と き | 
  あ お き し | 
  げ み に | 
  も え な ん | 
  わ が む ね | 
  お も い を | 
  の せ て | 
  ほ し か げ | 
  さ や か に | 
  ひ か れ る | 
  き た を | 
  ひ と の よ | 
  の | 
  き_ー よ き | 
  く に ぞ と | 
  あ こ が れ | 
  ぬ 
}

harmony = \chordmode {
}

drum = \drummode{
  bd1 bd bd 
  bd bd 
  bd bd 
  bd bd 
  bd bd2. bd1 bd
  bd bd r4 bd1 bd
  bd2. bd
  bd2 r bd1 
  bd4 bd bd r
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
