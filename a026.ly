\version "2.18.2"

\paper {indent = 0}

\header {
  title = "春三月の(茨戸の歌)"
  subtitle = "漕艇部部歌 (昭和30年)"
  composer = "木原慎一君 作曲"
  poet = "木原慎一君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 6/8
  \set melismaBusyProperties = #'()
  c4 c8 d4 e8 |
  g4 e8 a4. |
  a4 g8 a4 c8 |
  g4. ~g4 r8 | \break
  c,4 c8 d4 e8 |
  a4 g8 g4. |
  g4 e8 e4 d8 |
  c4. ~ c4 r8 | \break
  g'4 g8 c4 d8 |
  e4 d8 c4. |
  a4 a8 c4 a8 |
  g4. ~ g4 r8 | \break
  a4 a8 c4 d8 |
  c4 a8 g4. |
  g4 e8 g4 e8 |
  d4. ~ d4 r8 | \break
  e4 d8 c4 c8 |
  a'4 b8 c4.\fermata |
  g4 e8 e4 d8 |
  c4. ~ c4 r8 
  \bar "|."
}

text = \lyricmode {
  は る さ ん が つ の え ぞ が し ま ー、
  な が き ね む り に と ざ さ れ し ー、
  ば ら と、 か は ん の ゆ き と け て ー、
  と く ま ち わ び し み ず の こ の ー、
  よ ろ こ び わ ら う こ え、 す な り ー。
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


