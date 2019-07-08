\version "2.18.2"

\paper {indent = 0}

\header {
  title = "不香の花ぞ"
  subtitle = "平成29年度寮歌"
  composer = "佐藤亮君 作曲"
  poet = "冠花君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 116 - 120
  \autoBeamOn
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  c8. [ c16 ] d8. [ d16 ] f8. [ g16 ] a4 |
  c8. [ c16 ] f8. [ d16 ] c4 r4 |
  c8. [ c16 ] f8. [ d16 ] c4 a8. [ f16 ] |
  g8. [ c16 ] g8. [ c16 ] f,4 c4 \bar "||" \break
  \key f \major
  f4. f8 f4 d4 |
  d2 c4 c4 |
  bes2 bes4 d4 |
  c2. c4 \break | \break
  d4. d8 d4 e8. [ e16 ] |
  f2 c4 a4 |
  bes2 a4 g4 |
  f2. r4 \break | \break
  g'8. [ g16 ] c,8 [ c8 ] g'4 bes8 [ bes8 ] |
  a8. [ a16 ] a8 [ d8 ] c4 r4 |
  b4 b8 [ b8 ] b8. [ b16 ] d8 [ d8 ] |
  c8. [ c16 ] c8 [ d8 ] e4 c4 | \break
  f2 c4 a4 |
  d4. d8 c4 a4 |
  bes2 a4 g4 |
  f2. r4 
  \bar "|."
}


text = \lyricmode {
  ふ きょ う の は な ぞ や わ ら か に
  れ い ま い あ そ ぶ せ ん さ い の
  じゅ か ん に か お る ゆ き げ む り 
  し ろ た え ほ こ ろ ぶ
  さ お と お り そ ら う る わ し き き た の さ ち
  う き よ さ か な に ふ け る こ ら
  こ た ん の び に も お も わ ず や
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
    % \drum\paper{
  
  >>
  
  \midi {}
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }

}


