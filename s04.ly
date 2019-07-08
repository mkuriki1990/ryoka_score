\version "2.18.2"

\paper {indent = 0}

\header {
  title = "黒潮鳴れる"
  subtitle = "昭和4年寮歌"
  composer = "森忠文君 作曲"
  poet = "須田政美君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 63
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key c \major 
  \time 4/4
  \slurUp
  \set melismaBusyProperties = #'()
  a8 (c8 e4. e8 f8 f8 |
  e2.) r4 |
  a,8 (a8 a'4. c8 b8 a8 |
  e2.) r4 | \break
  c8 (c8 e4. e8 f8 a8 |
  e2.) r4 |
  c8 (c8 b4. e8 c8 b8 |
  a2.) r4 | \break
  b'8 \(b8 b4. e,8 c'8 b8 |
  a2 (b2)\) |
  f8 (f8) f4. e8 a8 b8 |
  e,2. r4 | \break
  c8 (c8 e4. e8 f8 a8 |
  e2.) r4 |
  c8 ^\([_(c8)] b4. e8 c8 b8 |
  a2.\) r4 |
  \bar "|." \break
}

text = \lyricmode {
  く ろ し お な れ る、 わ だ つ み こ え て、
  き わ な き は る を、 ほ く し~ゅ う に と う、
  げ ん し の も り に ー、 は っ こ う ゆ ら ぎ、
  わ か く さ の の に、 よ う ぐ ん あ そ ぶ。
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


