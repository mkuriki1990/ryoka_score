\version "2.18.2"

\paper {indent = 0}

\header {
  title = "悠遠き日にあこがれて"
  subtitle = "昭和25年寮歌"
  composer = "金井倶光君 作曲"
  poet = "高倉和昭君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor 
  \time 4/4
  \set melismaBusyProperties = #'()
  \partial 2 \partial 4 bes4^\markup "Adagio" ^\mp ( |
  c2 g'4 bes4 |
  c2. ) bes4 \( |
  g4. (c,8) d4 c4 |
  bes2. \) c8 (d8 | \break
  g4. f8 ees4 d'4 |
  c2.) bes8 ^\( [(aes8)] |
  c,2 g'4 f4 |
  f2.\) f8 ^\(g8 |
  c,4 bes4 bes8 [(f'8)] ees8 [(c8)] | \break
  ees2.\) d8 ^\(([ees8]) |
  f4.  ( g8 ) aes4 aes4 |
  g2.\) g8 (g8 |
  g4. aes8 c4 c8. [d16] | \break
  c2.) c4 \( |
  d4. (c8) aes4 f4 |
  d2. \) aes'8 ^( aes8 |
  g4. f8 ees4 d4 |
  c2. ) r4 \bar "|." \break
  g'8. ^\markup "Andante" ^\f g16 c8.c16 g2 |
  f8.f16 aes8. aes16 g4 f8. f16 |
  d8. d16 ees8. ees16 d2 | \break
  g8. g16 ees'8. ees16 ees2 |
  c8. c16 g8. f16 ees8. ees16 c4 \mark \markup { \musicglyph #"scripts.ufermata" } |
  \bar "|." 
}

text = \lyricmode {
  と お き ひ に あ こ ー が れ て、 わ れ
  は き た り ぬ、 き ー た ぐ に の、 う た の み や ー こ ー
  ぞ、 や ー わ ー ら か き、 み ど り の し ば ー
  ふ、 う る ー わ し き お が わ の ほ と り。
  せ い め い の も り か げ ふ か く た ず ね き て、
  あ た ら し き よ ろ こ び に み つ。
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

