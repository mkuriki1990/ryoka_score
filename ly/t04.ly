\version "2.18.2"

\paper {indent = 0}

\header {
  title = "時轍乾坤に"
  subtitle = "大正4年寮歌"
  composer = "沢田退蔵君 作曲"
  poet = "沢田退蔵君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 72
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \minor 
  \time 4/4 
  \set melismaBusyProperties = #'()
  bes8 d8 f4 f4 f4 |
  bes,8. c16 d8. f16 c4. r8 | \break
  d8 f8 bes4 bes4 bes4 |
  c8. c16 bes8. g16 c4. r8 | \break
  d8. d16 c8. bes16 g8. bes16 f4 |
  g8. f16 d8. f16 c4. r8 | \break
  d8. d16 c8. d16 g8. g16 f4 |
  g8. f16 c8. f16 bes,4. r8 | \bar "|" \time 3/4 \break
  bes8. (d16 f4. f8 |
  d8 f8 bes2) |
  c8. (d16 g,4. bes8 |
  f2.) | \break
  f8. (f16 f4. d8 |
  f8. bes16 d2) |
  bes8. (d16 c4. d8 |
  bes2.) | \break
  
}

text = \lyricmode {
  と き け~ん こ~ん に め ぐ り き て、
  は る だ~い と~う の お ぼ ろ よ い、
  む ら さ き あ わ く か す み こ め、
  じ ち の な が れ は と こ し え に、
  わ か ば の か げ を う か べ つ つ、
  わ れ ら が さ ち を い わ う ら ん。
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


