\version "2.18.2"

\paper {indent = 0}

\header {
  title = "春静寂なる"
  subtitle = "昭和23年逍遙歌"
  composer = "佐々木淳君 作曲"
  poet = "中島通雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 40
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 6/8
  \mark \markup \small "緩徐調"
  \set melismaBusyProperties = #'()
  a4 c8 e4 d8 |
  e4 f8 e4. |
  f4 a8 d,4 f8 |
  e4. ~ e8 r8 r8 | \break
  e4 e8 c4 b8 |
  a4 b8 c4. |
  b4 d8 c4 b8 |
  a4. ~ a8 r8 r8 | \break
  a4 b8 c4 d8 |
  e4 f8 e4. |
  f4 e8 d8 [(f8)] f8 |
  e4. ~ e8 r8 r8 | \break
  e4 ~ e8 c4 e8 |
  a4 b8 c4. |
  b4 d8 c4 b8 |
  a4. ~ a8 r8 r8 | \break
  d4 d8 d4 e8 |
  f4. f4 e8 |
  c8 c4 b8 (a4) |
  e4. ~ e8 r8 r8 | \break
  a,4 a8 a4. |
  b8 c4 f8 e4\fermata |
  b4 b8 c4 b8 |
  a4. ~ a8 r8 r8 |
  \bar "|." 
}

text = \lyricmode {
  は る し ず か な る い し か り の ー、
  の に さ す ら い て ひ と を な き ー、
  あ き し~ょ う し~ょ う の ま ど に ー よ り ー、
  ゆ う ぐ も と お く と も を よ ぶ ー、
  ほ く と の ひ か り さ し そ え ど ー、
  あ わ れ か な し き た び な ら ん ー。
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
