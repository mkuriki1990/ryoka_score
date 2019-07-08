\version "2.18.2"

\paper {indent = 0}

\header {
  title = "爪紅の黎明の風"
  subtitle = "大正15年開学50周年記念寮歌"
  composer = "河口忠雄君 作曲"
  poet = "井上哲郎君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 2/4
  \set melismaBusyProperties = #'()
  d8. cis16 d8. e16 |
  fis4 a8. b16 |
  a8. d16 b8. cis16 |
  a4. r8 | \break
  d4 e8. d16 |
  cis8. cis16 b8. a16 |
  fis8. d16 e8. fis16 |
  e4. r8 | \break
  fis8 fis8 fis8 fis8 |
  e4 fis8 g8 |
  a4 b8 d8 |
  a4 fis4 | \break
  d'4 d8. d16 |
  d8. d16 d8. d16 |
  cis8. cis16 b8. a16 |
  b4. r8 | \break
  d8. d16 e8. d16 |
   cis4 fis,8 fis8 |
   a8. fis16 e8. gis16 |
   a4. r8 | \break
   a8. [(b16)] a8. fis16 |
   d'8. e16 d8. b16 |
   a8. fis'16 e8. cis16 |
   d4. r8 |
  \bar "|." \break  
  
}

text = \lyricmode {
  つ ま く れ な い の あ け の か ぜ、
  し ら は よ ろ え る わ か む し~ゃ が、
  は る う ち し た う な さ け あ り、
  あ か き ち し お の あ ふ れ て は、
  ほ く め い の、 し ろ、 は な も ち る、
  に ー お う は た ち を お し む か な。
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


