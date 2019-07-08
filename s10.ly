\version "2.18.2"

\paper {indent = 0}

\header {
  title = "噫妖雲は"
  subtitle = "昭和10年寮歌"
  composer = "荻野辰夫君 作曲"
  poet = "川村真君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 2/4
  \mark "Con moto"
  \slurUp
  \set melismaBusyProperties = #'()
  e8. (e16 e8. e16 |
  c8. b16 a4 |
  c8. b16 a8. c16 |
  e4.) r8 | \break
  c8. (e16 f8. a16 |
  f8. e16 e4|
  c8. e16 c8. b16 |
  a4.) r8 | \break
  e'8. (e16 f8.) e16 |
  c'8. b16 (a8.) f16 |
  f16 ^\(a8. _(a8) [f8]\) |
  e4 c8 e8 | \break
  a8. (a16 f8. f16 |
  e4 a8. b16) \bar "|." 
  \time 4/4
  c4. (c8 b4 b4 |
  a2. r4) |
  \bar "|." \break
}

text = \lyricmode {
  あ あ、 よ う う ん は く る え ど も、
  み ち を も と め し わ こ う ど ら、
  ぎ ぜ ん、 し り~ょ う ー に た て ー ー こ も り、
  か く せ い の う た う た う か な。
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


