\version "2.18.2"

\paper {indent = 0}

\header {
  title = "ああグッと"
  subtitle = "平成15年度寮歌"
  composer = "持田翼君 作曲"
  poet = "井口拓君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 120
  %\autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \time 3/4 
  \tuplet 3/2 {e8[ g g~]} g4~ \tuplet 3/2 {g e8} |
  \tuplet 3/2 {e[ g g~]} g2 | 
  \tuplet 3/2 {a8[ c~ c~]} c4~ \tuplet 3/2 {c8[ c e,]} |
  g2. | \break
  \tuplet 3/2 {a8[ c c]} c4~ \tuplet 3/2 {c a8} |
  \tuplet 3/2 {g[ g g]} e2 | 
  \tuplet 3/2 {d8[ d d~]} d4~ \tuplet 3/2 {d e8} |
  d2. | \break
  \tuplet 3/2 {e8[ g g~]} g4~ \tuplet 3/2 {g e8} |
  \tuplet 3/2 {e[ g g]} g2 | 
  \tuplet 3/2 {a8[ c c~]} c4~ \tuplet 3/2 {c d8} |
  e2. | \break 
  \tuplet 3/2 {d8[ d d~]} d4~ \tuplet 3/2 {d c8} |
  \tuplet 3/2 {b[ b b]} a2 | 
  \tuplet 3/2 {g8 g4~} g \tuplet 3/2 {d e8} |
  c2. \bar "|."|
}

text = \lyricmode {
  も し も う み が ー さ け な ら ば
  お ま え は さ か な に ー な る と い う
  お れ は な ぎ さ の ー か い に な る
  な み が く る た び ー さ け を の む
}

harmony = \chordmode {
  c2. e:m a:m e:m
  a:m e:m d:m g4. g:7
  c2. e:m a:m e:m
  d:m a:m g4. g:7 c2.
}

drum = \drummode{
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



