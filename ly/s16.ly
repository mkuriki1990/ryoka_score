\version "2.18.2"

\paper {indent = 0}

\header {
  title = "湖に星の散るなり"
  subtitle = "昭和16年寮歌"
  composer = "岡田和雄君 作曲"
  poet = "切替辰哉君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


%{
melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 4/4 
  \partial 4 a | 
  d2 fis4. e8 | 
  e2. a,4 | 
  e'2 e4 fis |
  g4. fis8 e4 b | \break
  a2 d4 e | 
  fis2. e4 | 
  e4. fis8 g4 e | 
  b'2 a4 a, | 
  fis'2 e4 e | \break
  d2. b4 | 
  a4. b8 d4 cis | 
  b2 a4 a | 
  b4.( d8) cis4 b | 
  e2. e4 | \break
  e4. fis8 g4 e | 
  b'2 a4 a, | 
  fis'2 e4 e |
  d2. b'4 | \break
  \repeat volta 2 {
  d4. cis8 b4 fis | 
  b2 a4 g | 
  fis2 e4 d | 
  a'2. fis4 | 
  g4. fis8 e4 d | 
  b'2 a4 a,|
  fis'2 fis4 e |
  }
  \alternative{ 
    {d2. b'4 | }
    {d,2. b4 |}
  } | 
  a2 b4 cis | 
  d e fis d | 
  g2 fis4 b | 
  a2. a,4 | 
  b4. a8 b4 e | 
  d2. r4 \bar "|." | 
}
%}

melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 4/4 
  \partial 4 a ^\( | 
  d2 fis4. e8 | 
  e2. \) \breathe a,4 ^\( | 
  e'2 e4 fis |
  g4. fis8 e4 \) \breathe b ^\( | \break
  a2 d4 e | 
  fis2. \) \breathe e4 ^\( | 
  e4. fis8 g4 e | 
  b'2 a4 \) \breathe a, ^\( | 
  fis'2 e4 e | \break
  d2. \) \breathe b4 ^\( | 
  a4. b8 d4 cis | 
  b2 a4 \) \breathe a ^\( | 
  b4.( d8) cis4 b | 
  e2. \) \breathe e4 ^\( | \break
  e4. fis8 g4 e | 
  b'2 a4 \) \breathe a, ^\( | 
  fis'2 e4 e |
  d2. \) \breathe b'4 ^\( | \break
  d4. cis8 b4 fis | 
  b2 a4 \) \breathe g ^\( | 
  fis2 e4 d | 
  a'2. \) \breathe fis4 ^\( | 
  g4. fis8 e4 d | 
  b'2 a4 \) \breathe a, ^\( |
  fis'2 fis4 e |
  d2. \) \breathe b'4 ^\( | 
  d4. cis8 b4 fis | 
  b2 a4 \) \breathe g ^\( | 
  fis2 e4 d | 
  a'2. \) \breathe fis4 ^\( | 
  g4. fis8 e4 d | 
  b'2 a4 \) \breathe a, ^\( |
  fis'2 fis4 e |
  d2. \) \breathe b4 ^\( |
  a2 b4 cis | 
  d e fis \) \breathe d ^\( | 
  g2 fis4 b | 
  a2. \) a,4 ^\markup { \italic rit.}  ^\( | 
  b4. a8 b4 e | 
  d2. \) r4 \bar "|." | 
}

%{
text = \lyricmode {
  み | 
  ず う み | 
  に、 ほ | 
  し の ち | 
  る な り か | 
  そ け さ | 
  よ ま | 
  つ の ひ も | 
  え て こ | 
  ぎ い ず | 
  る、 あ | 
  い ぬ の ふ | 
  ね の、 き | 
  しー べ た | 
  ち、 し | 
  み じ み な | 
  が む、 た | 
  び の ひ | 
  は、 は | 
  や く れ ゆ | 
  き ぬ ゆ | 
  め に よ | 
  い、 ゆ | 
  め に ぞ な | 
  か ん、 け | 
  が れ な | 
  き、 こ | 
  く、 わ | 
  れ な が | 
  も と に、 の | 
  ぞ み み | 
  ち こ | 
  よ い や ど | 
  ら_ん 
}
%}

text = \lyricmode {
  み | 
  ず う み | 
  に、 ほ | 
  し の ち | 
  る な り、 か | 
  そ け さ | 
  よ、 ま | 
  つ の き も | 
  え て、 こ | 
  ぎ い ず | 
  る、 あ | 
  い ぬ の ふ | 
  ね の、 き | 
  しー べ た | 
  ち、 し | 
  み じ み な | 
  が む、 た | 
  び の ひ | 
  は、 は | 
  や く れ ゆ | 
  き ぬ、 ゆ | 
  め に よ | 
  い、 ゆ | 
  め に ぞ な | 
  か ん、 け | 
  が れ な | 
  き、 こ | 
  こ ろ を し | 
  た う、 お | 
  お い な | 
  る、 し | 
  こ つ の う | 
  み よ、 は | 
  な わ か | 
  く、 わ | 
  れ な が | 
  も と に、 の | 
  ぞ み み | 
  ち、 こ | 
  よ い や ど | 
  ら_ん 
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

