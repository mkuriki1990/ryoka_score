\version "2.18.2"

\paper {indent = 0}

\header {
  title = "北海道帝国大学独立記念歌"
  subtitle = "大正7年"
  composer = ""
  poet = ""
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
  み や こ の は な を ふ く か ぜ の、
  つ が る の う み を こ え く れ ば、
  い し か り の、 の べ ゆ き き え て、
  う ら わ か く さ の か も た か く、
  は く う ん そ ら に ゆ き か い て、
  ひ つ じ の ゆ め ぞ の ど か な る。
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

