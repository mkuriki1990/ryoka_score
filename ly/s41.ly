\version "2.18.2"

\paper {indent = 0}

\header {
  title = "いつの日か生命結ばん"
  subtitle = "昭和41年寮歌"
  composer = "吉川正文君 作曲"
  poet = "須藤洋一君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 84
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key a \major
  \time 6/8
  \set melismaBusyProperties = #'()
  cis4 ^\mf cis8 fis4 fis8 |
  gis 4. ~ gis4 r8 |
  a4 gis8 fis4 a8|
  cis4 cis8 cis4 r8 | \break
  cis, 4 cis8 fis4 gis8 |
  a4. ~ a4 r8 |
  cis4 b8 a4 gis8 |
  cis,4 eis8 fis4 r8 | \break
  cis4 ^\mp cis8 cis4 d8 |
  cis4. ~ cis4 r8 |
  fis4 fis8 (d4) fis8 ^\< |
  gis4 gis8 gis4.\! | \break
  a4 ^\f a8 gis4 fis8 ^\< |
  cis'4.\! ~ cis4 r8 |
  d4 ^\ff cis8 ^\> b8 [(a)] gis8 \! |
  fis4 gis8 cis4 r8 | \break
  cis,4 ^\mf cis8 fis4 (gis8) |
  a4. ~ a4 r8 |
  cis4 ^\markup \italic "rit." d8 cis8 [(a)] a16 [(gis16)] |
  cis,4 eis8 fis4.\fermata
  \bar "|."
}

text = \lyricmode {
  い つ の ひ か ー い の ち む す ば ん、
  そ ら た か き ー に れ よ ポ プ ラ よ、
  こ が ね な す ー い ち~ょ う な み き よ、
  か れ が れ と ー の に か ー ぜ ふ け ば、
  こ う り~ょ う の ー お も い ー、 よ ー ぎ り ぬ。
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