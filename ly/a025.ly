\version "2.18.2"

\paper {indent = 0}

\header {
  title = "山の四季"
  subtitle = "山岳部部歌 (昭和14年頃)"
  composer = "渡辺良一君 作曲"
  poet = "朝比奈英三君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 3/4 
  d8. e16 d4 b'4 | 
  d,8. e16 d4 b'4 | 
  d,8. e16 d4 g4 | 
  fis2. | \break
  e8. fis16 e4 c'4 | 
  e,8. fis16 e4 c'4 | 
  e,8. fis16 e4 fis4 | 
  d2. | \break
  b8. c16 d4 e4 | 
  b8. c16 d4 e4 | 
  b8. c16 d4 g4 | 
  fis2. | \break
  e8. fis16 g4 e4 | 
  d8. b'16 b4 a4 | 
  a8. a16 e4 fis4 | 
  g2. | \break
  b,8. c16 d4 g4 | 
  b2. | 
  a8. g16 fis4 a4 | 
  \time 2/4
  d,2~ | d2 | \break
  d8. e16 d8 b | 
  d g b4 | 
  c8 b g fis | 
  d'2 | \break
  d,4. e8 | 
  d4 g8. a16 | 
  b2 | 
  b4 r | \break
  a8. a16 a8 a | 
  a a4 a8 | 
  a8 c b a | 
  g4 r |
   \bar "|."|
}

text = \lyricmode {
  ふ ぶ き の お ー ね も か ぜ や み て、
  は ー る の ひ ざ し の お と ず れ に、
  さ ー わ の な だ れ も し ず ま り て、
  ゆ き げ の さ ー わ の う た た の し、
  い ざ ゆ こ う わ が と も よー、
  しょ か ん の お ね に あ し べ つ に、
  き た の や ー ま の、
  ざ ら め の お ね を と ば そ う よ
}

harmony = \chordmode {
  
}

drum = \drummode{
}


\score {
  <<
    % ギターコード
    % \new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}{
    %   \set chordChanges = ##t
    %   \harmony
    % }
    
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



