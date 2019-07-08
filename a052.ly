\version "2.18.2"

\paper {indent = 0}

\header {
  title = "函館高等水産学校校歌"
  subtitle = "昭和12年"
  composer = "東京音楽学校 作曲"
  poet = "土井晩翠氏 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 76
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \minor
  \time 4/4
  \set melismaBusyProperties = #'()
  \mark \markup \small "壮麗雄大に"
  \partial 4 bes8. ^\mf ( c16 ) |
  d2 ^\< d4 \! \tuplet 3/2 { ees8 ( d [ ees ] }  |
  g2 ) f8 r bes,8. ([ ees16 ]) |
  ees2 d4 ^\> \tuplet 3/2 { d8 ([ ees d ]) }  | \break
  c2 \! r4 bes8. ([ c16 ])  |
  d2 ^\< d4 \tuplet 3/2 { ees8 ([ d ]) ees \! } |
  g2 ( f8 ) r bes,8. ([ ees16 ]) |
  d2 ( c4 ) ^\> \tuplet 3/2 { c8 ([ d ]) c \! } | \break
  bes2 r4 d8. ([ ees16 ]) |
  f2 ^\< f4 \tuplet 3/2 { g8 ([ f ]) g } |
  f2 d8 r f8. ([ c'16 ]) |
  c2 ( a4 ) ^\> \tuplet 3/2 { g8 ([ d ]) e \! } | \break
  f2 r4 f8. ^\f bes16 |
  bes2 ^\< f8 r \tuplet 3/2 { g ([ f g ])} |
  d'2 ^\ff c4. r8 |
  bes4 _( f4 ) d ^\> \tuplet 3/2 { c8 ([ g' ]) f } | \break
  f2 r4 bes,8. ^\mp ([ c16 ]) |
  d2 ^\< d4 \! \tuplet 3/2 { ees8 ([ d ]) ees } |
  g2 f8 r bes,8. ^\mf ([ ees16 ] |
  d2 ^\< ) c4 g'8. \! ([ f16 ]) |
  bes2 ^\f r4
  \bar "|."
}

text = \lyricmode {
  た い へ い よ う ー ー と に ー ほ ん か ー ー
  い、 む ー す ぶ か ー い き~ょ う た ー だ ー な ー か
  に、 の ー ぞ む は ー こ だ て て ー ん ー ね ー ん
  の、 め ぐ み の し~ょ う ー ー ち こ ー こ に ー し
  て、 こ う と う す ー い さ ん こ う ー は た ー つ。
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


