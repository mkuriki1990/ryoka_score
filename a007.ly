\version "2.18.2"

\paper {indent = 0}

\header {
  title = "桑楡哺紅に"
  subtitle = "大正14年桜星会優勝歌"
  composer = "宗知康君 作曲"
  poet = "木村英男君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 =52
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  c4. d8 e4. g8 |
  a4. c8 a2 |
  g4. g8 e4. c8 |
  d2. r4 | \break
  g4. g8 g4. e8 |
  a4. a8 g2 |
  e4. g8 c4. a8 |
  g2. r4 | \break
  c4. c8 a4. g8 |
  a4. c8 d2 |
  e4. d8 c4. a8 |
  g2. r4 \break
  e4. g8 a4. g8 |
  a4. c8 g2 |
  e4. g8 e4. d8 |
  c2. r4 | \break
  c'4. c8 d4. c8 |
  e4. d8 c2 |
  a4. ( a8 g4 ) e8 ([ c8 ]) |
  d4. e8 d2 | \break
  c4. d8 e4. g8 |
  a4. c8 a2 |
  g4. e8 d4. e8 |
  c2. r4
  \bar "|."
}

text = \lyricmode {
  そ う ゆ ほ こ う に い ろ な せ る、
  わ れ わ が と も の け つ る い し、
  そ は、 り~ょ う げ ん の ひ と も え て、
  い ま、 ゆ う ば く の の に く る い、
  み よ、 か ん げ き の む ー ー ね ー と む ね、
  む す び か が や く ま な ざ し を。
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


