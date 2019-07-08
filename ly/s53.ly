\version "2.18.2"

\paper {indent = 0}

\header {
  title = "恵迪節"
  subtitle = "昭和53年寮歌"
  composer = "甲斐陽輔君 作曲"
  poet = "甲斐陽輔君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 104
  \autoBeamOn
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key f \major 
  \time 4/4 
  d'4. a8 a r a r | 
  b[ a] a4 bes8[ a] a4 \bar "||" | \break
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \bar ".|:" d,8 d d c d d f g | 
  a a g g a4.( c8) | 
  a a g g a4. r8 | \break
  r d4 c8 a g f4 | 
  g8 a8 f2~ f8 r | 
  \time 3/4 
  g a f4 e | 
  \time 4/4
  d2. r4 | \break
  \autoBeamOn
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  e8[ e] e r e[ e] e r \bar "||" | 
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  d8 d d c d d f g | 
  a a g g a4.( c8) | \break
  d c a g a4. r8 | 
  r4 d8([ c]) a4 g~ | 
  g8 r a g f4 d | 
  \time 3/4
  r f8 f~ f e | 
  \time 2/4
  d c a c | 
  \time 4/4
  r4 d8 c a4 c | 
  d2. r4 | 
  \autoBeamOn
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  f8 d d r f d d r | 
 \bar "|." | 
}

text = \lyricmode {
  エ~イ ホ ホッ ホッ
  エ~イ ホッ ホ エ~イ ホッ ホ
  け む り を ふ き だ す
  う す の や ま う す の や ま
  ち を や ぶ る つ ち の ち か ら こ ぶ
  エ~イ ホッ ホ エ~イ ホッ ホ
  だ い ち の ぬ ー し の お お あ ば れ お お あ ば れ
  い_の ち が お し け りゃ
  ぢ べ_た に ひ れ ふ せ お ろ か も の
  エ~イ ホッ ホ エ~イ ホッ ホ
}

harmony = \chordmode {
}

drum = \drummode{
  r1 r1 
  bd8 bd bd bd bd bd bd bd | 
  bd bd bd bd bd bd bd bd | 
  bd bd bd bd bd bd bd bd | 
  bd bd bd bd bd bd bd bd | 
  bd bd bd bd bd bd bd bd | 
  bd bd bd bd bd bd | 
  bd bd bd bd bd bd bd bd | 
  bd bd bd bd bd bd bd bd | 
  bd bd bd bd bd bd bd bd |
  bd bd bd bd bd bd bd bd |
  bd bd bd bd bd bd bd bd |
  bd bd bd bd bd bd bd bd |
  bd bd bd bd bd bd bd bd |
  bd bd bd bd bd bd |
  bd bd bd bd |
  bd4 r2. |
  bd8 bd bd bd bd bd bd bd |
  bd bd bd bd bd bd bd bd |
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
     \new DrumStaff \with{
      \remove "Time_signature_engraver"
      drumStyleTable = #percussion-style
      \override StaffSymbol.line-count = #1
      \hide Stem
    }
    \drum
  >>
  
\midi {}
\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

}
