\version "2.18.2"

\paper {indent = 0}

\header {
  title = "寮生の道"
  subtitle = "昭和58年寮歌"
  composer = "島倉朝雄君 作曲"
  poet = "泉進介君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  r8. e16 e8. [c16] e8. [c16] a8. [b16] |
  c8. [e16] e8. [f16] e4 r4 | \break
  r8. a16 a8. [e16] c'8. [b16] a8. [f16] |
  e8. [e16] f8. [f16] e4 r4 | \break
  a4 f8. [e16] a8. [a16] f8. [f16] |
  a8. [a16] b8. [c16] b4 c8. [b16] | \break
  a4~ a8. ([f16)] e8. [e16] c8. [a16] |
  b8. [b16] b8. [b16] a2
  \bar "|."
}

text = \lyricmode {
  ちょ い と そ こ ゆ く りょ う せ い さん
  あ す は わ が み か し ら ね ど も
  おお ざ け く ら っ て ぎゃ く ふ ん しゃ こ れ
  ぞ ー ー お と こ の い き る み ち
}

harmony = \chordmode {
  r8. a2.:m r16 c1
  r8. a2.:m r16 a1:m
  f a:m
  f2 a2:m e:7 a:m
}

\score {
  <<
    % ギターコード
    \new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}{
      \set chordChanges = ##t
      \harmony
    }
    
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