\version "2.18.2"

\paper {indent = 0}

\header {
  title = "花繚乱の"
  subtitle = "昭和32年寮歌"
  composer = "前島一淑君 作曲"
  poet = "前島一淑君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 88
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  c8. c16 e8. d16 c8. c16 c4 |
  e8. g16 c8. c16 c4. r8 | \break
  a8. a16 a8. a16 g8. f16 e4 |
  f8. e16 d8. c16 d4. r8 | \break
  g4. (g8 b4. d8 |
  c4. a8 g2) |
  a4. ^(a8 g4. g8 |
  c,2.) r4 |
  \bar "|."
}

text = \lyricmode {
  は な り~ょ う ら ん の ゆ め に よ い、
  ち の さ さ や き の ね に ふ せ ば、
  く さ し~ゅ う し~ゅ う の こ え す な り。
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