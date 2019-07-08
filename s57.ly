\version "2.18.2"

\paper {indent = 0}

\header {
  title = "東雲はるか"
  subtitle = "昭和57年寮歌"
  composer = "栗田成裕君 作曲"
  poet = "青木崇君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key f \major  
  \time 4/4 
  c8. c16 c8 d c a c4 | 
  f8. f16 d8 d c4 r | 
  c8. c16 f8 g a a f4 | 
  g8. g16 d8 d f4 r | \break
  d8. cis16 d8 e f f d4 | 
  c8. f16 f8 g a4 r | 
  a f8 f bes bes a a | 
  a g a b c4 r | \break
  c,4. c8 f4 g | 
  a a f2 | 
  d4. f8 g4 a8( g) | 
  f2. r4 | 
  \bar "|."|
}

text = \lyricmode {
  し の の め は る か い きょ う の ち
  りょ う う ん の ゆ め は せ め ぐ る
  ま こ と の み ち は け わ し く も 
  と も よ ち か ら を い つ に せ ん 
  あ つ き ち し お は さ め や らー ず 
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
  bd2 bd |
  bd4 bd bd r |
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
