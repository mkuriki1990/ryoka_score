\version "2.18.2"

\paper {indent = 0}

\header {
  title = "花咲き散りて"
  subtitle = "昭和32年第50回記念祭歌"
  composer = "小椋進君 作曲"
  poet = "佐伯政英君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 92
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major
  \time 4/4
  \set melismaBusyProperties = #'()
  \partial 2 \partial4 g4 ^\mp ^\markup "快活に元気をもって" |
  c4.  ^( c8 c4 ^\< e8. f16 \! |
  g2. ) d8. ^\([( e16 )] |
  f4. ^\> ~ f8 \! e4 d4 | \break
  e2. \) e8. ( f16 |
  g4. g8 a4 ^> b4 ^> |
  c2. ) d,8. ^\( [(e16)] | \break
  f4. ~ f8 e4 d4 |
  c2. \) g'8. ^\f g16 |
  c2. e8. d16 |
  c2 g4 d8. [(e16)] | \break
  f4. ~ ^\> f8 \! e4 d4 |
  g2. e8. [(f16)] |
  g2 ^\< g4 a8. b16 \! | \break
  c2 c4 e8. [(d16)] |
  c2 c4 d4 ^> |
  c2. 
  \bar "|."
}

text = \lyricmode {
  は な さ き ち り て、 い ー そ ー と せ
  の、 み の り の あ き ぞ さ ー
  ち ー お お く。 こ こ に わ れ ら が き ー
  ね ー ん さ い、 と ー も よ う た
  え よ、 い ー ざ や、 い ざ。
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