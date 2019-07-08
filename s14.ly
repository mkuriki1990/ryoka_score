\version "2.18.2"

\paper {indent = 0}

\header {
  title = "時潮の流転"
  subtitle = "昭和14年寮歌"
  composer = "竹村伸一君 作曲"
  poet = "望月真三郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 2/4
  \mark "Andante"
  \set melismaBusyProperties = #'()
  a16 a8. (a8.) a16 |
  c16 c8. b4 |
  c16 c8. b8. c16 |
  e4. r8 | \break
  f16 f8. e8. e16 |
  a,16 b8. c4 |
  e16 e8. c8. b16 |
  a4. r8 | \break
  a'16 a8. a8. e16 |
  c16 c8. b4 |
  a16 a8. d8. f16 |
  e4. r8 | \break
  a16 a8. (f8. e16) |
  a,16 b8. c4 |
  e16 e8. c8. a16 |
  b4. r8 | \break
  a16 a8. (b8.) c16 |
  e16 f8. e4 |
  c'16 c8. b8. b16 |
  a4. r8 |
  \bar "|." \break
}

text = \lyricmode {
  じ ち~ょ ー の な が れ そ う そ う と、
  と き け ん こ ん に め ぐ り た つ、
  き~ょ ら い、 つ ね な く ひ と か わ り、
  う じょ~ぅ ー ー む い の か ね の ね に、
  こ じょ~ぅ ー の は る は ま だ あ さ し。
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


