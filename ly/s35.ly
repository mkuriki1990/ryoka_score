\version "2.18.2"

\paper {indent = 0}

\header {
  title = "茫洋の海"
  subtitle = "昭和35年寮歌"
  composer = "前野紀一君 作曲"
  poet = "三浦清一郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 84
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key f \major
  \slurUp
  \set melismaBusyProperties = #'()
  \time 4/4 
  a4 ^"Moderato" (d4 d8. e16 f8. g16 \bar "||"
  \time 3/4
  a4 a8. bes16 a8 r8) \bar "||"
  \time 4/4
  d,4 (d'4 c8. bes16 a8. g16 \bar "||" \break
  \time 3/4
  a4 a8. bes16 a8) r8 \bar "||"
  \time 4/4
  a,4 (d8. d16 d8. e16 f8. g16 \bar "||"
  \time 3/4
  a8. a16 a8. bes16 a8) r8 \bar "||" \break
  \time 4/4
  d,8. (d16 d'4 e8. d16 bes8. bes16 \bar "||"
  \time 3/4
  g8. g16 a8) r8 a8. (a16 |
  d,4 d8. e16 f8. g16 |\break
  a4.. bes16 a8) r8 |
  f8. (f16 e4.. e16
  \time 4/4
  d2.) r4 \bar "||" \break
  \tempo 4 = 88
  \time 3/4
  a8 ^"Allegretto かるく" (a8 d4 d8 d8 \bar "||"
  \time 4/4
  c8 c8 f8 f8 f8 f8 ~f8) r8 \bar "||"
  \time 3/4
  c8 (c8 a'4 a8 a8 \bar "||" \break
  \time 4/4
  g8 f8 e8 d8 c8 d8 e8) r8 \bar "||"
  \time 3/4
  c8 (c8 f4 f8 f8 \bar "||"
  \time 4/4
  c8 c8 g'8 g8 g8 a8 bes8) r8 \bar "||" \break
  \time 3/4
  a8 (c8 f4 d8 c8 |
  a8 f8 e8 f8 g8) r8 |
  a,8 (a8 f'4 f8 g8 | \break
  a8 bes8 c8 c8 c4--) |
  a8 ^\markup \italic "rit.molto" (a8 g4. f8 \bar "||"
  \time 5/4
  f2.) r4\fermata a,8 ^\markup "Tempo I" (a8 \bar "||" \break
  \time 4/4
  d4 d8. d16 f8. g16 a8. bes16 |
  a4 d,4 d8) r8 d8. \(d16 |
  d'4 e8. d16 bes8. bes16 a8. g16 |
  a4 a,8. a16 d8. ^([d16]) d8. f16 |\break
  e2.\) a,8. (a16 |
  d4 d8. [e16] f8. g16 a4 |
  d,4  bes'4 bes8) r8 d,8 (d8 |
  d'4 d4 bes8. g16 a8) r8 |\break
  a,4 \(d4 d8. [_(e16)] f4 |
  g4 g8. [_(a16)] bes8. a16 a8\) r8 |
  a,4 ^\(d8. [_(e16)] f4 e4 |
  d2.\) r4|\bar".|"
}

text = \lyricmode {
  ぼ~う よ~う の う み に あ こ が れ、 しゅ~ん け~ん の み ね を
  し た い て、 き た ぐ に の ち に た び ゆ け ば、
  あ ふ れ み つ ゆ め わ か さ、 は て し な く、 ひ ろ
  ご れ る ち へ い せ ん。
  \set stanza = #"Ⅱ." く も り な き こ こ ろ も と め ー、 き び し か る
  つ と め の み ち に、 ま こ と な る び を さ ぐ ら ん と、
  ひ と の よ の た び に し て、 む す ば れ し
  ふ た と せ の、 や ど な れ や、 \set stanza = #"Ⅲ." う つ
  り ゆ く と き に は あ れ ど、 な み だ し て ち か い し こ と ば、 と う と し
  や、 わ か き ひ ー の ゆ め しゅ~ん じゅ~う の、 と と せ の の ち に、
  お も い ー で、 こ え ー も な く し の ー ば ん や。
}

drum = \drummode{
 
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


