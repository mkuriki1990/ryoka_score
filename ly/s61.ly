\version "2.18.2"

\paper {indent = 0}

\header {
  title = "陽春新しき"
  subtitle = "昭和61年度寮歌"
  composer = "山森聡君 作曲"
  poet = "原澤辰明君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 90
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  g'8. g16 e8 c8 a'8 a8 g4 |
  e8. g16 g8 a8 g4. r8 | \break
  c8. c16 b8 a8 g4 e8 c8 |
  d8. g16 g8 g8 g4. r8 | \break
  g8. g16 e8 c8 a'8 a8 g4 |
  e8 g16 g8 a8 g8. r8 c8 (b8) | \break
  a4. g8 e8 e8 e8 c8 |
  d8. d16 d8 d8 c4 r8
  \bar "|."
}

text = \lyricmode {
  は る あ た ら し き の ぞ み み つ
  や ど り に わ か き お の こ ら が
  こ こ ろ も あ か き ゆ う て い ね あ あ
  　 ち か ら も て す す ま ん か
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