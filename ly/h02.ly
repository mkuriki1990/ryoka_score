\version "2.18.2"

\paper {indent = 0}

\header {
  title = "我楡陵に-行秋哀歌-"
  subtitle = "平成2年度寮歌"
  composer = "田口拓君 作曲"
  poet = "木村政明君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c''{
  \tempo 4 = 90
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 4/4
  \set melismaBusyProperties = #'()
  g8. [c16] a8. [g16] e4 e8. [e16] |
  d8. [g16] e8. [c16] a2 |
  d4. e8 d8. [e16] g4 |
  a8. [g16] c,8. [e16] d8. [c16] d4 | \break
  g8. [c16] a8. [g16] e4 e8. [e16] |
  d8. [g16] e'8. [c16] a4 a8. [a16] |
  c4 a8. [g16] g4 a8. [g16] |
  a8. [g16] d8. [g16] c,2 | \break
  a'8. [a16] a8. [g16] a2~ |
  a2. c4 |
  c8. [c16] d8. [c16] e8. [d16] c4~ |
  c1 | \break
  c8. [d16] c8. [c16] a4\fermata a8. [a16] |
  \time 3/4
  g8. [e16] e8. [c16] e8. [d16] |
  \time 4/4 
  c1 \bar ":|."
  a'8. [a16] a8. g16] a2 |
  \time 3/4 
  c8. [c16] d8. [c16] e8. [d16] | \break
  c1 
  \bar "|."
}

text = \lyricmode {
  あ し び き の て い ね の み ね よ は る け く も い だ い な る か な
  お ご そ か に ゆ う ひ は し ず み や ま ぎ わ に は え て は ー し る し
  た そ が れ の 　 や ま な み ー を め ず 　 
  りょ う せ ん の う つ く し さ と わ ー に わ が お か に き よ き は な さ け
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