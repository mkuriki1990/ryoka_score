\version "2.18.2"

\paper {indent = 0}

\header {
  title = "生命萌え出で"
  subtitle = "平成10年度寮歌"
  composer = "長谷川健君 作曲"
  poet = "小日山輝泉君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 90
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key a \major
  \time 4/4
  \set melismaBusyProperties = #'()
  a16 [a8.] b8. [cis16] e16 [e8.] e4 |
  fis16 [fis8.] fis8. [e16] cis16 [cis8.] cis4 | \break
  a16 [a8.] b8. [cis16] e16 [e8.] e4 |
  e16 [e8.] cis8. [b16] a16 [a8.] a4 | \break
  fis'16 [fis8.] fis8. [gis16] a16 [a8.] gis8. [fis16] |
  e16 [e8.] cis8. [a16] b16 [b8.] b4 | \break
  d16 [d8.] cis8. [b16] a16 [a8.] fis4 |
  b16 [b8.] b8. [a16] cis16 [b8.] a4
  \bar "|."
}

text = \lyricmode {
  い の ち も え い で か が や く お か に
  ま し ろ の つ ば さ そ ら た か く ま う
  か り ね の や ど に ー わ が み は あ れ ど
  か ぜ ゆ く さ き に こ こ ろ は か け る
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