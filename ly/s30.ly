\version "2.18.2"

\paper {indent = 0}

\header {
  title = "悲歌に血吐きし"
  subtitle = "昭和30年寮歌"
  composer = "菅原幸雄君 作曲"
  poet = "柳田和朗君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 84
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor 
  \time 4/4
  \set melismaBusyProperties = #'()
  g'8. ~ [g16] g8. g16 c,8. d16 ees8. ees16 |
  c8. ees16 g8. g16 g4. r8 | \break
  aes8. g16 c8. c16 d8. [(d16)] c8. aes16 |
  g8. g16 g8. aes16 g4. r8 | \break
  c,8. ees16 d8. c16 ees8. ees16 g8. g16 |
  aes8. aes16 f8. f16 g4. r8 | \break
  aes8. [(g16)] c8. c16 d8. d16 c8. aes16 |
  g8. g16 ees8. d16 c4. r8 | \break
  d8. ~ [d16] d8. d16 g8. ~ g16 ees8. d16 |
  c8. ees16 g8. g16 g4. r8 | \break
  aes8. [(g16)] c8. c16 d8. d16 c8. aes16 |
  g8. g16 ees8. d16 c4. r8 | \break
  \bar "|."
}

text = \lyricmode {
  ひ ー か に ち は き し わ れ ら も が、
  え い ご う ふ へ ん を も と め ん と、
  は る ば る さ す ら い き た り て も、
  あ ー か き、 は ま な す つ み と り て、
  あ ー く ま ぎ~ゅ う じ り し ぎ ん す る、
  て ー ん か ふ ぎ~ょ う の せ き り~ょ う じ。
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

