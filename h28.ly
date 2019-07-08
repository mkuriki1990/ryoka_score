\version "2.18.2"

\paper {indent = 0}

\header {
  title = "此の寮よりの児"
  subtitle = "平成28年度寮歌"
  composer = "小松遼貴君 作曲"
  poet = "小松遼貴君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 112 - 132
  \autoBeamOn
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \repeat volta 3 { 
    d4 d8 c d8. d16 d8 f |
    a8. a16 a8 c a4 g8 f | \break
    r g g g g g f g |
    a8. g16 a8 c c8 r a c | \break
    d4 d c a8 f |
    g8. a16 g8 f d4 c8 c | \break
    d8. d16 d8 f e8. e16 d8 c |
    d8. c16 d4. r8 c'8 a | \break
  }
  \set Score.repeatCommands = #'((volta "1.--3."))
    r8 d d d c c a c |
    d8. c16 d8 d d4 r | \break
  \set Score.repeatCommands = #'((volta #f))
  \set Score.repeatCommands = #'((volta "3.") end-repeat)
    r8 d d d c c a c |
  \set Score.repeatCommands = #'((volta #f))
  r d4 d8 c4 e |
  d2 r | \break
      \bar "|."
}


text = \lyricmode {
  き た の み や こ に わ こ う ど が ー ー
  お お き な る ゆ め か か え き て あ け
  る つ き よ に つ が れ る な さ け
  あ く ま で か ー た り さ き み や れ
  み ず き よ け れ ば う お す ま ぬ
  う お と み ず な れ こ の ひ び よ
  う お と み ず な れ こ の ひ び よ
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


