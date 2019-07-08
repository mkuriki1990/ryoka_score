\version "2.18.2"

\paper {indent = 0}

\header {
  title = "偉大なる北溟の自然"
  subtitle = "昭和39年寮歌"
  composer = "司馬威彦君 作曲"
  poet = "司馬威彦君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 60
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key a \major
  \time 4/4
  \phrasingSlurUp
  \set melismaBusyProperties = #'()
  \repeat volta 4 {
  \partial 2 \partial4 cis8 ^"Adagio" \( cis8 |
  fis4. gis8 a4 a8. [(gis16)] |
  fis4 e8. d16 fis4 cis4 ~ |
  cis2 \) r4 cis8 ( cis8 |
  fis4. gis8 a4 b8 b8 | \break
  e4. d8 cis4 b8 b8 |
  a4. a8 gis4\fermata ) cis,8 ( cis8 |
  fis4. gis8 a4 a8 a8 |
  b4 e8. [d16] cis4 fis,4 ~ | \break
  fis2 ) r4 cis8 \( cis8 |
  cis'4. b8 a4 gis8 eis8 |
  fis4. (a8) gis4 \) cis,4 \( |
  eis4. fis8 gis4 a8. [(gis16)] |
  fis2. \) r4 | \break
  cis8. ^\markup \italic "con brio" cis16 d8. cis16 fis8. gis16 a4 |
  b8. b16 e8. d16 cis2 |
  a8. a16 gis8. fis16 gis8. gis16 cis,4 |
  cis'8. b16 a8. cis,16 a'4. gis8 |
  fis2. r4 \bar "||" \break
  \bar ".|:" cis4 cis4 cis'4 b8. [^(a16)] |
  gis2. cis,4 ( |
  eis4. fis8 gis4 b4 |
  a8. fis16 gis2 ) fis8. \( a16 |
  cis4. cis8 cis4 a8. [(b16)] | \break
  cis2. \) b8. ( a16 |
  gis4. eis8 a4 gis4 |
  fis2. ) cis4 |
  fis4. gis8 a4 gis8. fis16 |
  gis2. cis,4 | \break
  gis'4. a8 b4 \tuplet 3/2 {a8 [(gis8 fis8)]} |
  gis2. fis8. [(a16)] |
  cis2 cis4 d8. [(e16)] |
  d2. ( cis8. b16 |
  a4. gis8 cis,4 a'8. gis16 | \break
  fis2. ) cis8. cis16 |
  a'4. a8 cis4 \stemUp b16 [(b16)] a16 [(a16)] | \stemNeutral
  gis2. cis,8. cis16 |
  gis'4. ~ gis8 b4 \tuplet 3/2 {a8 [(gis8)] fis8 } |
  gis2. fis8. \([( a16 )] | \break
  cis2 cis4 fis8. [(e16)] |
  d2. \) cis8. ( b16 |
  a2 cis,8 cis8 a'8. gis16 |}
  \alternative { {
    fis2. ) r4 \bar":|." }{
    fis2.  }	} \break
  cis8 cis8 |
  fis2. fis8. [(gis16)] |
  a2. a8. b16 |
  cis2 b4 \tuplet 3/2 {a8 [gis8. fis16]} |
  gis2. gis8. [a16] | \break
  b4. a8 gis8 gis8 eis8. fis16 |
  gis4. (a8) gis4 cis,4 |
  cis'4. b8 a4 gis4 |
  fis2. fis'8. e16 | \break
  d2 b4 e8. [(d16)] |
  cis2 b4 a4 |
  a2 (fis4) eis8. [(fis16)] |
  gis2. a8. [(gis16)] | \break
  fis2 cis4 b'8. cis16 |
  d4. (b8) fis'4 e8. \([( d16 )] |
  cis4 b8. a16 gis8-- a8-- b8-- cis8-- |
  d4 cis8.^> [(b16)] a4 cis,4 | \break
  a'4. gis8 fis4\fermata \) cis8. ^( cis16 |
  fis4. fis8 fis4 fis8. gis16 |
  a4. a8 a4 ) a8. \( b16 |
  cis2 b8. a16 (gis8.) fis16 | \break
  gis2. \) gis8. \([( a16 )] |
  b4. a8 gis8 gis8 eis8. fis16 |
  gis4. a8 gis4 \) cis4 ( |
  cis4. b8 a8 a8 gis4 | \break
  fis2. ) fis8. (gis16 |
  a4. a8 a4 a8. b16 |
  cis4. d8 cis4 ) b8. \([( a16 )] |
  gis4 cis,4 cis'8 cis4 eis,8 |
  fis2. \) r4
  \bar "|."
}

text = \lyricmode {
  \set stanza = #"序)" お お い な る、 き ー た の し ぜ~ん は ー、 わ が ま え に、 か ぎ
  り な く ひ ろ ご り て、 の に み て る、 せ い れ つ の き は
  ー、 お お し く も け だ か ー き、 こ こ ー ろ も ー て、
  け ん ろ、 は る か に た ど り き し、 ゆ う し が む ね を い ま や、 み た し ぬ。
  \set stanza = #"1.)" ひ~ょ う ひょ ー う の、 き た か ぜ は す さ び、 し ろ が ね の は ー
  な、 だ い ち、 お お え ど、 そ は は ろ か な る、 い
  に し え よ ー ー り、 け ー が れ な ー き、 び の せ か い な れ
  ば、 わ こ う ど は ひ た ぶ る の、 お も い ー を ひ ー め て、 と ー
  つ く に ー ゆ、 あ こ が れ、 つ ど い ぬ。 (に。)
  \set stanza = #"結)" さ れ ど み ー よ、 わ れ ら が あ た り を、 よ こ
  し ま な る ち か ら ー は、 よ も に す さ び、 わ れ
  ら が あ ー い し、 ほ こ ー ら ー ん、 じ ー
  ち の と り で ー に、 ぼ う ぎ~ゃ く の い ま し め は、 か ー さ れ
  ん と す。 さ れ ば わ が と も ど ち よ、 か い な む す ー び
  て、 い ー ま ぞ せ い ぎ の は た を、 た か く か か げ
  ん、 い ま ぞ せ い ぎ の は た を、 た ー か く か か げ ん。
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