\version "2.18.2"

\paper {indent = 0}

\header {
  title = "草は萠え出で"
  subtitle = "昭和53年第70回記念祭歌"
  composer = "田坂幸平君 作曲"
  poet = "朝倉仁樹君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 120
  %\autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \major  
  \time 4/4 
  g'8.[ g16] g8[ b] d4 b8[ g] |
  fis8.[ fis16] fis8[ b] d4 fis,8[ fis] |
  e4. fis8 g4 fis8[ g] |
  a8.[ a16] a8[ b] a4. r8 | \break
  g8.[ g16] g8[ b] d8.[ d16] b8[ g] | 
  fis8.[ fis16] fis8[ b] d4 fis,8[ fis] |
  e4. fis8 g4 fis8[ g] |
  a8.[ a16] a8[ a] g4 g8.[ g16] | \break
  e'2 c4 d8. e16 |
  d2 b |
  r4 c8[ b] a4 b8[ c] |
  d1 | \break
  e4. fis8 g4 e |
  d4. d8 b2 |
  a4. a8 a4 b |
  g2.~ g8 r \bar "|."|
}

text = \lyricmode {
  く さ は も え い で | 
  と り は な き あ こ | 
  が れ む つ ぶ | 
  や ど り や に | 
  し っ ぷ う ど と う の | 
  う ず の な か あ か | 
  り も と め て | 
  さ ま よ い ぬ ち ま | 
  た の ち ー | 
  り を
  ふ り は ら ー | 
  い | 
  ゆ う ゆ う | 
  み ち を | 
  あ ゆ ま な | 
  ん ー |
}

harmony = \chordmode {
  g1 b:m e:m d2 d:7
  g1 b:m e:m d2 g
  c1 g a2:m d g g:7
  c1 g a2:m d g1
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
  bd2 bd |
  bd4 bd bd r |
  bd2 bd |
  bd4 bd bd r |
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
