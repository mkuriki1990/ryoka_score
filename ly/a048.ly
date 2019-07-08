\version "2.18.2"

\paper {indent = 0}

\header {
  title = "医専逍遥歌"
  subtitle = "昭和14年7月"
  composer = "向井弘君 作曲"
  poet = "谷本恒一郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 66
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \mark \markup \small "荘重に"
  fis8. g16 fis8. g16 fis8. d16 b8. cis16 |
  d8. cis16 b8. d16 fis4. r8 | \break
  b8. b16 g8. fis16 b8. ~[ b16 ] cis8.  cis16 |
  d8. d16 b8. d16 cis4. r8 | \break
  b8. cis16 d8. d16 b8. ~[ b16 ] g8. fis16 |
  d8. cis16 b8. d16 cis4. r8 | \break
  b8. b16 b'8. b16 g8. ~[ g16 ] fis8. fis16 |
  b8. b16 b8. b16 cis4. r8 | \break
  d8. d16 d8. d16 d8. ~[ d16 ] b8. cis16 \fermata |
  d8. d16 cis8. cis16 b4. r8
  \bar "|."
}

text = \lyricmode {
  エ ル ム の こ ず え に か げ さ し て、
  こ ゝ ほ く め ー い の て ん ち に も、
  お か の ま き ー ば に も え い で し、
  い の ち の  む ー れ を お も う と き、
  ら ん ま ん か ー お る は な の い ろ。
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


