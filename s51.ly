\version "2.18.2"

\paper {indent = 0}

\header {
  title = "いつの日にか"
  subtitle = "昭和51年寮歌"
  composer = "真鍋利徳君 作曲"
  poet = "小嶋茂君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}


melody = \relative c'{
  \tempo 4 = 60
  \autoBeamOff
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key f \major  
  \time 6/8 
  a4. d4 d8 | 
  f4 e8 d4. | 
  a'8 bes a g f d | \break
  e4 f8 e4. | 
  f4. e4 e8 | 
  d4 d8 bes4 bes8 | \break
  a4 a8 bes4 g8 | 
  a4.~ a4 r8 | 
  d4. d4 e8 | \break
  f8 f f f4 g8 | 
  a4 a8 bes4 g8 | 
  a4 bes8 a4. | \break
  e'4. bes4 bes8 | 
  a8 a a d,4 e8 | 
  f4 f8 g4 d8 | \break
  e4 f8 e4. | 
  f4. e4 e8 | 
  d4. bes4 bes8 | \break
  a8 a a f'4 e8 | 
  d4.~ d4 r8 
  \bar "|."|
}

text = \lyricmode {
  よ る は め ぐ り か ぎ り な き、 ひ か り の、 
  た ば は じゅ り ん を つ ら ぬ き ぬ_ー、
  あ さ の せ い じゃ く の な か、 ひ と り に て、 
  む い の お も い も ち、 な げ き う れ え る、
  も~う ね つ も な く な み だ な が る_ー。
}

harmony = \chordmode {
  d2.:m~ d:m a4.:7 d:m 
  a2.:7 d:m g:m 
  d4.:m g:m a2.:7 d:m 
  d:m a:7 d:m 
  g:m d:m bes 
  a:7 d4.:m a:7 g2.:m 
  a:7 d:m
}

drum = \drummode{ 
}

\score {
  <<
    % ギターコード
    \new ChordNames \with {midiInstrument = #"acoustic guitar (nylon)"}{
      \set chordChanges = ##t
      \harmony
    }
    
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
