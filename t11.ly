\version "2.18.2"

\paper {indent = 0}

\header {
  title = "起伏しらぬ"
  subtitle = "大正11年寮歌"
  composer = "高橋北雄君 作曲"
  poet = "牧原東洋男君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 2/4
  \set melismaBusyProperties = #'()
  c8. b16 c8. e16 |
  d8. [(e16)] g8. a16 |
  e8. g16 a8. d16 | \break
  c4. r8 |
  a8. [(g16)] e8. g16 |
  c,8. d16 e8. g16 | \break
  a8 g16 [(a16)] c8. a16 |
  g4. r8 |
  d'4 ( \grace {\stemDown c16 [d16)]}  e8. c16 | \break
  g8. g16 g8. g16 |
  a8. g16 a8 g16 [(a16)] |
  c4. r8 | \break
  c,8. c16 d8. e16 |
  g8. ~ [g16] a8. c16 |
  d8. c16 a8. g16 |
  c,4. r8 |
  \bar "|." \break
}

text = \lyricmode {
  お き ふ し し ー ら ぬ さ だ め こ
  そ、 と ー き の る て ん の
  こ の ー う え を、 あ -- わ れ
  ゆ き げ の ま し み ず ー に、
  な が れ て つ ー き ぬ だ く り~ゅ う よ。
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


