\version "2.18.2"

\paper {indent = 0}

\header {
  title = "清き郷石狩の"
  subtitle = "昭和15年桜星会三十周年記念歌"
  composer = "呉泰治郎氏 作曲"
  poet = "岩崎五郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major  
  \time 4/4 
  c8 r g r c r g r | 
  c2. c8. d16 | 
  e8 r e r e r e8.( f16) | 
  g2. g4 | \break
  c2 b4 a | 
  a2. e8. f16 | 
  g4. g8 d4 d | 
  c2. r4 | \break
  d8 r f r f r e r | 
  d2. e8. f16 | 
  g8 r g r g r a r | 
  g2. g4 | \break 
  e'2 d4 c | 
  c2. e,8.( f16) | 
  g2 d4 d | 
  c2. b8. c16 | 
  d8 r d r d r f r | \break 
  e2. e8. f16 | 
  g8 r e8.( f16) g8 r a r | 
  g2. c8. d16 | 
  c4 c8. d16 c4 b8. a16 | \break 
  g4 e8. f16 g4 a8. b16 | 
  c4 c c b8. c16 | 
  d8 c b c d4 g,8. g16 | \break 
  e'4.( e8) d4 d | 
  c2. e,8. a16 | 
  g8 r g, r g r d'4 | 
  c4. r4 \bar "|."
}

text = \lyricmode {
  き よ き く に、 い し か り の、 のー に、
  う ち た て し せ ん じ ん が あ と。 
  け ん こ ん に ひ か り な が れ て、 
  い ま ぞ な る、 みー そ と せ の、
  た か き せ い し よ、 た た え なー ん、
  い ざ、 わ か き ち し お、 
  も ゆ る お も い、 よ を さ ま し、 
  よ を み ち び か ん、 
  で ん とう の か ね、 た か く、 な る な り。
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
