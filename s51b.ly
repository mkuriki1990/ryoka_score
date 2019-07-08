\version "2.18.2"

\paper {indent = 0}

\header {
  title = "楡陵を去る日に"
  subtitle = "北大創基百周年記念東京同窓会寄贈寮歌"
  composer = "矢野哲憲君 作曲"
  poet = "小倉行雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 8 = 100
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor
  \time 6/8
  \set melismaBusyProperties = #'()
  d4 ^\mf d8 a4 d8 |
  f4 e8 d4. |
  e4 f8 e8 [( d8 )] f8 |
  a4. ~ a4 r8 | \break
  bes4 b8 a4 d,8 |
  f4 e8 d4. |
  a4 a'8 e4 f8 |
  d4. ^\> ~ d4 \! r8 | \break
  g4 g8 g4 a8 |
  d,4 bes'8 ^\< bes4 \! ( a8 ) |
  d4 ^\f d8 e8 [( d8 )] bes8 |
  a4. ~ a4 r8 | \break
  f4 e8 d4 ( a8 ) |
  a4 a'8 f4. \fermata |
  e4 ^\mp a8 ^\markup \italic "rit." e4 f8 |
  d4. ^\> ~ d4 \! r8
  \bar "|."
}

text = \lyricmode {
  お か を さ る ひ に な み だ ー せ し ー、
  と も よ い ず こ に さ り ゆ け る ー、
  も も と せ い わ う ー き ね ん ー さ い ー、
  と も よ ー つ ど わ~ん に れ か げ に ー。
}

harmony = \chordmode {
  d2.:m ~ d:m a2.:7 d2.:m
  g:m d:m a:7 d:m
  g4.:m d:m g2.:m ~ g:m a:7
  d:m a4.:7 bes a2.:7 d:m
}


\score {
  <<
    % ギターコード
    \new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}{
      \set chordChanges = ##t
      \harmony
    }
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


