\version "2.18.2"

\paper {indent = 0}

\header {
  title = "不老の青春"
  subtitle = "恵迪寮100周年記念寄贈寮歌"
  composer = "千川浩治君 作曲"
  poet = "千川浩治君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c''{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  \time 4/4
  \set melismaBusyProperties = #'()
  g2 c8 [ bes8 g8 f8 ] |
  ees2 g4 r4 |
  ees4. c8 ees4 f4 |
  g2. r4 | \break
  g4. bes8 c4 bes4 |
  c4 ees4 bes4 r4 |
  c4. bes8 g4. f8 |
  ees2. r4 | \break
  f8 [ f8 bes8 bes8 ] g8 [ g8 f8 ees8 ] |
  f8 [ f8 ] \tupletDown \tuplet 3/2 { g8 [ f8 ees8 ] } f4 r4 |
  g8 g4 bes8 c4 bes4 
  c4 ees4 bes4 r4 | \break
  c8 c4 bes8 g8 g4 f8 |
  ees2. r4
  \bar "|."
}

text = \lyricmode {
  みー よ に わ た りー し けー い て き りょうー
  れー き し も ふ り て いー っ せ い きー
  い お う も う れ し ー こ の や ー ど に い こ う は ー た の し
  き ね ー ん ー さ い
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


