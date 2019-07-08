\version "2.18.2"

\paper {indent = 0}

\header {
  title = "凋落正に秋深し"
  subtitle = "昭和38年寮歌"
  composer = "宮田睦彦君 作曲"
  poet = "諏訪正明君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 8 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 6/8 
  c4 e8 a4 c8 | 
  b4 g8 e4. | 
  f4 g8 a4 a8 | 
  e4.~ e8 r4 | \break
  c e8 a4 b8 | 
  c4 c16([ d]) b4. | 
  c4 b8 a4 g8 | 
  a4.~ a8 r4 | \break
  e e8 e4 g8 | 
  e4 d8 c4 d8 | 
  e4 g8 a4 c8 | 
  b4.~ b8 r4 | \break
  c c8 b4 g8 | 
  a4 a16 c a4. | 
  b4 c8 d4 c8 | 
  b4.~ b8 r4 | \break
  e, a8 a4 b8 | 
  c4 d8 e4. | 
  d4 e8 b4 c8 | 
  a4.~ a8 r4 \bar "|." 
}


text = \lyricmode {
  に れ が、 こ | 
  の は の | 
  あ き か ぜ | 
  に_ー、 | 
  ふ か れ て | 
  お つ_ー る、 | 
  し ば く さ | 
  に_ー、 | 
  た た ず む | 
  お の こ の | 
  む ね の う | 
  ち_ー、 | 
  ち り し く | 
  お ち ば の | 
  か ず し れ | 
  ず_ー、 | 
  ち~ょ う ら く | 
  ま さ に | 
  あ き ふ か | 
  し_ー。 | 
}

harmony = \chordmode {
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
