\version "2.18.2"

\paper {indent = 0}

\header {
  title = "二つの春"
  subtitle = "平成25年度寮歌"
  composer = "丸田潤君 作曲"
  poet = "丸田潤君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 4/4
  \set melismaBusyProperties = #'()
  r2. a8 [a8] |
  fis'2 r8 fis8 [e8 d8] |
  e2 r4 e8 [fis8] |
  g4. g8 a4 e4 |
  fis2 r4 d8 [d8] |
  b'2 r8 cis8 [d8 b8] | \break
  cis2 a4 fis8 [a8] |
  g4. fis8 e4 d4 |
  e2 r4 a,8 [a8] |
  fis'2 r8 fis8 [e8 d8] |
  e2 r4 e8 [fis8] |
  g4. g8 a4 e4 | \break
  fis2 r4 d8 [d8] |
  b'2 r8 cis8 [d8 b8] |
  cis2 a4 fis8 [a8] |
  g4. fis8 e4 d4 |
  d2 r4 d8 [d8] |
  d'4. b8 g4 b4 | \break
  a2 r4 fis8 [a8] |
  b4. g8 e8 [fis8 g8 b8] | 
  a2 r4 a8 [g8] |
  fis4. fis8 gis4 ais4 |
  b4 cis4 d4 e8 [d8] | \break
  cis4. b8 a4 gis4 |
  a1 ~ | 
  a2 r4 a,8 [a8] |
  fis'2 r8 fis8 [e8 d8] |
  e2 r4 d8 [cis8] |
  b4. cis8 d8 [e8 fis8 b8] | \break
  a2 r4 g8 [fis8] |
  e4. fis8 g4 a8 [g8] |
  fis4 b4 d4\fermata fis,8 [a8] |
  g4. fis8 e4 d4 |
  d2. r4
  \bar "|."
}

text = \lyricmode {
  ふ り し く ゆ き は お わ る を し ら ず い ま だ そ う か 
  に は は く ぎ ん の ま ち さ れ ど ひ か り は ひ ご と に ま し 
  て は る の お と ず れ を か そ か に お も う い く ば く も せ
  ず わ か れ の と き は き て こ こ で す ご せ し ひ は お も
  い で と な る ー せ つ じょ う の あ と と け さ り き ゆ る よ
  に す だ つ わ か が も ふ ゆ と と も に さ り ゆ く
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


