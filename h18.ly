\version "2.18.2"

\paper {indent = 0}

\header {
  title = "ただ一心に"
  subtitle = "平成18年度寮歌"
  composer = "吉田和史君 作曲"
  poet = "岩崎良平君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 120
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \repeat volta 4 {
    r2 r4 r8 g8 \bar "|:."
    e'4 e8 [ f8 ] g4 f8 [ e8 ] |
    d8. [ d16 ] d8 [ e8 ] f4 e8 [ d8 ] |
    c4. d8 e4 f4 | \break
    e2 d4 g,8 [ g8 ] |
    a8. [ a16 ] a8 [ b8 ] c4 b8 [ a8 ] |
    g8. [ g16 ] c8 [ d8 ] e4 f8 [ e8 ] |
    d4. a8 b4 d4 | \break
    c2 r4 c4 |
    a'2 a4 b8. [ a16 ] |
    g2. f8 [ e8 ] |
    d4. a8 b4 d4 | \break
    } \alternative {{
      c2. r8 g8 }{
      c2 r4 c4 |}}
    a'2 a4_\markup \italic "rit." b8. [ b16 ] |
    c2 g4\fermata f8 [ e8 ] | \break
    d4. a8 b4 d4 |
    c1 
  \bar "|." 
}

text = \lyricmode {
  こ ん ぺ き の そ ら を つ ら ぬ く ひ と す じ の く
  も ー む げ ん の お も い わ が む ね に ひ め ひ ろ が れ る み
  ち た だ いっ し ん に し ん じ あ ゆ も
  う 　 う た だ いっ し ん に ー し ん
  じ す す も う
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


