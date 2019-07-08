\version "2.18.2"

\paper {indent = 0}

\header {
  title = "野球部南征歌"
  subtitle = "昭和4年頃"
  composer = "長谷川誠君 作曲"
  poet = "須田政美君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 50
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor
  \time 6/8
  \set melismaBusyProperties = #'()
  c4 g8 c4 ees8 |
  d4 d8 c8 ( d4 ~ |
  d4. ~ d8 ) r8 ees8  | \break
  g4 ees8 g4 aes8 |
  g4. ~ g4 r8 |
  c4 aes8 g4 ees16 [( d16 )] | \break
  c4 ees8 g4. |
  ees4 ees8 d4 d8 |
  c4. ~ c4 r8 | \break
  c'4 c8 aes4 g8 |
  aes4 c8 ees4 ( d8 ~ |
  d4. ~ d4) r8 | \break
  c4 c8 aes4 c8 |
  c4. ~ c4 r8 |
  aes4 c8 c4 d8 | \break
  c4 aes8 g4. |
  ees4 ees8 d4 d8 |
  c4. ~ c4 r8
  \bar "|."
}

text = \lyricmode {
  た い り く の く も ー ー ー ゆ
  う ー ゆ う と ー、 の を め ぐ ー
  り ゆ く い し か り に ー、
  き け て つ こ ん の ー ー ー 
  お と さ え て ー、 し ん き~ゅ う
  ど う の せ い ち あ り ー。
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


