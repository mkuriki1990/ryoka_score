\version "2.18.2"

\paper {indent = 0}

\header {
  title = "姫月に重ねて"
  subtitle = "平成26年度寮歌"
  composer = "寺尾佳隆君 作曲"
  poet = "松元一平君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4. = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  \time 6/8
  \set melismaBusyProperties = #'()
  \repeat volta 3 {
  ees4 d8 ees4 d8 |
  ees4 f8 ees4. |
  f4 ees8 f4 ees8 |
  f4 g8 aes4. | \break
  g4 f8 ees4 d8 |
  c4 d8 ees4. |
  ees4 d8 c4 bes8 |
  c4 bes8 c4. | \break
  ees4. f4 g8 |
  bes4 c8 bes4 c8 |
  ees4 d16 ( [c16] ) c4 bes8 |
  c4. r4. | \break
  bes8 [ c8 bes8 ] g4 f8 |
  ees4. c4. |
  d4. c4 bes8 |
  c8 [ c8 bes8 ] c4. | \break
  c4. ees4 f8 |
  g8 [ g8 f8 ] ees4. |
  f4 ees8 f4 bes8 |
  g4. f4. | \break
  c'4. d4 ( c8 ) |
  bes4 ( aes8 ) g4. |
  f4. ( ees4 ) bes'8 |
  g4. r4. | \break
  f4 ( ees8 ) c4 bes8 |
  c4.~ c4 c8 |
  c4. bes4. |
  c2.~ |
  c2. | \break
  f4. ees4 f8 |
  g4 bes8 g4 bes8 |
  c4 bes8 c4 bes8 |
  c4 d8 ees4. | \break
  f8 [ ees8 d8 ] c8 [c bes] |
  g4. f4 f8 |
  g2. |
  g4. f4. | \break }\alternative{{
  g2.( f2. g2.) | \bar ":|"}{ 
  g2. ~ g~ g |  \break }}
  \tempo 4. =42
  r2. |
  c4. bes4 ees8|
  c4 bes8 \times 3/2 {aes8 [ g8 ]} |
  f4 g8 f4 bes8 |
  g4. r4. | \break
  f4 ees8 \times 3/2 { f8 [ f16 [ bes16 ]] } |
  \times 3/2 {g8 [ f8 ] } ees4. |
  d4 c8 bes4 bes8 |
  c4 ees8 c4.~ |
  c2. 
  \bar "|."
}


text = \lyricmode {
  と き う つ ろ ひ て よ は か は れ ど も こ よ い も つ き は わ れ ら を う つ さ む よ る の と ば り を は ら は む と あ ゆ む な ん じ は に れ に に た れ ど 
  か ぜ を つ か ま む め に か ん ず ー ]
  な が ー れ ー に ふ わ せ し
  く ー と な ら ー ざ ら め や ー 
  さ て う つ り こ む わ が ま な ざ し に
  な ら ひ だ に め づ る こ の お も ひ ー ー 
  ろ ー ー か な し か り け む あ き の よ は つ き か げ ー は え て か げ も お ひ え じ
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
    % \drum\paper{
   
  % \paper{
    % myStaffSize = #20
    % fonts = #(make-pango-font-tree
    %           "IPA明朝"
    %           "IPA明朝"
    %           "Courier 10 Pitch"
    %           (/ myStaffSize 20))
  % }
  
  >>
  
  \midi {}
  \layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

}


