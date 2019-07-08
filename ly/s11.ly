\version "2.18.2"

\paper {indent = 0}

\header {
  title = "嗚呼茫々の"
  subtitle = "昭和11年寮歌"
  composer = "村岡五郎君 作曲"
  poet = "宍戸昌夫君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \minor 
  \time 3/4 
  \partial 4
  \mark "Valse lento"
  \set melismaBusyProperties = #'()
  bes8 (bes8) |
  g'2 ~g4 |
  g2 g4 |
  g2 aes8^- [(bes8^-)] |
  aes2 (g4) |
  f2. ~ | \break
  f2  bes,4 |
  aes'2 aes4 |
  aes4 aes2 |
  aes2 bes8 (c8) |
  bes2 aes4 |
  g2. ~ | \break
  g2  ees4 |
  c'2^\markup \italic (stent) ~ c4 |
  c2 ~ c4 |
  c2 d8 ees8 ( |
  d2 d4 |
  c2 ) c4 | \break
  c2~ c4 |
  c2 aes8 (g8) |
  bes2. ~ |
  bes2 bes8 ( bes8 |
  bes2. |
  aes2 aes8 aes8 | \break
  f2. ~ |
  f2 ) f8 ^( aes8 |
  c,2. |
  d2. |
  ees2. ~ |
  ees2 ) bes4 | \break
  bes'4.^\markup \italic "(a tempo)" bes8 bes4 |
  bes4. bes8 bes4 |
  bes8 [(aes8)] c2 |
  f,2 f4 |
  f2 r4 | \break
  bes,8 ^(c8 d4 ees4 |
  f4 g4 aes4 ) |
  f8 \( ees8 d4 bes'4 |
  bes2 ~ bes8 \) aes8 ^( |
  g2. ~ |
  g2 ) |
  \bar "|." \break
}

text = \lyricmode {
  あ あ、 ぼ~う ー ぼ~う の だ い ー こ う や
  ー、 せ~ん じ~ん こ こ に、 く さ ー ぎ り て
  ー、 た て ー し ー じ ゆ う ー ー と じ
  ち ー の し ー ろ ー、 そ の み な も と
  は ー と お く し て ー、 だ
  く せ い し~っ た す、 む ー そ と せ の、
  こ け む す せ い し、 ほ こ り ー ー ー な ん ー。
}

drum = \drummode{
  
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


