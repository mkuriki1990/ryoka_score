\version "2.18.2"

\paper {indent = 0}

\header {
  title = "六華ぞ窓に"
  subtitle = "平成7年度寮歌"
  composer = "永田将人君 作曲"
  poet = "宇野直哉君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 90
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  \time 6/8
  \set melismaBusyProperties = #'()
  \set Timing.measureLength = #(ly:make-moment 1/8)
  g4 |
  \set Timing.measureLength = #(ly:make-moment 6/8)
  c4 d8 ees4 f8 |
  ees4 d8 c4 r8 |
  ees4 ees8 f4 ges8 |
  g2 r8 g,8 | \break
  c4 d8 ees4 f8 |
  ees4 d8 c4 r8 |
  ees4 ees8 d4 d8 |
  c2 r8 c8 | \break
  aes'4. aes8 [g8 f8 ] |
  ees4 f8 g4 g8 |
  aes4 f8 f8 [ ees8 d8 ] |
  ees4 f8 d4 c8 | \break
  ees4 f8 g4 aes8 |
  g4. c,4. |
  ees4 ees8 d4 c8 |
  d4 g8 c,4 c8 | \break
  c'4 c8 c8 [ bes8 aes8 ] |
  g4 ges8 g4 g8 |
  aes4 ees8 ees8 [ d8 c8 ]  |
  g'2 r8 g,8 | \break
  c4 d8 ees8 [ f8 ges8 ] |
  g4 g8 c4\fermata f,8 |
  f4 ees8 d4 g8 |
  g,4 d'8 c4 r8
  \bar "|."
}

text = \lyricmode {
  り っ か ぞ ま ど ー に き ざ ま れ る ひ
  び と も さ れ ー て い え い え の ま
  ち に ー ち る ほ ど ま み ー え ん と す ー は め
  い そ う の し と う い な る お と め に
  ぶ き ぎ ー ん な ー る そ ら ー の ー し た あ
  た た か き か た す み も と む る わ こう ど ら
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

