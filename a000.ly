\version "2.18.2"

\paper {indent = 0}

\header {
  title = "永遠の幸"
  subtitle = "札幌農学校校歌"
  composer = "納所弁次郎君 作曲"
  poet = "大和田建樹氏 校閲 有島武朗君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 88
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key bes \major 
  \time 4/4 
  \partial 4 f8. ees16 |
  d8. f16 bes8. c16 bes4 bes8. a16 |
  g8. bes16 bes8. g16 f4 f8. ees16 | \break
  d8. f16 bes8. c16 d8. d16 c8. bes16 |
  c2. f,8. ees16 | 
  d8. f16 bes8. c16 bes4 bes8. a16 | \break
  g8. bes16 bes8. g16 f4 d'8. c16 | 
  bes8. a16 bes8. g16 a8. f16 a8. c16 | 
  bes2. r4 | \break
  <bes, f' d'>4 <bes f' d'> <bes f' d'>8. <bes f' c'>16 <ees g bes>8. <bes ees g>16 |
  <bes d f>2 <d f bes> |
  <ees f c'>4 <ees f c'> <d f d'>8. <d f c'>16 <d f bes>8. <f bes d>16 | \break
  <f a c>2. f8. ees16 |
  d8. f16 bes8. c16 bes4 <d, f bes>8. <d f a>16 |
  <bes ees g>8. <ees g bes>16 <ees g bes>8. <bes ees g>16 <bes d f>4 <f' bes d>8. <ees a c>16 | \break
  <ees g bes>8. <f g a>16 <ees g bes>8. <bes ees g>16 <ees f a>8. <c ees f>16 <ees f a>8. <ees f c'>16 |
  <bes d bes'>2. \bar "|." 
}

text = \lyricmode {
  と こ | 
  し え の さ ち、 く ち | 
  ざ る ほ ま れ、 つ~ね に | 
  わ れ ら が う え に あ | 
  れ、 よ る | 
  ひ る そ だ て、 あ け | 
  く れ お し え、 ひ と | 
  と な し し、 わ が に わ | に
  い~ざ い~ざ い~ざ う ち つ | 
  れ て、 | 
  す す む は い ま | 
  ぞ、 と よ | 
  ひ ら の か わ、 つ き | 
  せ ぬ な が れ、 と も | 
  た れ な が く、 と も た | 
  れ。 
}

drum = \drummode{
  r4 | 
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd4 bd4 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd8 r8 |
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
     \new DrumStaff \with{
      \remove "Time_signature_engraver"
      drumStyleTable = #percussion-style
      \override StaffSymbol.line-count = #1
      \hide Stem
    }
    \drum
  >>
  
\midi {}
\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

}


