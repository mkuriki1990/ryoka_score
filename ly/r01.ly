\version "2.18.2"

\paper {indent = 0}

\header {
  title = "奔る流れ"
  subtitle = "令和元年第111回記念祭歌"
  composer = "伊藤小雪君 作曲"
  poet = "樋浦一希君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 138
  \autoBeamOn
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 2/4
  c4 d4 | 
  e4 a4 | 
  g4 e8.( d16) | 
  e2 | 
  c4 d4 | 
  e4 c'4 | 
  b4 e,8.( d16) | 
  e2 | \break
  c4 d4 | 
  e4 a4 | 
  g4 e8.( d16) | 
  c4 a8. b16 | 
  c4 f4 | 
  e8.( d16) c8.( d16) |
  c2~ | 
  c4 r4 | \break
  d4 e4 |
  f4 d4 | 
  e4 g8.( a16) | 
  g2 | 
  fis4 g4 | 
  a4 c4 | 
  b4 a4 | 
  g2 | \break
  a8. b16 c8. a16 | 
  g8. g16 e4 | 
  d8. e16 f8. e16 | 
  d8. c16 c4 | \break
  a'8. b16 c8. f16 | 
  e8. d16 c4 | 
  d8. e16 d8. c16 | 
  c2 
  \bar "|."
}


text = \lyricmode {
  ど ん て ん ひ く_ー く
  せ い りょ く の や_ー ま
  た か く み あ げ_ー て
  い わ う つ な_ー み_ー ま
  し じ ま の そ こ_ー に
  ち か ら を ひ し て 
  ゆ れ て は き え る 
  あ お ぎ ん の か げ 
  み ら い は み ち て 
  は な な ら ん 
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
    % \drum\paper{
  
  >>
  
  \midi {}
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }

}


