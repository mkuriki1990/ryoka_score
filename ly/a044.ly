\version "2.18.2"

\paper {indent = 0}

\header {
  title = "昭和11年応援歌"
  subtitle = ""
  composer = "能登君 作曲"
  poet = "河邨文一郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 100
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 2/4
  \set melismaBusyProperties = #'()
  r8. c16 \( g'8. g16 |
  a4 ( g ) |
  c2 \) |
  c,8. ( e16 g4 | \break
  c4 ^> b8. a16 \bar "||" \time 4/4 
  g2. ) c,8. ( b16 |
  e4 g a c \bar "||" \time 2/4
  g2 ) \bar "||" \time 3/4 \break
  e8. ^( e16 g4 a |
  e8. d16 c2 ) |
  c'8. ( c16 c4 g4 |
  a8. c16 g2 ) \bar "||" \time 2/4 \break
  a8 ( c c a |
  g4 e |
  d2 ) \bar "||" \time 3/4 
  c8. \( d16 e4 g \bar "||" \time 2/4 \break
  a a8. ([ g16 ]) |
  c2 \) |
  g8. ^( a16 g4 |
  g e8. d16 |
  c2 )
  \mark \markup {\fermata}
  \bar "|."
}

text = \lyricmode {
  た つ は い ー ま、 あ げ よ、
  お た け び、 か い て ん の わ ざ、
  な す べ き と き ぞ、 ほ っ ぽ う の、 ご う、
  こ う や を け り て、 と な ん の
  つ ば ー さ そ ら に、 は た め く。
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


