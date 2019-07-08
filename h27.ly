\version "2.18.2"

\paper {indent = 0}

\header {
  title = "咲く六華よ"
  subtitle = "平成27年度寮歌"
  composer = "小松遼貴君 作曲"
  poet = "鈴木美奈君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 116
  \autoBeamOn
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  % \time 1/4 e8. g16 | 
  \time 4/4
  \partial 4
  e8. g16 | 
  \repeat volta 4 { 
    a4.. b16 c4 b8. a16 | 
    g16 g g8~  g8. d16 e4 d8. c16 | 
    r8. d16 d8. e16 g8. g16 e8. d16 | \break
    c8. c16 d8. d16 e8 r8 e8. g16 | 
    a4.. b16 c4 b8. c16 | 
    d4 c8. d16 e4 f8. e16 |
  }
  \alternative {
    {
      r8. d16 d8. d16 d8. d16 c8. d16 | 
      e8. e16 c8. b16 a8 
	  r8 e8. g16 |
    }
    { 
      r8. d'16 d8. d16 d8. d16 c8. d16 | 
      r8. e4 e16 d4 c4 | 
      a2. r4 | 
    }
  }
  \bar "|."
}


text = \lyricmode {
  ま な び や の の に さ く は な よ ー ー 
  わ れ ら を ま ね く き た の さ ち
  の ぞ み う る わ し こ の ー み ち に 
  め い か ま す ら お つ ど い く る 
  す ず 
  よ わ い の べ た し あ お き は る 
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
  
  >>
  
  \midi {}
  \layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }

    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }

}


