\version "2.18.2"

\paper {indent = 0}

\header {
  title = "昭和5年応援歌"
  subtitle = ""
  composer = "長谷川誠君 作曲"
  poet = "須田政美君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \slurUp
  c8. e16 g8. g16 g8. g16 g4 |
  e8. g16 c8. c16 c8. d16 c4 \fermata \bar "||" \time 3/4 \break
  a8. \( a16 c4. c8 |
  c8. d16 c4. ( a8 )\) |
  g8. ( g16 e4. ) c8 ( | \break
  e8. d16 c2 ) |
  g'8. ( g16 c4. a8 |
  g8. e16 g2 ) | \break
  c,8. ( d16 e4. e8 |
  e8. d16 g2 ) \bar "||" \time 4/4 g4 \( c2 g4 | \break
  a8. g16 e4. _( d8 ) c4 \) \bar "||" \time 5/4 c8. c16 c'8. c16 c8. d16 e2 \bar "||" \time 3/4 \break
  e,8. ( e16 g4 g4 |
  a8. g16 c4 c4 ) |
  c,8. ( d16 e4. ) d8 ( |
  g8. e16 c2 ) 
  \bar "|."
}

text = \lyricmode {
  た い ほ う め ぐ る ほ っ か い の そ ら
  わ れ ひ と す じ の ー お も い、
  は ぐ く む、 み よ さ ん ら ん の
  よ う こ う も え て、 ふ よ う
  ば ん り ー の か ぜ ま き お こ る、
  て ん が い は る か に つ ば さ、 ひ ろ げ ん。
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


