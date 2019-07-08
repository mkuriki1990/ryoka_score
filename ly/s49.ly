\version "2.18.2"

\paper {indent = 0}

\header {
  title = "北の都は"
  subtitle = "昭和49年寮歌"
  composer = "大森秀治君 作曲"
  poet = "大森秀治君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 69
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 6/8
  \set melismaBusyProperties = #'()
  e4 c8  a4 b8 |
  c4 d8 e4. |
  f4 e8 d4 b8 |
  e4. ~ e8 r8 r8 | \break
  a4 a8 g4 f8 |
  a,4 b8 c4. |
  d4 d8 c4 c8 |
  b4. ~ b8 r8 r8 | \break
  a'4 b8 c4 d8 |
  c4 b8 a4. |
  d4 c8 b4 a8 |
  b4. ~ b8 r8 r8 | \break
  c4 b8 a4 f8 |
  e4 e8 a4. |
  c,4 c8 b4 b8 |
  a4. ~ a8 r8 r8 |
  \bar "|."
}

text = \lyricmode {
  き た の み や こ は ひ ら か れ て ー、
  う し な わ れ ゆ く だ い し ぜ ん ー、
  り~ょ う の す が た も か わ れ ど も ー、
  け い て き の な は と こ し え に ー。
}

harmony = \chordmode {
  a2.:m ~ a:m d4.:m e:7 a2.:m
  d:m a4.:m f d:m a:m e2.:7
  a:m f d:m e:7
  a4.:m d:m a:m d:m a:m e:7 a2.:m
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