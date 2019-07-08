\version "2.18.2"

\paper {indent = 0}

\header {
  title = "遙かなる迪"
  subtitle = "平成17年度寮歌"
  composer = "福岡萌君 作曲"
  poet = "加藤信泰君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 112
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \set Timing.measureLength = #(ly:make-moment 1/4)
  d8 [d8] \bar "|:."
  \set Timing.measureLength = #(ly:make-moment 4/4)
  \repeat volta 3 {
  g8 [g8] g4. g8 [g8 a8] | 
  fis4 fis8 [e8] d2 |
  e4. e8 b4. d8 | \break
  b2. b8 [b8] |
  c2 r8 a8 [c8 a8] |
  b4 g'2 r8 g8 |
  g2 e4. g8 | \break
  fis2. d8 [d8] |
  g2 r8 g8 [g8 a8] |
  fis2. r8 d8 |
  e2 e4. e8 | \break
  b4 d2 g8 [fis8] |
  e2 r8 e8 [e8 g8] |
  fis2. r8 d8 |
  e2 e4. g8 | \break
  a2. d,8 [d8] |
  b'2. c8 [b8] |
  a2. d,8 [d8] |
  g8 g2 r8 a8 [b8] | \break
  fis2. d8 [d8] |
  e8 [e8] e2 e8 [fis8] |
  d4 b'2 r8 b8 |
  e,2 fis4. a8 | \break
  }
  \alternative {{
      g2.d8 [d8] \bar ":|." 
    }{
      g2. g8 [fis8] |
      e8 [e8] e2 e8 [fis8] |
      d4 b'2 r8 b8 | \break
      c4. b8 a4. a8 |
      g2. r4
  }}
  \bar "|." 
}

text = \lyricmode {
  は ん じ な る お も い を ひ し て ま な び や
  の も ん を く ぐ り し ー わ こ う ど
  は こ こ ろ た め さ れ は ぐ く ま 
  れ ー あ つ き ち ぎ り の と も を え
  ん に れ の わ か ば か が や く ご と 
  く は る か な る み ち に ー ね を は ら 
  ん と き (ん) は る か な る み ち に ー い
  で ー ゆ か ん
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


