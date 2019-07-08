\version "2.18.2"

\paper {indent = 0}

\header {
  title = "春来にけらし"
  subtitle = "昭和17年寮歌"
  composer = "杢子一男君 作曲"
  poet = "橋爪秀雄君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key d \major 
  \time 2/4
  \mark "Moderato"
  \set melismaBusyProperties = #'()
  \repeat volta 4 {
    fis8. fis16 b,8. cis16 |
    d8. d16 e4 |
    fis8. fis16 b8. g16 |
    fis4. r8 |
    d8. d16 b8. [(d16)] | \break
    fis8. fis16 g8. fis16 |
    d8. d16 cis8. b16 |
    fis'4. r8 |
    b,8. b16 cis8. cis16 |
    d8. d16 e4 | \break
    fis8. fis16 b8. g16 |
    fis4. r8 |
    b,8. cis16 d8. e16 |
    fis8. fis16 b4 |
    d,8. d16 cis8. cis16 | \break
    b4. r8 |
    fis'4 (b4 |
    cis4.) cis8 ( |
    d4 b4 |
    cis2 ) |
    d4. (d8 | \break
    b4 fis4 |
    cis'2 ~ |
    cis4. ) r8 |
    b8. b16 fis8. fis16 |
    g8. g16 e4 | \break
    d8. d16 cis8. b16 |
    fis'4. r8 |
    }\alternative{{
      d'8. d16 cis8. cis16 |
      b4 fis8. e16 |
      d8. d16 cis8. cis16 | \break
      b4. r8 | }{
      d'8. d16 cis8. cis16 |
      b4 b8. fis16^\markup \italic "rit."  |
      d'8. d16 cis8. cis16 |
      b2 }
  }
  \bar "|." \break
}

text = \lyricmode {
  は る き に け ら し し ら ゆ き の、 あ つ き ー
  こ ろ も や お も か ら ん、 り~ょ う ら の い と も
  ほ こ ろ び て、 ろ う ろ う ふ か き さ つ き や
  み、 ゆ え い、 ゆ ら め く こ こ
  の ね に ー、 よ ぎ り に む せ ぶ
  り~ょ く し~ゅ く み、 こ ぞ り て お ど る に れ の せ
  い な な つ の う み の ち~ょ う お ん よ。
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


