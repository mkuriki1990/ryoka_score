\version "2.18.2"

\paper {indent = 0}

\header {
  title = "寒気身を刺す"
  subtitle = "昭和42年寮歌"
  composer = "森田弘彦君 作曲"
  poet = "岡田雄三君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 88
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  \time 4/4
  \set melismaBusyProperties = #'()
  g'4 ^(aes8. g16 g4 f8. ees16 |
  f2.) r4 |
  g4 ^\(aes8. ([g16]) ees4 d8. ([c16]) | \break
  d2.\) r4 |
  g4 \(aes8. g16 c4 bes8. [( aes16 )] |
  g2 ( d4.)\) r8 | \break
  f4 g8. [(aes16)] g4 ees8. [(d16)] c2. r4 |
  g'8. [(g16)] g8. aes16 bes8. [(bes16)] aes8. g16 | \break
  f4 (f8.) [g16] aes4 g8. f16 |
  ees8. [(ees16)] es8. f16 g4 ees8. d16 |
  c8. [(c16)] ees8. d16 c4 r4 | \break
  g'4 (c8.) d16 ees4 d8. c16 |
  d2 (g,4.) r8 | \break
  c,4 c8. [(d16)] g4 ees8. [(d16)] |
  c2. r4 |
  \bar "|."
}

text = \lyricmode {
  か ん き、 み を さ す、 き た ー ぐ に ー 
  の、 と わ に、 な を ー は す、
  け い ー て き ー りょ~う。 よ ん ひ~ゃ く や じ ん の
  つ ー ど い し に、 わ れ ら が ロ マ ン い つ の ひ か、
  な ー さ ざ ら ん と ぞ、
  い き ー た か ー し。
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