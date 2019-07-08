\version "2.18.2"

\paper {indent = 0}

\header {
  title = "雪解の楡陵の"
  subtitle = "昭和19年寮歌"
  composer = "竹山賢治君 作曲"
  poet = "鈴木信夫君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor 
  \time 2/4
  \set melismaBusyProperties = #'()
  d8.^\p^"節度をつけて滑らかに" f16 a8. a16 |
  f8. e16 d4 |
  a'8 ^\(a8 f8 e8 |
  d4 (a4)\) | \break
  d16 d8. e8 f8 |
  a16 a8. d4 |
  a8 a8 e8 f8 |
  d2 | \break
  e8 e8 a8 a8 |
  \tuplet 3/2 {f8 f8 [(e8)]} d4 |
  \tuplet 3/2 {bes'8 bes8 [(a8)]} g8. bes16 |
  a2 | \break
  bes16^\f a8. d16 e8. |
  f4 e8 d8 |
  e16 f8. e8 d8 |
  bes4 (a4) | \break
  a16 a8. d8. bes16 |
  a4 f8 d8 |
  e8 e8 f8 d8 |
  a'8 r8 a,4 \( \bar "||" \time 4/4 \break
  d4 ~ (d8 e8) f4 a8. bes16 |
  a2 f2\) |
  a,4 ^(a'4 a4 e8. f16 |
  d2.) r4 |
  \bar "|." 
}

text = \lyricmode {
  ゆ き げ の お か の ひ と す じ や ー、
  き し べ に い こ う み ず と り の、
  す が た ぞ し ば ー し は る ー の み お、
  あ あ、 い し か り の そ ら は れ て ー、
  と ど ろ け う た う け い て き の、 こ
  ら ー ー が、 い の ち や き よ か ら ー ん。
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


