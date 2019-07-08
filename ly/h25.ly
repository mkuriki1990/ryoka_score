\version "2.18.2"

\paper {indent = 0}

\header {
  title = "北溟の我らぞ"
  subtitle = "平成25年新々寮30周年記念寮歌"
  composer = "菊池玄之介君 作曲"
  poet = "森貝聡恵君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key b \major
  \mark \markup "Adagio"
  \time 6/8
  \set melismaBusyProperties = #'()
  dis4 dis8 cis4 dis8 |
  e4 e8 dis4 cis8 |
  b4 b8 ais8 [ais8 gis8] |
  dis'2 r4 |
  dis4 dis8 cis4 dis8 |
  e4 gis8 gis4 ais,8 | \break
  b4 b8 ais8 [ais8 ais8] |
  gis2 r4 |
  dis'4. gis4 ais8 |
  b4. ais4 (gis8) |
  ais4. ais4. |
  dis,2 r4 |
  dis2~ dis8 [gis8] |
  b4. ais4 (gis8) | \break
  ais2. ~ |
  ais2 r4 |
  gis2 gis4 |
  dis4. b4. |
  dis4. cis4 b8 |
  dis2 r4 |
  dis2 ~ dis8 [gis8] |
  b4. ais4 (gis8) |
  ais4. ais4. |
  dis,2 r4 | \break
  cis2 ~ cis8 [dis8] |
  e4. cis4. |
  b2. |
  ais4. ais4. |
  gis2. ~ |
  gis2 r4   
  \bar "|."
}

text = \lyricmode {
  き み な ぜ き た る こ の き た の ち に か の し の お し え う
  け つ ぎ し ち に とう と き お も 　 い ゆ め わ 　 す る ま 　 
  じ 　 ひ た と け だ か 　 く い 　 ざ ふ み 　 だ さ む 
  あ 　 ら た な る ゆ め へ
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


