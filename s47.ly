\version "2.18.2"

\paper {indent = 0}

\header {
  title = "楡陵に月は"
  subtitle = "昭和47年寮歌"
  composer = "矢野哲憲君 作曲"
  poet = "加藤秀弘君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 69
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 6/8
  \set melismaBusyProperties = #'()
  \phrasingSlurUp
  a4 \( c8 e4 f8 |
  e4 c8 a4. |
  a'4 a8 \tuplet 3/3 {b8 [(a8)] f8} |
  e4.~ e8 \) r8 r8 | \break
  f4 \( f8 e4 f8 |
  a4 f8 e4. |
  d4 e8 c4 b8 |
  a4. ~ a8 \) r8 r8 | \break
  e'4 \( e8 f4 e8 |
  a4 a8 b4. |
  c4 (b8) a4 (c8) |
  b4 a8 f4 \) r8 | \break
  e4 ~\( e8 f4 e8 |
  a4 a8 f4 f8 |
  e4 f8 c4 b8 |
  a4. ~ a8 \) r8 r8 
  \bar "|."
}

text = \lyricmode {
  ゆ り~ょ う に つ き は か か れ ー ど も ー、
  せ い そ う ふ か き も り く ら し ー、
  し ん せ い ゆ ら ぐ か ー ぜ ー あ れ ど、
  お ー も い、 わ か た ん す べ も な し ー。
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