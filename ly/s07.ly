\version "2.18.2"

\paper {indent = 0}

\header {
  title = "古城の春は"
  subtitle = "昭和7年寮歌"
  composer = "中村小弥太君 作曲"
  poet = "大槻均君 作歌"
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
  a8 a4 b8 |
  c8 d8 e4 |
  e8 e8 e4 |
  f4 e8 r8 | \break
  e8 e8 e8 f8 |
  e8 e8 e4 |
  e4. c8 |
  b8 a8 b8 r8 | \break
  e8 f8 e4 |
  c8 b4 a8 |
  b4 c8 b8 |
  a8 c8 e8 r8 | \break
  e8 e8 c'4 |
  b8 a8 e8 e8 |
  c8 c8 b4 |
  a4 b8 r8 | \break
  a8 a8 e'8 e8 |
  e8 e8  e4 |
  e4 e4 |
  a4 a8 r8 | \break
  c8. b16 a8. f16 |
  e4 c8 c8 |
  b8 b8 b4 |
  c4 a8 r8 |
  \bar "|." \break
}

text = \lyricmode {
  こ じょう の は る は お い や す く、
  え ん れ い そ う の な に と え ど、
  る て ん の、 の り は、 た ち が た し、
  と も よ エ ル ム の か ね を き け、
  さ い け ん の と き ほ ど な け~ん、
  ペ ル ア ス ペ ラ と な り ひ び く。
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


