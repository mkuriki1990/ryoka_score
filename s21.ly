\version "2.18.2"

\paper {indent = 0}

\header {
  title = "時潮の波の"
  subtitle = "昭和21年寮歌"
  composer = "寺井幸夫君 作曲"
  poet = "渋谷富業君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor 
  \time 3/4
  \slurUp
  \set melismaBusyProperties = #'()
  c8.^\markup {\small "（序結）"} (ees16 d4 c4 |
  g'2.) | 
  aes8. (aes16 aes4 f4 |
  c'8. c16 c2) | \break
  g8. (g16 g4 c,4 |
  ees2.) |
  d8. (d16 d4 c4 |
  d8. ees16 c2) | \break
  g'8. g16 aes4 aes4 |
  g2. |
  g8. g16 c4 g4 |
  d'8. d16 d2 | \break
  g,8. g16 g4 c,4 |
  ees2. |
  d8. d16 d4 c4 |
  d8. d16 c2| \bar "||" \time 4/4 \break
  g'2 \grace { \voiceTwo  g2 } g4.  g8 |
  \grace { \voiceTwo aes2 } \oneVoice aes4. \grace { \voiceTwo g4 f4 } aes8 g2 |
  \oneVoice \slurUp
  ees4. ees8 d4 c4 |
  d4. d8 
  \mark \markup { "to" \musicglyph #"scripts.coda"}
  d2 |
  \bar "||" \time3/4 \break
  c8. ees16 d4 c4 |
  g'2. |
  ees8. ees16 d4 c4 |
  d8. ees16 c2\fermata | \bar "||" \time4/4 \break
  \bar ".|:" 
  g'4.^\markup {\small "（一二三四五）"} (g8 g4 g4 |
  aes2 g4 f4 |
  ees4. ees8 ees4 ees4 |
  g2.) r4 |
  aes4. (aes8 g4 f4 | \break
  c'4. c8 c2 |
  c,4 ees4 d4. d8 |
  c2.) r4 |
  c'4. (c8 c4 g4 |
  d'4. d8 d2 | \break
  ees4. ees8 ees4 c4 |
  d2.) r4 |
  c2 (aes4 f4 |
  aes4. aes8 g2 |
  c,4 ees4 d4. d8 | \break
  c2.) r4 |
  g'4. (g8 g4 g4 |
  aes2 g4 f4 |
  ees4. ees8 f4 f4 |
  g2.) r4 | \break
  aes4. (aes8 g4 f4 |
  g4. g8 g2 |
  ees4. ees8 d4 c4 |
  d2.) r4 |
  c4. (ees8 g4 g4 |
  aes4. g8 c2) | \break
  c,4 (ees4 d4. d8 |
  c2.) 
  \mark \markup {
  \small \musicglyph #"scripts.coda" \small \musicglyph #"scripts.coda" \italic "al Fine"}
  r4 _\markup {\italic "D.C."}|
  \bar ":|."
  \stopStaff
  \set Timing.measureLength = #(ly:make-moment 1/4)
  s4
  \set Timing.measureLength = #(ly:make-moment 3/4)
  \startStaff
  \key c \minor \time3/4  \clef treble
  \mark \markup {\musicglyph #"scripts.coda"  "Coda" }
  c8. (
  ees16 d4 c4 |
  g'2.) | \break
  aes8. (aes16 g4 ees4 |
  c8. ees16 d2) |
  g,8. (g16 c4 ees4 |
  d8. ees16 c2) _\markup {\italic "Fine" }\fermata |
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
      \set stanza = #"序)"
      き び し か る み ち に つ か え て、
      か ぎ り あ る た ま の お お し む、
      げ に さ あ れ ふ か き え に し の、
      た ま ゆ す る い の ち の う た げ、
      く ま ざ ら め や の こ ん の つ き に、
      た び の あ さ は や く は あ け ぬ。
      じ ち~ょ う の な み の よ す る ま を、 く お ん の
      き し に た た ず み て、 ふ え の、 ま た ま を
      い ざ り す る、 あ~あ、 み つ と せ の こ う え い
      よ、 み ど り の ほ し を ゆ め む と き、
      こ ず え を は ら う て ん ら い は、 ひ し~ょ う の さ と し
      か た る な り。 は ろ か な り、
      わ れ ら が ゆ く て、 す す ま ざ ら め や。
    } \addlyrics {
      \set stanza = #"結)"
      \set includeGraceNotes = ##t
      ち か き か な お か を さ る ひ は、
      か え り こ ぬ あ と か な し み て、
      ひ た ぶ る と う ち え む と き ぞ、
      も と め つ つ う べ か ら ざ り し、
      う る　 　  わ 　 し き 　 　 ま 　 こ と の み ち は、
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