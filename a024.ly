\version "2.18.2"

\paper {indent = 0}

\header {
  title = "水泳部部歌"
  subtitle = "-創立十五周年を記念して- (昭和11年)"
  composer = "柳沢三郎君 作曲"
  poet = "築城武義君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 63
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \mark \markup \small "荘重に"
  a8. d16 fis8. fis16 fis8. fis16 fis8. d16 |
  fis4 e8. d16 e4. r8 | \break
  a,8. cis16 e8. e16 e8. e16 e8. e16 |
  e8. e16 d8. e16 fis4. r8 | \break
  d8. fis16 a8. a16 a8. a16 a4 |
  fis8. fis16 e8. fis16 g4. r8 | \break
  b8. b16 b8. cis16 fis8. fis16 e8. d16 |
  a4 a8. a16 a4. r8 | \break
  b8. a16 d8. e16 fis8. e16 a4 |
  a8. fis16 e8. d16 a4. r8 | \break
  a8. a16 fis8. d16 e8. fis16 a8. ([ g16 ]) |
  fis8. fis16 e8. e16 d2
  \bar "|."
}

text = \lyricmode {
 は る な お あ さ し、 き た の く に、
 ゆ き げ の ま し み ず あ わ せ く る、
 い し か り が わ の な が れ に も、
 わ れ ら が ち か ら、 た と う べ し、
 た け き こ ゝ ろ の ま す ら お は、
 ひ に く の た ん を ー か こ つ か な。
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


