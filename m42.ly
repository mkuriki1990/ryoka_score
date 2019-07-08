\version "2.18.2"

\paper {indent = 0}

\header {
  title = "希望の光"
  subtitle = "明治42年寮歌"
  composer = "金原善知君 作曲"
  poet = "加藤茂雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 2/4
  \set melismaBusyProperties = #'()
  d8. fis16 a8. a16 | 
  a8. a16 a4 |
  g8. fis16 e8. d16 |
  e4. r8 | \break
  fis8. fis16 a8. b16 |
  d8. d16 b4 |
  a8. fis16 d8. fis16 |
  d4. r8 | \break
  a'8.~ [a16] fis8. a16 |
  b8. b16 a8. a16 |
  b8. d16 d8. e16 |
  d4. r8 | \break
  b8. [(cis16)] d8. b16 |
  a8. fis16 e8. d16 |
  fis8. fis16 e8. e16 |
  d4. r8 | \break
  g8. fis16 g8. a16 |
  g8. a16 b4 |
  e4. (d8 |
  b8 d8 a8) r8 | \break
  b8. b16 d8. b16 |
  a8. fis16 e4 |
  fis8. fis16 e8. fis16 |
  d4. r8 | \break
    
}

text = \lyricmode {
  き ぼ う の ひ か り、 あ お ぎ つ つ、
  お も え ば と も と、 た ず ね こ し
  や ー ま は く れ な い、 あ さ ひ こ の、
  も ー ゆ る す が た に、 に た る か な。
  い な な く こ ま は、 あ き に こ え、
  わ れ ら が か ど で、 は え あ り き。
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


