\version "2.18.2"

\paper {indent = 0}

\header {
  title = "吾れ憧れし"
  subtitle = "昭和33年寮歌"
  composer = "佐藤一正君 作曲"
  poet = "佐伯政英君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 60
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  \time 6/8
  \set melismaBusyProperties = #'()
  c4 ^\mf ^\markup \italic "中位の早さで情をこめて" c8 ees8 [(d8)] c8 |
  f4 f8 aes4 r8 |
  g4 aes8 g8 [(f8)] ees8 |
  g4. (g8) r8 r8 | \break
  c,4 ^\mp c8 ees8 [(d8)] c8 |
  f4 f8 aes4 r8 |
  g8 [(f8)] ees8 d4 ees8 |
  c4. (c8) r8 r8 | \break
  g'4 ^\f g8 ees4 g8 |
  aes8 [(g8)] f8 c'4. |
  d4 d8 c8 [(g8)] ees8 |
  g4. (g8) r8 r8 | \break
  g4 ^\mf g8 ees4 g8 |
  aes8 [(g8)] f8 c'4 (c8) |
  d8 ^\markup \italic "rit." [(c)] g8 ees4 g8 |
  c,4. (c8) r8 r8 |
  \bar "|."
}

text = \lyricmode {
  わ れ あ ー こ が れ し び の く ー に の ー、
  は る は ー、 な の み の は ー る な れ ど ー、
  ゆ き げ の み ー ず に、 よ み が ー え る ー、
  の づ ら に み ー ち み つ、 い ー の ち あ り ー。
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
