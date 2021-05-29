\version "2.18.2"

\paper {indent = 0}

\header {
  title = "鴉翼の影"
  subtitle = "令和2年度寮歌"
  composer = "君 作曲"
  poet = "君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4. = 160
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major
  \override Staff.TimeSignature.stencil = ##f % 拍子の非表示設定
  \time 3/8
  b4 b8 |
  \revert Staff.TimeSignature.stencil % 拍子の表示設定リセット
  \time 9/8
  \repeat volta 3 {
    e4. ~e4 dis8 e4 fis8 |
    g2. b4 b8 |
    b4. ~b4 a8 b4 c8
    b2. b4 a8 |
    g4. ~g4 g8 fis4 e8 | \break
    fis2. e4. |
    e4. ~e4 a,8 b4 c8 |
    b4. r4. b4. |
    e4. ~e4 dis8 e4 fis8 |
    g2. b4 b8 |
    b4. ~b4 a8 b4 c8 | \break
    b2. e4 d8 |
    c2. b4 a8 |
    b2. g4. |
    fis4. ~fis4 e8 fis4 g8 |
    fis2.  g4  fis8 | \break
    e4. ~e4 e8 c4 b8 |
    e4. r4. b4 b8 |
    e4. ~e4 dis8 e4 fis8 |
  }
  \alternative{
    {
      e4. r4.  b4  b8
    }
    {
      e2. r4.
    }
  }
  \bar "|."
}


text = \lyricmode {
  く も いー の そ ら に
  こ く ぎ_ー ん の は ね りっ か の_ー
  み ど ー り う す ー れ ゆ き に
  じゅ ー の ー ま ほ く め_ー い の
  ち を む し ば み ー て
  か ら ー す ー は な に
  を_ー か な か ん
  な に を_ー か な か ん
  そ ら らん
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


