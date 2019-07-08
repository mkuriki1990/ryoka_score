\version "2.18.2"

\paper {indent = 0}

\header {
  title = "かがやく路"
  subtitle = "大正11年新寮記念寮歌"
  composer = "山本吉之助君 作曲"
  poet = "服部光平君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 60
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 2/4
  \set melismaBusyProperties = #'()
  d8. fis16 g16 a8. |
  a16 [(b8.)] a8. g16 |
  g8. g16 g16 [(fis16)] e8 | \break
  fis4. r8 |
  a8 b8 g8 g8 |
  g16 a8. fis4 | \break
  d8. e16 g8 fis8 |
  fis4. r8 |
  d'8 b8 cis8 a8 | \break
  d,8 e8 fis4 |
  a8 b8 d8 cis8 |
  cis4. r8 | \break
  d,8. fis16 g8 a8 |
  fis8. g16 a8 fis8 |
  e8 fis8 g8. e16 |
  d4. r8 |
  \bar "|." \break  
}

text = \lyricmode {
  か が や く み ー ち の さ す ら ー い
  や、 た ま の せ い な る
  い し か り の、 い ろ、 は な
  か な る あ け ぼ の の、
  ゆ り か ご に う た う わ こ う ど は。
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


