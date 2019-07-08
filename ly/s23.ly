\version "2.18.2"

\paper {indent = 0}

\header {
  title = "饗宴の杯に"
  subtitle = "昭和23年寮歌"
  composer = "堀井洵君 作曲"
  poet = "中坪清八君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor 
  \time 4/4
  \mark \markup "Andante"
  \set melismaBusyProperties = #'()
  c8. c16 ees8. ees16 g8. ~ [g16] ees8. c16 |
  d8. d16 d8. ees16 c4. r8 | \break
  aes'8. aes16 g8. ees16 g8. c16 c4 |
  c8. c16 g8. ees'16 d4. r8 | \break
  c8. c16 aes8. aes16 g8. ~ [g16] ees8. c16 |
  d8. d16 ees8. ees16 d4. r8 | \break
  c8. ees16 g8. ees16 g8. ~ [g16] c8. c16 |
  ees8. c16 ees8. c16 d4. r8 | \break 
  aes8. aes16 c8. aes16 g8. ~ [g16] ees8. g16 |
  c8. c16 aes8. f16 g4. r8 | \break
  c,8. c16 d8. ees16 g8. ~ [g16] c8. aes16 |
  g8. ees16 d8. c16 c4. r8 |
  \bar "|." 
}

text = \lyricmode {
  う た げ の つ ー き に う す れ ゆ く、
  て い ね の み ね に い ま し ば し、
  お も い と ど ー め て な み だ す る、
  ゆ く み ず、 は ー や き み つ と せ の、
  え ま き は、 や ー が て つ き ざ ら ん、
  ゆ か し き、 か ー お り の こ し つ つ。
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

