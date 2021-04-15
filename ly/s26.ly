\version "2.18.2"

\paper {indent = 0}

\header {
  title = "新らたなり天地"
  subtitle = "昭和26年寮歌"
  composer = "小林滋宗君 作曲"
  poet = "長尾久司君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor 
  \time 2/4
  \set melismaBusyProperties = #'()
  d8.^\markup "Andante" f16 a8. a16 |
  a4. r8 |
  g4 (bes8.) a16 |
  g8. [(bes16)] d4 | \break
  bes8. bes16 g8. d'16 |
  a4. r8 |
  bes8. a16 g8. f16 |
  e8. d16 e4 | \break
  d8. f16 a8. a16 |
  a4. r8 |
  g8. g16 bes8. a16 |
  g8. f16 e4 | \break
  %d8. f16 a8. a16 |
  %a4. r8 ||
  %g8. g16 bes8. a16 |
  %g8. f16 e4 | \break
  d8. d16 f8. f16 |
  e4. r8 |
  g8. g16 a8. a16 |
  f8. e16 d4 | \break
  a'8. a16 f'8. e16 |
  d4. r8 |
  d,8. f16 a8. g16 |
  a8. a16 a4 |
  f8. f16 f8. e16 | \break
  a4 ^(a,8. d16) |
  e8. e16 e8. e16 |
  f8. f16 e4 |
  d8. f16 a8. a16 |
  a4. r8 | \break
  bes8. d16 e8. d16 |
  bes8. bes16 a4 |
  f8. a16 bes8. a16 |
  bes8. d16 d4 ~ |
  d4 r4 |
  \bar "|."
}

text = \lyricmode {
  あ ら た な り、 あ ー め つ ー ち
  ひ か り あ り、 き た の ま な び や、
  ふ た と せ を、 こ こ ろ に ち ぎ る、
  わ か き ひ の、 い の ち の さ と に、
  ほ こ ら な ん、 じ ち と じ ゆ う の よ そ と せ
  の ー ー、 た か き、 つ た え よ お ご そ か に、
  お し え を こ め て、 か ね は ひ び か ん ー。
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

