\version "2.18.2"

\paper {indent = 0}

\header {
  title = "秋逍遙"
  subtitle = "昭和45年寮歌"
  composer = "吉田守男君 作曲"
  poet = "熊野芳明君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 6/8
  \set melismaBusyProperties = #'()
  a4 ^"憂いつつ、とにかく感じをこめて" c8 e4 e8 |
  f4 ~ f8 e4 e8 |
  a4 a8 c,4 d8 |
  e4. ~ e8 r8 r8 | \break
  f4 a8 a4 f8 |
  e4 ~ e8 c8 [(b8)] a8 |
  b4 e8 c4 b8 |
  a4. ~ a8 r8 e'8 | \break
  a4 a8 a4 a8 |
  b4 ~ b8 b4 ~ b8 |
  c4 e8 e4 c8 |
  b4. ~ b8 r8 r8 | \break
  c4 b8 a4 c,8 |
  e4 e8 e4 e8 |
  f4. ~ f4 ~ f8 |
  f4 f8 e8 r8 e8 | \break
  a4 ~ a8 a4 b8 |
  a4 ~ a8 f4 e8 |
  a4 a8 a4 b8 |
  a4. ~ a8 r8 r8 
  \bar "|."
}

text = \lyricmode {
  あ き に あ き ー そ う し ぐ れ づ き ー、
  し~ょ せ い、 ま た ー た ー く れ ん れ ん と ー、
  さ れ ど も か づ ー く ー し~ょ う し ん に ー、
  お も い は つ の る、 せ つ ー ー な く も、 ら
  く ー る い し ー ば し し~ょ う ぜ ん と ー。
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