\version "2.18.2"

\paper {indent = 0}

\header {
  title = "魔神の呪"
  subtitle = "大正6年寮歌"
  composer = "植村泰二君 作曲"
  poet = "佐藤惣之助君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 63
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 2/4 
  \set melismaBusyProperties = #'()
  c8. d16 e8. g16 |
  a8. g16 c4 |
  c,8. d16 e8. a16 |
  g4. r8 | \break
  e8. g16 a8. g16 |
  c8. a16 g4 |
  e8. e16 d8. d16 |
  c4. r8 | \break
  d8. e16 g8. d16 |
  e8. [(g16)] a8. [(c16)] |
  d8. c16 a8. e16 |
  g4. r8 | \break
  a8. a16 g8. g16 |
  c,8. d16 e4 ( \grace {g16)} |
  c8. b16 a8. c16 |
  g4. r8 | \break
  c,8. d16 e8. g16 |
  a8. a16 g4 |
  e8. g16 a8. g16 |
  c4. r8 | \break
  a8. g16 a8. d16 |
  c8. a16 g4 |
  e8. g16 d8. e16 |
  c4. r8 | \bar "|." \break
}

text = \lyricmode {
  ま じ ん の の ろ い ア ル ペ ン の、
  は く せ つ と わ に き よ か ら ず、
  み よ え い ご う と ー ち か い け ん、
  へ い わ の は る は み じ か く て、
  ふ く ちょ う ら  く の あ き か ぜ に、
  せ い ぎ の ひ か り か げ く  ら し。
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


