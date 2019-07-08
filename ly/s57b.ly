\version "2.18.2"

\paper {indent = 0}

\header {
  title = "寮友よ永遠に謳歌わん"
  subtitle = "昭和57年閉寮記念寮歌"
  composer = "串田厚司君 作曲"
  poet = "植木貴昭君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 8 = 96
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 6/8 
  \partial 8 e8 | 
  e4. f8 g a | 
  g4. e4. | 
  f4 f8 f([ g]) a | 
  g4.~ g8 r g | \break
  aes4 aes8 f d'8. b16 |
  c4. d,8 e f | 
  e4. d4~ d16 c | 
  c4.~ c8 r a' | \break
  a4. a8 b c | 
  b4. e,4. | 
  b'4. b8 c([ d]) | 
  c4.~ c8 r c | \break
  d4. d4 a8 | 
  c4 b8 a4. | 
  a4 a8 a([ b]) c | 
  d4.~ d8 r g, | \break
  e'4 e8 f[ e] d | 
  c4 c8 a4 a8 | 
  f'4. f8([ e]) c | 
  d4.~ d8 r e, | \break
  e4 e8 f([ g]) a | 
  g4. e4 r8 | 
  f4. f8[ g] a | 
  b4.~ b8 r g | \break
  b4. b4 e,8 | 
  a4 b8 c4\fermata c,8 | 
  c4( f8) e4 d8 | 
  c4.\fermata~ c8 r8 \bar "|." 
}

text = \lyricmode {
  さ | 
  み ど り の | 
  み ち |
  か け し_ー わ | 
  れ_ー お | 
  が わ に う つ | 
  る え ん れ | 
  い の_ー は | 
  な_ー い | 
  ま こ の と | 
  き の | 
  し_ょ_う け い_ー に_ー は | 
  る か せ | 
  ん し~ょ う | 
  あ お ぎ_ー み | 
  ん_ー こ | 
  こ ろ のー せ | 
  い あ ん こ | 
  こ に_ー あ | 
  り_ー わ | 
  が ゆ め は | 
  せ し | 
  ゆ~う ぐ_ー れ | 
  に_ー あ | 
  す の た | 
  び じ を お | 
  も_ー い な | 
  ん_ー
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
    %\new DrumStaff \with{
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

#(set-global-staff-size 20)
