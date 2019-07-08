\version "2.18.2"

\paper {indent = 0}

\header {
  title = "北を恋う"
  subtitle = "北大創基百周年記念東京同窓会寄贈寮歌"
  composer = "宍戸昌夫君 作曲"
  poet = "宍戸昌夫君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c''{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor
  \time 6/8
  \set melismaBusyProperties = #'()
  \mark \markup "Maestoso"
  a4 f8 e4 d8 |
  a'4. ~ a8 r8 bes8 ~ |
  bes4 a8 d4 e8 |
  d4 bes8 a4 r8 | \break
  f4 f8 e4 d8 |
  a'4. ~ a8 r8 f8 |
  e8 a8 a8 ~ a4 d,8 |
  e4. d4 r8 | \break
  d'4 d8 d4 d8 |
  e4. ~ e8 r8 a,8 |
  f'4 e8 d4 bes8 |
  a4 _( bes8 ) d4 r8 | \break
  d4 d8 bes4 bes8 |
  a4 a8 d,4 e8 |
  f4. e4 e8 |
  d4. ~ d8 r8 r8
  \bar "|."
}

text = \lyricmode {
  き た を こ う ー、 お ー も い は、 せ ち に、
  ゆ め に の み ー、 と う ぞ、 か ー な し き、
  お お い な る ー、 こ こ ろ た て に ー し、
  た ま し い の さ と と、 よ ぶ ち よ ー。・
}

harmony = \chordmode {
}

\score {
  <<
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


