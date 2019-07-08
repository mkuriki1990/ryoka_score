\version "2.18.2"

\paper {indent = 0}

\header {
  title = "手をとりて美しき国を"
  subtitle = "昭和28年寮歌"
  composer = "三河勝彦君 作曲"
  poet = "山本玉樹君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor 
  \time 4/4
  \set melismaBusyProperties = #'()
  \partial 2 \partial 4 d4 ^\markup "Moderato" ( |
  f2 d4 f4 |
  a2. bes8. bes16 |
  a4 g4 f4 d4 |
  e2. ) d4 ( | \break
  f2 f4 g4 |
  a2. bes8. bes16 |
  a4 g4 f4 e4 | 
  d2. ) a'4 ( |
  a2 bes4 bes4 | \break
  a2. d8. d16 |
  c4 bes4 a4 g4 |
  a2. ) g4 |
  g2 \( bes4 bes4 |
  a2 r8 bes8 (bes8) bes8 | \break
  a4 g4 f4 e4 |
  d2. \) c4^\markup { \italic "coll brio" \normal-text "(いきいきと)" }  \bar"||" |
  f4 (a4) c4 d4 |
  c2. d4 | \break
  c4. (a8) f8 f8 g8. a16 |
  g2. bes4 |
  bes2 a4 bes4 |
  c2. c8. ^\markup \italic "cresc." c16| \break
  d4. (c8) a4 g4 |
  f2. f4 |
  d2 f4 bes4 |
  a2 r8 a8 [(bes8)] c8 |
  d4. (d8) d4 d4 | \break
  c2. c,4 ^\< |
  f4 \! (g4) a4 ^\<  bes4 |
  c2. \! d8. d16 |
  bes4. g8 g4 g4 |
  f2.
  \bar "|."
}

text = \lyricmode {
  た お れ た る と も の す が た を、 わ
  す る ま じ わ れ ら が む ね に、 お そ ろ し
  き く も そ ら に み ち、 け が れ た る そ こ く
  の さ ん が に、 あ た ー ら し き み
  ど り の い ぶ き が、 わ か も の の つ ち
  お と に わ し、 も ろ び と の さ ー ち ふ か め つ
  つ、 こ の ー ま ち に こ だ ま す ひ ま で。
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

