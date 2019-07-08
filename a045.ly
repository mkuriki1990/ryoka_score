\version "2.18.2"

\paper {indent = 0}

\header {
  title = "昭和12年応援歌"
  subtitle = ""
  composer = "桜井允君 作曲"
  poet = "河邨文一郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 108
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \repeat volta 3 {
    c4 e c8. e16 g8. ~ [ g16 ] |
    e8. g16 c8. c16 c4. r8 | \break
    a4 c8. c16 e,8. e16 g8. ~ [ g16 ] |
    c8. g16 e8. d16 c4. r8 | \break
    g'8. g16 g8. g16 a8. a16 g8. ~ [ g16 ] |
    c8. c16 b8. a16 g4. r8 | \break
    c,8. e16 g4 e8. g16 c4 |
    c8. g16 c8. d16 e4. r8 | \break
    e8. e16 e8. c16 a8. a16 g4 |
    e8. e16 g8. a16 g4 a8. \( g16 | \break
    c2 ~ c4 c,8. e16 |
    g2 ( g4 ) \) c4 ( |
    c2. e,8. d16 | 
  } \alternative {{
     c2. ) r4 | \break }{
      c2.  a'8. ( g16 |
                  }}
  c2 c4 c,8. e16 |
  g2. ) c4 ( |
  c2. e8. d16 |
  c2. ) r4
  \bar "|."
}

text = \lyricmode {
  た~い こ~う ほ ゆ る ー ほ っ ぽ う の、
  ゆ~う は の ね む り ー な が か ら ず、
  じ ん う ん ひ く く ー お た け び に、
  て ん ちゅ~う く だ け ち い は さ け、
  ひ き~ゅ う の わ か ち た か な り て、 せ い
  き ー み な み を、 さ す や、 い ま。
  ま。 ち し お に う た う、 と き や、 い ま。
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


