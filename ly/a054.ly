\version "2.18.2"

\paper {indent = 0}

\header {
  title = "水産放浪歌"
  subtitle = ""
  composer = ""
  poet = ""
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 64
  %\autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key ees \major 
  \time 4/4 
  \partial 4 g'8. g16 | 
  g2. aes8. g16 | 
  g2 g4 c,8. d16 | 
  ees2 f4 ees8. c16 | \break
  d2. g8. g16 | 
  aes2 g4 c8. c16 | 
  d4..( c16) aes4 f8. f16 | 
  g2 g4 ees8. d16 | \break
  c2. d8. d16 | 
  d2. ees8. d16 | 
  c4..( d16) ees4 f8. g16 | 
  aes2 bes4 aes8. f16 | \break 
  g2. aes8. g16 | 
  c2. d8. c16 | 
  aes2 g4 c,8. d16 | 
  ees2 f4 ees8. d16 | \break
  c2 r4 
  \bar "|." 
}

text = \lyricmode {
  こ こ ろ た け く も お に が み な ら ず 
  お と こ と う ま れー て な さ け は あ れ ど 
  は は を み す てー て な み こ え て ゆ く 
  と も よ け い ら よ い つ ま た あ わ ん
}

drum = \drummode{
  r4 | 
  bd1 r r r 
  bd1 r r r 
  bd1 r r r | 
  bd4 bd16. bd bd bd r4. | 
  bd4 bd16. bd bd bd r4. | 
  bd1 bd
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


