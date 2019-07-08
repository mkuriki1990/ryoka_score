\version "2.18.2"

\paper {indent = 0}

\header {
  title = "芳香漂う"
  subtitle = "昭和42年第60回記念祭歌"
  composer = "名田正信君 作曲"
  poet = "稲田雅久君 作歌"
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
  \repeat volta 2 {
  e4 c8. [(d16)] e2 |
  dis4 dis8. (dis16) e4 e4 ^\( |
  a2  g4 f8 ([ g8 ]) |
  e2. \) e8. ^( f16 | \break
  e4 c4 d4 d4 |
  e2. ) e4 |} \alternative {{
  d4 ( c4 ) b4 a4 |
  b2. r4 | \bar ":|." \break }{
  d4 ( c4 ) b4 b4 |
  a2. c4 ^( |
  c2 d4 d4 |
  d4 g4 e2 ) | \break }}
  e4 d8 [(c8)] b4 a4 |
  b2. e8 e8 |
  a4 a8. a16 a4 gis8. a16 |
  b4 b4 b2 | \break
  e,4 c8. d16 dis4 e4 |
  b'4 (a4) g4 f4 |
  e4 (d4) c4 b4 |
  a2. c8 d8 | \break
  dis8 dis8 dis8 dis8 e2 |
  f4 e4 dis4 e4 |
  a2. r4 
  \bar "|." 
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
    \addlyrics {
    か お ー り た だ よ う、 や わ ら か ー の、 の こ
    ん の は る の、 ゆ う ー ま ぐ れ、
    な ー ふ ぶ き。 あ あ、 な り や み て
    き こ ー え こ ぬ い ろ そ~う れ い の か ね の ね は
    む そ じ の な つ ー に、 な ら ー ざ る や、 い ま
    た そ が れ の じ ち の に わ。
    }
    \addlyrics {
    お ぼ ろ に か か ー る、 ゆ う づ き ー に、 う か
    ぶ こ ぶ し の、 は
    }
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