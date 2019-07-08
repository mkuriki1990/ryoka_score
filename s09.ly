\version "2.18.2"

\paper {indent = 0}

\header {
  title = "津軽の海"
  subtitle = "昭和9年寮歌"
  composer = "白石祐義君 作曲"
  poet = "星勇君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 88
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 4/4 
  \set melismaBusyProperties = #'()
  d8. d16 d8. d16 d4. r8 |
  e8. e16 e8. e16 e8. e16 e4 | \break
  fis8. fis16 fis8. fis16 fis4. r8 |
  d8. fis16 a8. a16 a8. a16 a4 | \break
  fis8. d16 b8. b16 b4. r8 |
  a'8. a16 b8. a16 fis8. e16 e4 | \break
  d8. d16 e8. fis16 a4. r8 |
  b8. a16 a8. fis16 fis8. e16 d4 | \break
  d8. d16 e8. fis16 a4. r8 |
  cis,8. a16 b8. cis16 fis8. fis16 fis4 | \break
  e8. d16 b8. b16 b4 a8. a16 |
  b2 (b8.) d16 d8. d16 |
  d2. r4 |
  \bar "|." \break
}

text = \lyricmode {
  つ が る の み う ず ま け る お く、
  オ ホ ツ ク の か ん ち~ょ う ほ え て
  た け き な ぞ、 え ぞ が し ま ね に
  と し ふ り し、 け い て き の り~ょ う
  た び れ と な、 い い し、 み と せ を
  よ う ら ん の ゆ め を ー お う な り。
}

drum = \drummode{
  
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


