\version "2.18.2"

\paper {indent = 0}

\header {
  title = "甦えれ白き辛夷よ"
  subtitle = "昭和36年寮歌"
  composer = "脇地炯君 作曲"
  poet = "小川徳人君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 60
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 3/4
  \slurUp
  \set melismaBusyProperties = #'()
  \partial 4 g8^\mp ^"Adagio sostenuto" ( g8 |
  c4 c4. e8 |
  g8 e8 c8 a8 c8 d8 |
  d2) g,8 (g8 | \break
  c8 c8 c4. e8 |
  g8 e8 c8 a8 d4 |
  c2) c8^\mf (c8 |
  a'8 a8 a4. a8 | \break
  f8 a8 a8 a8 a4 |
  g2) c,4 ( |
  a'8 a8 a4. a8 |
  c8 b8 a8 g8 g4 | \break
  e2 ) c4 ( |
  f4. a8 c8 f8 |
  f4. d8^\> c8 g8 |
  e4.\! g8 g4 | \break
  b2 ) g8^\mf ( g8 |
  g8 g8 c4. e8 |
  c8 g8^\> e8 g8\! g4 |
  d2 ) g,8^\mp ( g8 | \break
  c8 c8 c4. b8 |
  c8 d8 e8 c8 a'4 |
  g4 e8 g8 c8 g8 |
  e8 d8 c4) g4 ( | \break
  c4 c8 d8 e8 f8 |
  a2. ) |
  g8 ( e8 c8 a8 d8 d8 |
  c2 )
  \bar "|."
}

text = \lyricmode {
  よ み が え て し ろ き こ ぶ し よ、 と い
  き な す、 く る し み の ひ も、 せ き ば く の、 ま
  ど ろ み も さ り、 オ~ホー ツ ク の み ず や わ ら ぎ
  て、 りゅ~う ひ~ょ う の む れ、 き し め る く に
  に、 さ ま よ い の い つ き し を し る、 く ち
  は ぬ き、 あ た ま も た げ し わ か き い ぶ き は、 わ
  が わ か き ひ の、 こ ん め い を か く。
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
