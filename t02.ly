\version "2.18.2"

\paper {indent = 0}

\header {
  title = "幾世幾年"
  subtitle = "大正2年寮歌"
  composer = "柳沢秀雄君 作曲"
  poet = "木原均君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c''{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 2/4
  \set melismaBusyProperties = #'()
  a8. ~a16 fis8. d'16 | 
  cis8. b16 a8 a8 |
  a8. a16 b8. g16 |
  fis4. r8 | \break
  g8. g16 fis8. a16 |
  g8. fis16 e4 |
  e8. e16 fis8. d16 |
  e4. r8 | \break
  d'8. d16 cis8. b16 |
  a8. b16 g8 g8 |
  e8. e16 e8 d16 [(e16)] |
  fis4. r8 | \break
  d'8. d16 cis8. b16 |
  a8. b16 fis4 |
  e8. e16 fis8. gis16 |
  a4. a,8  \bar"|." \time4/4 \break
  fis'4. ~fis8 e4 cis4 |
  g'4. g8 fis4 cis4 |
  fis4.~ fis8 fis4 b4 |
  a2. a,4 | \break
  fis'4. fis8 e4 d4 |
  g4. ~g8 a4 a,4 |
  e'4.~ e8 e4 fis4 |
  d2. r4 | \break
}

text = \lyricmode {
  い ー く よ い く と せ な が れ け ん、
  え い ご う へ だ つ の ち ま で も、
  よ う よ う こ え な く の を こ え ー て、
  ぎ ん が に  に た る い し か り の、 き
  し ー べ し ず け き、 ゆ う ー ま ぐ れ、 み
  ち び く ほ し ー を、 あ お ー が ず や。
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


