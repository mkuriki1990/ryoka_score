\version "2.18.2"

\paper {indent = 0}

\header {
  title = "昭和9年応援歌"
  subtitle = ""
  composer = "菊地修二君 作曲"
  poet = "末松和彦君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \partial 4 c8. \( e16 |
  g4. ( a8 ) g4 e8. ([ d16 ]) |
  c2 c'4 \) c8 ( r | \break
  g2 e4 c8. e16 |
  g2. ) a8. \( g16 ( |
  a2 ) a4 c8. d16 | \break
  e2 c4 \) d8. ( c16 |
  c2 a4 g8. g16 |
  d'2. ) c8. \( c16 | \break
  c2 c4 a8. ([ g16 ]) |
  g2 e4 \) c8. \( d16 |
  e4 g a d8. ([ c16 ]) | \break
  g2. \) e'8. \(([ d16 ]) |
  c2 ~ c4 e,8 r |
  g4. a8 g4 \) c,8. ( d16 | \break
  e4 g a d |
  c2. )
  \bar "|."
}

text = \lyricmode {
  せ ん う ー ん、 ひ ー く し、 ほ~っ
  き~ょ う の し ろ、 ほ う ー か、 あ が
  れ り、 だ い ち を け っ て、 つ ど
  え る と ー も が い き て ん を つ ー
  き、 み ー よ ー、 さ~っ そ う と は く
  せ い ゆ ら ぐ。
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


