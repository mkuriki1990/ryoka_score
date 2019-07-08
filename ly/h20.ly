\version "2.18.2"

\paper {indent = 0}

\header {
  title = "星の舟唄"
  subtitle = "平成20年度寮歌"
  composer = "黒瀬智子君 作曲"
  poet = "黒瀬智子君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 120
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 12/8 
  a4 d8 d4 e8 fis[ a fis] e[ fis e] | 
  d4 e8 fis4 a8 b[ a a] a4 r8 | \break
  a,4 d8 d4 e8 fis[ a fis] e[ fis e] | 
  d4 e8 d[ d e] fis4 d8 e4 r8 | \break
  fis b4 a fis8 fis b4 a fis8 | 
  fis d'4 b a8 fis[ fis e] e4 r8 | \break
  a,4 d8 d4 e8 fis[ a b] a[ fis e] | 
  d e4 a,8[ e' d] d4.~ d4 r8 | 
}

text = \lyricmode {
  ゆ き ど け さ_つ_き ば_れ_み | 
  じ か い な つ_の_ひ び | 
  こ が ね の い_ちょ_う な_み_き | 
  く ぐ れ_ば_こ が ら し | 
  あ し た も お な じ ゆ | 
  う ひ が し ず_む_だ ろう | 
  せ い しゅん は た_い_く つ_だ_と | 
  た れ か_う_た う
}

harmony = \chordmode {
  
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

