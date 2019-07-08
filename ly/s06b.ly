\version "2.18.2"

\paper {indent = 0}

\header {
  title = "別離の歌"
  subtitle = "昭和6年閉寮記念寮歌"
  composer = "中村小弥太君 作曲"
  poet = "大槻均君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 8 = 69
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 6/8 
  a4 c8 e4 e8 | 
  e4 f8 e4. | 
  a4 a8 f4 a8 | 
  e4.~ e8 r r | \break
  e4 e8 f4 e8 | 
  c4( b8) a4 b8 | 
  e4 e8 c4 b8 | 
  a4.~ a8 r r | \break
  e'4 e8 a4 b8 | 
  c4 b8 a4( f8) | 
  e4 e8( f4) a8 | 
  e4.~ e8 r r | \break
  f4( e8) c4 b8 | 
  a4 a'8 f4 e8 | 
  c4 c8 b4 a8 | 
  e'4.~ e8 r r | \break
  a4 b8 c4 c8 | 
  c4 b8 a4. | 
  b4 b8 b4 c8 | 
  b4.~ b8 r r | \break
  c4 b8 a4 f8 | 
  e4 e8 a,4( b8) | 
  c4 e8 e4 c8 | 
  c4 b8 a4 r8 
  \bar "|." 
}


text = \lyricmode {
  た か き を ほ こ る じ ち りょ う よー、
  ほ し と こ しー え に な が れ て は_ー、
  しゅ ん じゅ う こ こ に_ー、 に じゅ_う ろ く_ー、
  ゆ_ー き て か え ら ぬ は る か ぜ を_ー、
  う ら む こ よ い の く さ の う え_ー、
  こ れ、 せ ん じ ん が_ー ゆ め の あ と か な。
}

harmony = \chordmode {
}

drum = \drummode{
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
    % 太鼓
    % \new DrumStaff \with{
    %   \remove "Time_signature_engraver"
    %   drumStyleTable = #percussion-style
    %   \override StaffSymbol.line-count = #1
    %   \hide Stem
    % }
    % \drum
  >>
  
\midi {}
\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

}
