\version "2.18.2"

\paper {indent = 0}

\header {
  title = "浅緑燃ゆる"
  subtitle = "昭和22年第40回記念祭歌"
  composer = "堀井洵君 作曲"
  poet = "山家貫之君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 2/4
  \mark \markup \small "中庸の速さ"
  \set melismaBusyProperties = #'()
  \repeat volta 5 {
  b8. b16 b8. cis16 |
  d8. ~ [d16] cis8. b16 |
  fis'8. fis16 fis8. g16 |
  fis4. r8 | \break
  g8. ~ [g16] fis8. g16 |
  b8. b16 g8. b16 |
  fis8. fis16 d8. cis16 |
  b4. r8 | \break
  cis8. cis16 fis8. fis16 |
  d8. ~ [d16] cis8. d16 |
  b8. b16 cis8. d16 |
  fis4. r8 | \break
  b8. b16 g8. fis16 |
  b8. ~ [b16] cis8. cis16 |
  fis,8. fis16 d'8. d16 |
  cis4. r8 | \break }\alternative {{
  b8. cis16 d8. cis16 |
  b8. ~ [b16] g8. e16 |
  fis8. fis16 d8. cis16 |
  b4. r8 | \break }{
  b'8. cis16 d8. cis16 |
  b8. b16 g8. b16 | 
  fis8. fis16 d'8. cis16 |
  b4. r8 |}}
  \bar "|." 
}

text = \lyricmode {
  さ み ど り も ー ゆ る き た の さ と、
  す ー さ ぶ あ ら し を み に う け て、
  く し び の と ー び ら あ け は な ち、
  お た け び た ー か く じ~ょ く せ い に、
  し っ た の け ー ん を ふ る う か な。
  た か う た わ ん か な わ が と も よ。
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

