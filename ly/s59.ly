\version "2.18.2"

\paper {indent = 0}

\header {
  title = "雪の白さに"
  subtitle = "昭和59年寮歌"
  composer = "青木毅君 作曲"
  poet = "濱田和雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 115
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \minor
  \time 4/4
  \set melismaBusyProperties = #'()
  \partial 4
  \repeat volta 4 {
  a8. [a16] |
  d2 r8 f8 e8. [d16] |
  a'2. g8. [a16] |
  bes4~ bes8 a8 g4 f8 [g8] |
  a8.-> [a16->] a8-> [bes8->] a4-> \bar "|" \break
  r4 |
  bes4. bes8 a4 g4 |
  a8 a4 bes8 a4. r8 |
  a4. g8 e4 a4 |
  d,2. \bar"|" \break 
  e8. [e16] |
  e2. f8. [d16] |
  a'2. g8. [a16] |
  bes4~ bes8 a8 g4 f8. [g16] |
  a2. \bar "|" \break
  }
  \alternative {
    {
    g8. [a16] | 
    bes2 r8 d8 c8. [bes16] |
    a2. \tuplet 3/2 { a8 [a8 bes8] } |
    a4. g8 e4 a4 |
    d,2. r4 \bar "|."  \break 
    }
    {
    g8. [a16] \bar"|"
    bes4 r8 d8 c8. [bes16] |
    a2. a8. [bes16] 
    \set Timing.measureLength = #(ly:make-moment 21/16)
    a4. g8 f4. f4 e8 [a16] \bar"|"
    d,2. r4 
    \bar "|."
    }
  }
}

text = \lyricmode {
  ゆ き の し ろ さ に は ゆ る ー わ れ ら が け い て き りょう
  ふ ぶ き さ か ー ま く ひ も あ れ ど
  せ い ぎの み ち を み ー さ ー だ ー め ー て
  ま こ と も と む は か ぜ の お し え な り
  じ り つ め ざ す は い の ち の お し え な り
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