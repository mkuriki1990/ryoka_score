\version "2.18.2"

\paper {indent = 0}

\header {
  title = "熱き街"
  subtitle = "平成4年度寮歌"
  composer = "美濃成夫君 作曲"
  poet = "美濃成夫君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 90
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \set Timing.measureLength = #(ly:make-moment 1/8)
  f8 |
  \set Timing.measureLength = #(ly:make-moment 4/4)
  e2 f4. f8 |
  g2. a8. [a16] |
  a8 [a8 a8 a8] \stemUp a8 [c8] b8. [a16] | \break \stemNeutral
  g2. r4 |
  g8 f4 f8 f8. [e16] d8 [f8] | 
  e8. [e16] d8 [d8] c4 d8. [d16] |
  d2 d8 [b8] b8. [d16] |\break
  c2. a'8. [a16] | 
  a4. a8 a8 [c8 b8 a8] |
  g8. [fis16] g8 [b8] c4 fis,8. [fis16] |
  e2 d8 d4 e8 | \break
  c4. r8 
  \bar "|."
}

text = \lyricmode {
  あ つ き ま ち ふ ゆ ま だ み ぬ わ か く さ
  よ お か に ざ わ め く き の し ば の こ え を か ち う た
  に ひ ら け る や し ん は み ち の う え も り を つ ら ぬ く
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