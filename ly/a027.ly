\version "2.18.2"

\paper {indent = 0}

\header {
  title = "馬術部賛歌"
  subtitle = "昭和35年頃"
  composer = "滝沢南海雄君 作曲"
  poet = "三浦清一郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \repeat volta 3
  {
    g16 g8. c8. d16 e4 g4 |
    f16 g8. c,8. e16 d8. [(c16)] d4 | \break
    \tuplet 3/2 { g,8  g8 g8 } c8. d16 \tuplet 3/2 {e8 e8 e8 } g4 |
    d16 d8. a8. b16 c8. d16 c4 | \break
    a'16 a8. a8. a16 f4 a8. a16 |
    g8. a16 c,8. a16 d4 g8. g16 | \break
    c4. a8 a4 g8. e16 |
  }
  \alternative {{
      d8 e16 [(d16)] c8. d16 c4 r4 \bar ":|." \break 
    }{
    d8 e16 [(d16)] c8. d16 c4 r8 g16 [g16] |}}
    a4. d16 d16 e4. g8 | \break
    c4 b8. a16 g8. a16 g4 |
    a4 a8. c16 g8. g16 e8. c16 |
    a8. g16 d'8. e16 c4 r4
  \bar "|."
}

text = \lyricmode {
  は る き た れ ば だ い ち ひ か ー る、
  し ろ が ね の え ん ざ ん ゆ め ぼ う ぼ~う た り、
  た か ら か に い ま ぞ い な ゝ け、 わ れ
  ら し~ゅ ん め の は ま ー れ あ り。
  あ る ー か ぎ り。 ほ く だ~い ほ く だ~い、 お
  お わ が ぼ こ う、 わ れ ら し~ゅ ん め の ほ ま れ あ り。
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


