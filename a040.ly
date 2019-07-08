\version "2.18.2"

\paper {indent = 0}

\header {
  title = "昭和7年応援歌"
  subtitle = ""
  composer = "赤池武美君 作曲"
  poet = "宇野親美先生 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 108
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor
  \time 4/4
  \set melismaBusyProperties = #'()
  \mark \markup \small "速く力をこめて"
  c4. a8 c ( f ) a _( d ) |
  c4. a8 c2 |
  f,4 e8 ( f ) g4 gis |
  a2. r4 | \break
  f4. ( e8 ) d4 d |
  d g f e |
  c8. c16 a'8. g16 f4 e |
  d2. r4 | \break
  d8 d d ~ d d4 e |
  f4. ( fis8 ) g2 |
  f4. a8 c4 c |
  c2. r4 | \break
  a8. a16 b8. a16 g8 a16 ([ b ]) c4 |
  g8. a16 g8 fis g ( a ) a ([ b ]) |
  c2. r4 |
  c,2 c' ~ |
  c4 b8 a g4 f |
  e2. r4 |
  c8. d16 e8 f f4 e8 ( f ) | \break
  g2. r4 |
  c,8. a'16 c,8 f a c c4 |
  c8. d16 c8 c c4. c8 |
  f,2. r4
  \bar "|."
}

text = \lyricmode {
  げ ん し ー の ー も り に か ぜ ー か お り、
  ひ ー か り、 あ ま ね き こ ん ぺ き の そ ら、
  み よ や ー は た め ー く お う せ い き、
  そ は せ ん じ ん ー の け つ る い に ー そ ー む、
  い ざ ー ふ る い た て、 わ れ ら が と も ー
  よ、 は け ん を ま も る と き は い た り ぬ。
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


