\version "2.18.2"

\paper {indent = 0}

\header {
  title = "広がりし海原に"
  subtitle = "平成30年度寮歌"
  composer = "樋浦一希君 作曲"
  poet = "樋浦一希君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 50
  \autoBeamOn
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \tuplet 3/2 {e4 e8} \tuplet 3/2 {g4 g8} \tuplet 3/2 {a4 a8} g4 |
  \tuplet 3/2 {e4 g8} \tuplet 3/2 {c4 a8} g2 |
  \tuplet 3/2 {a4 a8} \tuplet 3/2 {g4 g8} \tuplet 3/2 {c,4 d8} e4 |
  \tuplet 3/2 {e4 g8} \tuplet 3/2 {d4 d8} c2 | \break
  \tuplet 3/2 {e4 e8} \tuplet 3/2 {g4 g8} \tuplet 3/2 {a4 a8} g4 |
  \tuplet 3/2 {e4 g8} \tuplet 3/2 {c4 a8} g2 |
  \tuplet 3/2 {a4 a8} \tuplet 3/2 {g4 g8} \tuplet 3/2 {c,4 d8} e4 |
  \tuplet 3/2 {e4 g8} \tuplet 3/2 {d4 e8} c2 | \break
  \tuplet 3/2 {a'4 a8} \tuplet 3/2 {g4 e8} g8. a16 c16 g8.( |
  g4) \tuplet 3/2 {c4 c8} \tuplet 3/2 {d4 e8} d4( |
  d4) \tuplet 3/2 {a4 a8} \tuplet 3/2 {g4 g8} \tuplet 3/2 {c,4 d8} |
  e8 g2( g8) \tuplet 3/2 {e4 g8} | \break
  \tuplet 3/2 {a4 g8} \tuplet 3/2 {d4 d8} c2
  \bar "|."
}


text = \lyricmode {
  は る あ け ぼ の の |
  ゆ め に み て |
  カ ム イ の こ え に |
  み ち び か れ |
  ふ ね を こ ぎ い で |
  な が れ こ ぬ |
  ほ く と よ あ け の |
  き ん じ と う |
  ひ ろ が り し の ー に_ー 
  ひ と り た ち_ー
  は る か な る ゆ |
  き の_ー や ま |
  の ぞ み み ん |
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


