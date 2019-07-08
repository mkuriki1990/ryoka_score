\version "2.18.2"

\paper {indent = 0}

\header {
  title = "広がるはただ青き旅路ぞ"
  subtitle = "平成23年度寮歌"
  composer = "我如古弥司君 作曲"
  poet = "安田龍平君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 80
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key g \minor
  \time 4/4
  \set melismaBusyProperties = #'()
  \mark \markup \small "音符にとらわれず、気持ちを込めて歌う"
  \repeat volta 5 {
    f4 bes2 bes4 |
    g4 f4. g8 f4~ |
    f8 r8 g4. bes8 a4 |
    g4 f4 g4 d4 |
    r4 ees4. f8 ees4 |
    d8 [c8] bes4 f'4 bes4 | \break
    bes4 bes4 c4 a4 |
    bes4 g2 f4 |
    f4 bes4 c4 d4 |
    ees4 d4 c8 [d8] bes4 ~ |
    bes8 r8 c4 ees4 d4 |
    c4 bes4 c4 d4 ~ | \break
    d8 r8 bes4 c4 d4 |
    ees4 d4 c4 ees4 ~ |
    ees8 r8 ees4 d4 c4 |
    bes4 ees2 f4 |
    f,4 bes2 bes4 |
    c4 d4 f4 d4 ~ | \break
    d8 r8 ees4 f8 [ees8] d4 |
    }
  \alternative {{
      c4 bes4 c4 bes4 |
      r1 |
      r1 \bar ":|."
    }{
      c4 bes4 c4 d4 | }}
      f,4 bes2 bes4 |
      b4 c4 c8 [d8 ees8] r8 | \break
      ees8 [ees8 ees8] r8 ees4 d4 |
      c8 [d8] ees2 r4 
   
  \bar "|." 
}

text = \lyricmode {
  ほ し は こ う こ う ー う ま し ね こ え て た ま き び ー を は む
  た び ー ど り や ー そ ま ー ず さ ま よ ー う ー そ が し ら は ね に 
  ー ほ し と た い し の ー む す ぶ と き ー ひ ろ が る は た だ 
  ー あ お き た び じ ー ぞ び じ ー ぞ ひ ろ が る は た ー だ
  あ お き た び じ ー ぞ
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


