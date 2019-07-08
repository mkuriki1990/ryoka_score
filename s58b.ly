\version "2.18.2"

\paper {indent = 0}

\header {
  title = "北に恵めし"
  subtitle = "昭和58年新寮記念寮歌"
  composer = "竹中秀文君 作曲"
  poet = "大崎益孝君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4. = 40
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key f \major 
  \time 6/8 
  \partial 8 c8 | 
  a'4. a4 f8 | 
  g4 f8 d4 c8 | 
  d4 f8 g[ g a] | 
  c,4.~ c4 c8 | \break
  d4 e8 f4 g8 | 
  a4. c4 c,8 |
  d4( f8) f4 g8 | 
  f4.~ f4 a8 | \break
  d4 d8 d4 e8 | 
  f4. c4 a8 | 
  bes4 a8 g[ g a] | 
  c4.~ c4 a16[ g] | \break
  f4. f4 f8 | 
  d4. f4 bes8 | 
  a4( g8) f4 e8 | 
  d4.( c4) c8 | \break
  a'4 a8 a4 f8 | 
  g4( f8) d4 c8 | 
  d8 d f g4 a8 | 
  c4.~c4 c,8 | \break
  d4 e8 f4 d8 | 
  c4. a'4 a8 | 
  d,4. e4 g8 | 
  f4.~f4 r8 \bar "|." | 
}

text = \lyricmode {
  き | 
  た に も | 
  と め し わ | 
  か き ひ_の_ゆ | 
  め い | 
  つ か は こ | 
  わ れ ゆ | 
  く_ー も の | 
  か す | 
  が し き あ | 
  さ の ひ | 
  か り と_か_ぜ | 
  は げ_ん | 
  し の も | 
  り に き | 
  え_ー さ り | 
  ぬ い | 
  ま こ そ わ | 
  れ_ー も た | 
  び だ ち の と | 
  き こ | 
  こ ろ の や | 
  ど よ い | 
  ざ さ ら | 
  ば
}

harmony = \chordmode {
  r8 f2. g1:m d4.:m g8:m c2. 
  d4.:m g:m f2. d4.:m g:m f2. 
  d:m f bes4. g4.:m c2.
  f d2.:m~ d4.:m g4.:m7 d:m c
  f2. g:m d4.:m g:m c2.
  d:m c bes4. c f2.
}


\score {
  <<
    % ギターコード
    \new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}{
      \set chordChanges = ##t
      \harmony
    }
    
    % メロディーライン
    \new Voice = "one"{\melody}
    % 歌詞
    \new Lyrics \lyricsto "one" \text
    % 太鼓
    %\new DrumStaff \with{
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

#(set-global-staff-size 20)
