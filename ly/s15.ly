\version "2.18.2"

\paper {indent = 0}

\header {
  title = "弥生の空に"
  subtitle = "昭和15年寮歌"
  composer = "大井徹夫君 作曲"
  poet = "大井徹夫君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 2/4
  \set melismaBusyProperties = #'()
  g'8. g16 e8. g16 |
  a8. a16 g4 |
  e8. g16 c,8. d16 |
  e4. r8 | \break
  e8. g16 g8. g16 |
  a8. g16 c8. ^[_(a16)] |
  g8. g16 g8. a16 |
  g4. r8 | \break
  e8. d16 c8. e16 |
  g8. ~ [g16] e8. c16 |
  d8. d16 d8. e16 |
  d4. r8 | \break
  g8. g16 g8. g16 |
  c8. c16 c4 |
  e8. d16 d8. c16 |
  d4. r8 | \break
  c8. d16 e8. c16 |
  a8. a16 g4 |
  e8. g16 g8. a16 |
  g4. r8 | \break
  e4 e8. g16 |
  a8. a16 g8. c16 |
  d8. d16 d8. e16 |
  c4. r8 |
  \bar "|." \break
}

text = \lyricmode {
  や よ い の そ ら に き え の こ る、
  か す み に は る の ー ゆ め た け て、
  か ど で を い ー わ う は な ふ ぶ き、
  な さ け の つ き を か わ し つ つ、
  ほ く と の ひ か り み に う け て、
  あ お ぐ け ん じ の か げ き よ し。 
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


