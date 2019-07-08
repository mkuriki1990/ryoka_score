\version "2.18.2"

\paper {indent = 0}

\header {
  title = "一帯ゆるき"
  subtitle = "明治40年寮歌"
  composer = "高松正信君 作曲"
  poet = "田中義麿君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \tempo 4 = 120
  \time 2/4
  d'8. b16 b8 b | 
  b8. c16 b8 a | 
  a8. g16 a8 b | 
  a4. r8 | \break
  d8. a16 a8 a | 
  a b a g | 
  g e g a | 
  b4. r8 | \break
  g8 b d4 | 
  e8 d b b | 
  g a b8. a16 | 
  a4. r8 | \break
  g8 a a b | 
  a g e~ e | 
  g e g8. e16 | 
  d4. r8 | \break
  d'8. d16 d4 | 
  d8.~ d16 b8. g16 | 
  \time 4/4
  a4. d,8 d g g( a) | 
  b2. r4 | \break
  \time 2/4
  b8. c16 e8 b | 
  a8. g16 e8.~ e16 | 
  d8. g16 a8. b16 | 
  g4. r8 | 
}

text = \lyricmode{
  い っ た い | 
  ゆ ー る き | 
  い し か り | 
  の、 | 
  み な も と | 
  と お ー く | 
  か す み こ | 
  め、 | 
  ご さ い | 
  を そ む る | 
  ゆ う や け | 
  は、 | 
  て い ね の | 
  な つ の_ー | 
  は え に し | 
  て、 | 
  そ こ に | 
  むー げ ん | 
  の、 め ぐ み あ_ー | 
  り、 | 
  こ れ わ が | 
  こ う の_ー | 
  あ る と こ | 
  ろ。
}

harmony = \chordmode {
}

drum = \drummode{
  bd2 bd |
  bd4 bd bd r |
  bd2 bd |
  bd4 bd bd r |
  r4 bd4 | 
  r8 bd4. |
  bd4 bd bd r |
  bd2 bd |
  bd4 bd bd r |
  r4 bd16.. \tuplet 4/3 {bd32. bd32. bd32. bd32.} |
  r2 | 
  bd8.. \tuplet 4/3 {bd32. bd32. bd32. bd32.} r4 bd4 r64 r8 |
  bd4 bd bd r
  bd2 bd
  bd4 bd bd r
}

\score{
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
