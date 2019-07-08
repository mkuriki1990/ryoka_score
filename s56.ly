\version "2.18.2"

\paper {indent = 0}

\header {
  title = "汝と我の"
  subtitle = "昭和56年寮歌"
  composer = "長谷部健君 作曲"
  poet = "山根誠君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

freygish = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
    (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,FLAT) (6 . ,NATURAL))
    
melody = \relative c'{
  \tempo 4 = 69
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \freygish
  \time 4/4
  \set melismaBusyProperties = #'()
  aes4 f'4 e4 d4 |
  c2. b4 |
  b4. c8 d4 e4 |
  c2 c4 b4 | \break
  aes2 g4 f8 [g8] |
  aes2. aes4 |
  b4. c8 d4 e4 |
  f4. g8 aes2 | \break
  e8. [e16] aes8 [aes8] g4 f8 [e8] |
  d8 [d8] c8 [c8] d2 |
  aes4. f'8 e4 d4 |
  c2. b4 | \break
  b4. c8 d4 e4 |
  c2 c4 b4 |
  aes2 g4 f8. [g16] |
  aes2. aes4 | \break
  b4. c8 d4 e4 |
  f4. g8 aes2 |
  e8. [e16] aes8 [aes8] g4 f8 [e8] |
  d8. [d16] c8 [e8] d2 | \break
  e4. f8 g4 e4 |
  f4. e8 d2 |
  b'4. aes8 g4 f8. [g16] |
  c2. aes8 [aes8] | \break
  d4 d2 c8 [b8] |
  f4 g2 g4 |
  c2 b4 aes8 [g8] |
  aes2. f8 [f8] | \break
  b4 b2 c8 [b8] |
  g4 e2 f4 |
  e4. f8 g4 b4 |
  aes2. aes,8 [aes8] | \break
  d4. e8 f4 g8 [aes8] |
  b2. g4 |
  aes2 aes4 aes4 |
  d,2.  r4 
  \bar "|."
}

text = \lyricmode {
  よ す が な き す が た も み せ ぬ か
  ーっ こ ー ー を さ が せ し は た ー ぞ
  な ん じ と わ れ の ひ と み な り く さ い き れ も
  え た つ の に て た わ む れ ー ぬ け
  も の ら は た ー ぞ な ん じ と わ れ の す が た な り
  も り と ふ る や を お お い た ー る よ こ
  し ま な ー も の め ぐ る よ ー に ま こ
  と の お ー も い い ず ー こ に か な ん
  じ と わ れ ー の む ね に あ り
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