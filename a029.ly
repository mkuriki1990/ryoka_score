\version "2.18.2"

\paper {indent = 0}

\header {
  title = "ヨットマンの歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c''{
  \tempo 4 = 100
  \autoBeamOff
  \numericTimeSignature
  \key d \minor
  \time 4/4
  \set melismaBusyProperties = #'()
  r8. a16 [ a8. f16 ] a8. [ f32 e32 d8. ] e16 |
  f8.  [a16 ] e8.  [ f16 ] d4 r4 |
  r8. a16 [ d8. e16 ] f8. [ f16 ] e8. [ f16 ] | \break
  a8.  [a16 ] f8. [ bes16 ] a4 bes8. ([ a16 ]) |
  d4. ~ d16 e16 [ d8. d16 ] d8. [ bes16 ] |
  a8. [ a16 ] a8. [ bes16 ] a4 d,8. ([ e16 ]) | \break
  f4. ~ f16 e16 f8. [ a16 ] a8. [ bes16 ] |
  a8. [ f16 ] f8. [ e16 ] d4. r8 |
  
  \bar "|."
}

text = \lyricmode {
  こ し の シー ナ イ フ に す が り つ き、 つ い て ゆ き ま す
  ど こ ま で も、 つ ー い 　 て ゆ く の は や す け れ ど、 お ー 
  ん 　 な、 の せ な い さ ん ご う て~い。
}

harmony = \chordmode {
}

\score {
  <<
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


