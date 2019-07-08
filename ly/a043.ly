\version "2.18.2"

\paper {indent = 0}

\header {
  title = "昭和10年応援歌"
  subtitle = ""
  composer = ""
  poet = "平松敏雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 100
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \minor
  \time 4/4
  \set melismaBusyProperties = #'()
  bes8. d16 f8. f16 f8. f16 f4 |
  d8. f16 bes8. bes16 bes4. r8 | \break
  d8. ees16 d8. bes16 g8. f16 f4 |
  bes8. bes16 bes8. g16 f4. r8 | \break
  bes,8. d16 f8. f16 g8. g16 f4 |
  bes8. bes16 g8. f16 bes4 d8. \( d16 \bar "||" \time 5/4
  c4. bes8 g8. ([ f16 ]) g8. ([ bes16 ]) c4 \) \bar "||" \time 4/4 \break
  d8. \( d16 c8. ([ d16 ]) c8. ([ bes16 ]) g4 \) |
  bes8. \( bes16 g8. ([ bes16 ]) g8. ([ f16 ]) bes4 \) 
  \mark \markup { \musicglyph #"scripts.ufermata" }
  \bar "|."
}

text = \lyricmode {
  さ く ふ う す さ ぶ へ い げ ん に、 ひ
  め し は い き ぞ ね っ け つ ぞ、
  い っ せ ん こ ゝ に き を う れ ば、 し ら ず や む ー ね ー の、
  た か な ー る ー を た か な ー る ー を。
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


