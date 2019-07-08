\version "2.18.2"

\paper {indent = 0}

\header {
  title = "あますなく拓きゆく道"
  subtitle = "昭和17年大東亜戦争頌歌"
  composer = "池田政晴君 作曲"
  poet = "切替辰哉君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \minor
  \time 4/4
  \slurUp
  \set melismaBusyProperties = #'()
  f4. (g8 f4 d8. [ees16] |
  f2.) g8. (a16 |
  bes4. bes8 a4 g4 |
  f2.) g4 \( | \break
  g4. (ees'8) ees4 c4 |
  a2.\) bes8. (bes16 |
  a4. g8 d4 e4 |
  f2.) f4 ( | \break
  g2 g4 g4 |
  f2. ) f8. (f16 |
  bes4. bes8 a4 bes4 |
  c2.) f,4 ( | \break
  bes2 bes4 c4 ) |
  d2. g,4 \( |
  ees'4. d8 g,4 a4 | 
  bes2 ( bes4 )\) d,4 ( | \break
  f4. f8 f4 a4 |
  g2 f4 ) d8.^> [_(ees16^>)]
  f4 _(g4) a4 bes4 |
  c2. f,4 | \break
  bes2 bes4 c4 |
  d2. g,4 |
  c2 c4 d4 |
  ees2. f4 | \break
  d4. c8 bes4 a4 |
  g2 f4 f4 |
  c'4. c8 c4 c4 |
  \grace { bes4 } bes2. \grace { bes2 } r4 |  
  \bar "|." \break
}

text = \lyricmode {
  あ ま す な ー く ひ ら き ゆ く み ち、 あ
  ま ー ぐ も の む か ぶ す、 き わ み、 ち
  の は て ゆ ゆ か ん、 み た て と、 み
  こ と も ち わ れ ら ひ の ぞ う、 み
  な も と の ご と わ ー き ー た た ん、 ほ
  こ ら か に も ろ ご え に ち
  ち お な が さ ん ち し お な が さ~ん。
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


