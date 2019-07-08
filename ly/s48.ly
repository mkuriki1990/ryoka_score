\version "2.18.2"

\paper {indent = 0}

\header {
  title = "冬の大地に"
  subtitle = "昭和48年寮歌"
  composer = "矢野哲憲君 作曲"
  poet = "伊藤潤平君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 4/4
  \set melismaBusyProperties = #'()
  e8. ^"雄々しく" b16 e8. fis16 g8. e16 b'4 |
  a8. g16 fis8. g16 fis4. r8 | \break
  e8. b16 e8. fis16 g8. a16 b4 |
  a8. g16 fis8. g16 e4. r8 | \break
  e'8. e16 c8. c16 b8. e,16 fis4 |
  g8. g16 fis8. e16 b'4. r8 | \break
  e,8. fis16 g8. a16 b8. c16 b4 |
  a8. g16 fis8. g16 e4. r8 | \break
  e8. fis16 g8. a16 b8. [(e16)] c8. b16 |
  g8. g16 fis8. g16 e4. r8 
  \bar "|."
}

text = \lyricmode {
  ふ ゆ の だ い ち に ゆ め は さ め、
  あ さ ひ に う か ぶ は く あ じ~ょ う、
  げ ん し の も り は じ~ゅ ひ~ょ う さ き、
  に し か た そ ら を な が む れ ば、
  し ん せ つ あ ー わ き て い ね や ま。
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