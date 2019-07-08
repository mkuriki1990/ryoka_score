\version "2.18.2"

\paper {indent = 0}

\header {
  title = "医学部学友会歌"
  subtitle = "昭和14年"
  composer = "森鼻正美君 作曲"
  poet = "大槻均君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 88
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 3/4
  \set melismaBusyProperties = #'()
  \mark \markup "Moderato"
  \partial 4 d8. ^\mp ( d16 |
  fis8 g a4 b8. ^\markup \italic "poco" a16 ^\markup \italic "a" |
  a4. ^\markup \italic "poco" a8 ^\markup \italic "cresc." b cis | \break
  d2 ) cis8 ( b |
  a d fis,4 ) g8. ^( fis16 |
  e4. e8 fis g | \break
  a2 ) a8. ^\mf ( a16 |
  b4. a8 b cis |
  d4. ) r8 d ^\f ( d \bar "||" \time 4/4 \break
  e4. d8 cis4 ) b8. ( b16 |
  a4. a8 d4 fis, |
  a2 ) r4 b8 ( b | \break
  a4 a a ) a8. ( a16 |
  fis4 a e' e |
  d2 ) r4 d8 ^\mf ( cis8 | \break
  b8 ^\markup \italic "cresc." b b b a4 ) a8. ( b16 |
  a4. a8 a4 e'4 |
  d2. ) r4
  \mark \markup { \musicglyph #"scripts.ufermata" }
  \bar "|."
}

text = \lyricmode {
  き た ぐ に の き よ き み や こ
  に、 つ た え た る た か き お し え
  を、 し た い き た り ぬ、 あ お
  が ず や、 ぜ ん じ ん の あ と、 ひ ら
  き て ん、 み と う の さ か い、 そ の
  え い こ う に、 か が や く わ れ ら。
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


