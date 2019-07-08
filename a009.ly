\version "2.18.2"

\paper {indent = 0}

\header {
  title = "Bye-Bye!"
  subtitle = ""
  composer = "水野渉君 作曲"
  poet = "水野渉君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 120
  %\autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4 
  % 3 repeat
  r1 | 
  r | 
  % 3 repeat
  r1 | 
  r | 
  r1 | 
  r | 
  % end repeat
  r | 
  r |
  \time 5/4 
  e4 g~ g4.. g16 a8. g16 | 
  \time 15/16 
  a8 c~ c4.. c16 d8 c16 |
  \time 4/4 
  e4 e d8 c4 a8~ |
  a2 a8. c16 a c d8~ | \break
  \time 6/8 
  d4. e8( e d) | 
  \time 4/4 
  d1 | 
  \time 4/4 
  a8. c16 a8. c16 b8. c16 d8 c~ | 
  c1 \bar "|."|
  %g'8.[ g16] g8[ b] d4 b8[ g] |
  %fis8.[ fis16] fis8[ b] d4 fis,8[ fis] |
  %e4. fis8 g4 fis8[ g] |
  %a8.[ a16] a8[ b] a4. r8 | \break
  %g8.[ g16] g8[ b] d8.[ d16] b8[ g] | 
  %fis8.[ fis16] fis8[ b] d4 fis,8[ fis] |
  %e4. fis8 g4 fis8[ g] |
  %a8.[ a16] a8[ a] g4 g8.[ g16] | \break
  %e'2 c4 d8. e16 |
  %d2 b |
  %r4 c8[ b] a4 b8[ c] |
  %d1 | \break
  %e4. fis8 g4 e |
  %d4. d8 b2 |
  %a4. a8 a4 b |
  %g2.~ g8 r \bar "|."|
}

text = \lyricmode {
  バイ バ~イ だ か ら 
  バイ バ~イ きょ う よ さ よ う な ら
  も う に ど と こない 
  　 きょ う ーー の ひ に バイ バ~イ
}

harmony = \chordmode {
  % 3 repeat
  c2 e:m 
  a:m e4:m a:m 
  % 3 repeat
  c2 e:m 
  a:m e4:m a:m 
  c2 e:m 
  a:m e4:m a:m 
  % end repeat
  c2 e:m 
  a2:m a:m
  c1~ c4 a2:m~ a4.:m~ a16:m c1 a:m
  d2:m~ d4:m~ d1:m f2 g4:7~ g8:7 c1
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
