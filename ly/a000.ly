\version "2.22.1"  % necessary for upgrading to future LilyPond versions.

\paper {indent = 0}

\header {
  title = "永遠の幸"
  subtitle = "札幌農学校校歌"
  composer = "納所弁次郎氏 選曲"
  poet = "大和田建樹氏 校閲 有島武朗君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative {
  \tempo  \markup {
    \smaller \general-align #Y #DOWN \note {4} #1
    " ≒ 88"
  }
  \tempo 4 = 88 %% midi 再生用のテンポ
  \time 4/4
  \key bes \major
  \autoBeamOff
  \numericTimeSignature
  \set melismaBusyProperties = #'()
  \override BreathingSign.Y-offset = #2
  \override BreathingSign.text =
    \markup { \musicglyph "scripts.upedaltoe" }
  \partial 4
  f'8.( ees16 | 
  d8. f16 bes8. c16 bes4) bes8.(a16 | 
  g8. bes16 bes8. g16 f4) \breathe 
  f8.( ees16 \break 
  d8. f16 bes8. c16 d8. d16 c8. bes16 c2.) \breathe
  f,8.( ees16 d8. f16 bes8. c16 bes4) bes8.(a16 \break 
  g8. bes16 bes8. g16 f4) \breathe
  d'8.( c16 bes8. a16 bes8. g16 a8. f16 a8. c16 bes2.) r4
  
  <<
    {\autoBeamOff
    \set melismaBusyProperties = #'()
    \override BreathingSign.Y-offset = #2
    \override BreathingSign.text =
    \markup { \musicglyph "scripts.upedaltoe" }
    \voiceOne 
    d4^\markup { \smaller Chorus } 
    ( d4 d8. c16 bes8. g16 f2 bes2) \breathe
    c4( c d8. c16 bes8. d16 \break
    c2.) \breathe
    f,8.( ees16 d8. f16 bes8. c16 bes4) \breathe
    bes8.(a16 g8. bes16 bes8. g16 f4) \breathe
    d'8.( c16 \break 
    bes8. a16 bes8. g16 <ees a>8. <ees f>16 <ees a>8. <ees c'>16 <d bes'>2.)}
    \\
    
    {\autoBeamOff
    \voiceTwo 
    <bes f'>4 <bes f'> <bes f'>8. <bes f'>16 <ees g>8. <bes ees>16 <bes d>2 <d f>2
    <ees f>4 <ees f>4 <d f>8. <d f>16 <d f>8. <f bes>16 <f a>2.
    f8. ees16 d8. f16 bes8. c16 bes4 <d, f>8. <d f>16 <bes ees>8. <ees g>16 <ees g>8. <bes ees>16 <bes d>4
    <f' bes>8. <ees a>16 <ees g>8. <ees g>16 <ees g>8. <bes ees>16 f'8. c16 f8. f16 bes,2.}
    \addlyrics {
      い~ざ い~ざ い~ざ う ち つ れ て、
      す す む は い ま ぞ、
      と よ ひ ら の か わ、
      つ き せ ぬ な が れ、
      と も た れ な が く と も た れ。 
    }
  >>
  \bar "|."
}
text = \lyricmode {
  と こ し え の さ ち、 く ち ざ る ほ ま れ、
  つ~ね に わ れ ら が う え に あ れ、
  よ る ひ る そ だ て、 あ け く れ お し え、
  ひ と と な し し わ が に わ に。
}

drum = \drummode{
  r4 | 
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd4 bd4 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 r4 |
  bd8. r4 r16 bd4 r4 | 
  bd8. r16 bd8. r16 bd4 % r4 |
}

\score {
    <<
        % ギターコード
        % \new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}{
        %     \set chordChanges = ##t
        %     \harmony
        % }

    % メロディーライン
    \new Voice = "one"{\melody}
    % 歌詞
    \new Lyrics \lyricsto "one" \text
    % 太鼓
    \new DrumStaff \with{
        \remove "Time_signature_engraver"
        drumStyleTable = #percussion-style
        \override StaffSymbol.line-count = #1
        \hide Stem
    }
    \drum
    >>
    \midi {}
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
        }
    }

}
