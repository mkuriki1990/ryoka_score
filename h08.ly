\version "2.18.2"

\paper {indent = 0}

\header {
  title = "若き力"
  subtitle = "平成8年度寮歌"
  composer = "石井英一君 作曲"
  poet = "長谷川健君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 120
  %\autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major  
  \time 4/4 
  d8. d16 d8. e16 fis8. e16 d4 | 
  a'8. a16 a8. a16 a4 r | 
  d,8. d16 d8. e16 fis8. e16 d8. d16 | \break 
  e8. e16 e8. fis16 e4 fis8. e16 | 
  d4 d e d8. d16 | 
  fis4 a8. a16 b4 a8. g16 | \break
  fis4. d8 e4 d8. cis16 | 
  d8. d16 d8. d16 d4 d8. d16 | 
  b'2~ b8. d16 cis8. b16 | \break
  a2.~ a8. d,16 | 
  fis2 e4. e8 | 
  d2. r4 
  \bar "|."|
}

text = \lyricmode {
  た か な る む ね の ち し お ま く
  あ つ い ソ ウ ル に 　 み を ま か す
  た だ そ の こ_こ ろ を し_ん じ つ つ 
  ど う ど う み ち を ひ ら き ゆ く
  わ れ は た い ざ ん ほ く と の み
}

harmony = \chordmode {
  
}

drum = \drummode{
  bd2 bd |
  bd4 bd bd r |
  bd2 bd |
  bd4 bd bd r |
  bd2 bd |
  bd4 bd bd r |
  bd2 bd |
  bd4 bd bd r |
  bd4 bd16. bd16. bd16. bd16. r4. |
  bd4 bd16. bd16. bd16. bd16. r4. |
  bd2 bd |
  bd4 bd bd r |
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
