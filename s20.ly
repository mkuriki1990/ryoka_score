\version "2.18.2"

\paper {indent = 0}

\header {
  title = "生命の旅路"
  subtitle = "昭和20年寮歌"
  composer = "新井忠雄君 作曲"
  poet = "幸坂彪君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 69
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor 
  \time 3/4
  \set melismaBusyProperties = #'()
  d4. (d8 e8 f8 |
  a4. a8 f4 |
  bes4. d8 bes8 bes8 |
  a2.) | \break
  bes4. (d8 d8 bes8 |
  a4. f8 f4 |
  e4. a8 f8 e8 |
  d2.) | \break
  e4 (e4. a8 |
  f4. e8 d8 e8 |
  a4. bes8 d8 bes8 |
  a2.) | \break
  bes4. (e8 d8 bes8 |
  a4. f8 f4 |
  f4. a8 f8 f8 |
  e2.) | \break
  e4. \(d'8 d8 d8 |
  d4 (e8 d8) bes8 a8 |
  g4. e'8 d8 bes8 |
  a2.\) | \break
  bes4. \((d8) d8 [(bes8)] |
  a4. a8 f4 |
  e4. a8 f8 e8 |
  d2.\) | \break
  \bar "|." 
}

text = \lyricmode {
  る て ん、 と こ よ の た び ご ろ も、
  し だ い の く し び、 と わ ん に も、
  わ か き い の ち の さ び し ら に、
  と お き、 ま こ と の ほ し ひ と つ、
  お き ふ し し ー ー ら に し た い ゆ く、
  か ー げ ー しょ~ぅ しょ~ぅ の の に き え ぬ。
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