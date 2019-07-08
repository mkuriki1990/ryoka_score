\version "2.18.2"

\paper {indent = 0}

\header {
  title = "藻岩の緑"
  subtitle = "明治44年寮歌"
  composer = "柳沢秀雄君 作曲"
  poet = "松山茂助君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key bes \major 
  \time 2/4 
  f8. f16 f8. d16 | 
  bes8. c16 d4 | 
  f8. d16 f8. g16 | 
  f4. r8 | \break
  g8.[~ g16] bes8. bes16 | 
  c8. bes16 g8. g16 | 
  f8. d16 c8. d16 | 
  bes4. r8 | \break
  bes'8. bes16 bes8. c16 | 
  d8. d16 d4 | 
  f8. d16 bes8. d16 | 
  c4. r8 | \break
  bes8. bes16 c8. d16 | 
  c8. bes16 g4 | 
  f8. d16 c8. d16 | 
  bes4. r8 | \break
  bes8.~ bes16 d8. d16 | 
  f8. f16 f8. d16 | 
  f8. f16 bes8. bes16 | 
  c4. r8 | \break
  d8. d16 d8. bes16 | 
  g8. g16 f4 | 
  d8. f16 bes8. c16 |
  bes4. r8 \bar "|." 
}

text = \lyricmode {
  も い わ の | 
  み ど り | 
  は る た け | 
  て、 | 
  ば_ー ん だ | 
  い ち だ の、 | 
  あ さ が す | 
  み | 
  あ こ が れ | 
  あ や と、 | 
  な が れ て | 
  は、 | 
  は な み な | 
  く し き、 | 
  か な ら ず | 
  や、 | 
  わ_ー か き | 
  ち し お の | 
  お ど る と | 
  き、 | 
  き ぼ う の | 
  ぜ ん と、 | 
  ひ か り あ | 
  り。 | 
}

harmony = \chordmode {
  
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

