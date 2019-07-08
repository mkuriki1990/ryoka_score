\version "2.18.2"

\paper {indent = 0}

\header {
  title = "剣道部部歌"
  subtitle = "平成3年"
  composer = "高田礼人君 作曲"
  poet = "浪岡大介君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 55
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  e8. [ a16 ] c8. [ c16 ] c8. [ c16 ] b4 |
  a8. [ a16 ] f8. [ a16 ] e2 |
  f8. [ a16 ] d8. [ d16 ] d8. [ d16 ] d4 |
  e8. e,16 c'8. [ b16 ] a8 r8 g4 | \break
  c4 c4 d8. [ d16 ] c8. [ d16 ] |
  e8. [ e16 ] e8. [ f16 ] e2 |
  f4 f8. [ f16 ] e4 c8. [ c16 ] |
  d8. [ d16 ] d8. [ dis16 ] e4 f8. [ e16 ] | \break
  a2 g4 f4 |
  e8. [ d16 ] c8. [ d16 ] e8 r8 e4 |
  d4 e8 c4 b4 |
  a2. r4
  \bar "|."
}

text = \lyricmode {
  き~ょ く せ い あ お ぐ ほ く め い に れ っ ぱ く の き あい り ん と し て し~ゅ
  う そう れ つ じ つ き た へ た る せい は の つ ぐ ぎ さ や な れ ば と な
  ん ー の こ ー ん ー や ほ う ー と な る
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


