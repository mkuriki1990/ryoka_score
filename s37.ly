\version "2.18.2"

\paper {indent = 0}

\header {
  title = "壁歌は語る"
  subtitle = "昭和37年寮歌"
  composer = "助川秀三郎君 作曲"
  poet = "執行洋視君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 2/4
  \set melismaBusyProperties = #'()
  a8. ^"ゆっくりと" a16 b8. a16 |
  d8. e16 fis4 |
  b8. d16 \tuplet 3/2 {b8 [(a8)] fis8 } |
  a4. r8 | \break
  b8. b16 b8. a16 |
  d,8. e16 fis4 |
  e8. fis16 d8. b16 |
  d4. r8 | \break
  e4 e8. e16 |
  d8. e16 fis8. fis16 |
  b8. a16 fis8. fis16 |
  a4. r8 | \break
  b4 b8. a16 |
  fis8. (a16) a8. a16 |
  b8. a16 fis8. e16 |
  d4. r8 | \bar "||" \time 4/4 \break
  a4. ^\( a8 b8. a16 d8. [(e16)] |
  fis4. (b8) a2 \) | \break
  fis4. ^( e8 d8. b16 a8. e'16 |
  d2. ) r4 | 
  \bar "|."
}

text = \lyricmode {
  へ き か は か た る い く せ ー い そ~う、
  あ つ ま り さ ん ず わ こ う ど が、
  よ よ に の っ た る、 く の う の き、
  ひ び に の っ た る、 か ん き の き、
  あ あ、 そ の い ー き ー は、
  と わ に さ か え ん。
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