\version "2.18.2"

\paper {indent = 0}

\header {
  title = "楡陵を仰いで"
  subtitle = "令和元年度寮歌"
  composer = "佐藤亮君 作曲"
  poet = "佐藤亮君 作歌"
  tagline = "北海道大学恵迪寮寮歌集アプリ - https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/"
}

melody = \relative c'{
  \tempo 4 = 75
  \autoBeamOn
  \numericTimeSignature
  \override BreathingSign.text = \markup { \musicglyph #"scripts.upedaltoe" } % ブレスの記号指定
  \key ees \major
  \time 4/4
  \repeat volta 2 {
    c4 \tuplet 3/2 {ees8~ ees ees} \tuplet 3/2 {d~ d d} c4 |
    \tuplet 3/2 {aes8~ aes aes} \tuplet 3/2 {aes~ aes aes} g2 |
    \tuplet 3/2 {aes8~ aes g} \tuplet 3/2 {c~ c d} \tuplet 3/2 {ees~ ees ees} \tuplet 3/2 {d~ d ees} |
    \tuplet 3/2 {d8~ d g} \tuplet 3/2 {ees~ ees d} c2 | \break
    \repeat volta 2 {
      \tuplet 3/2 {c'8~ c c} \tuplet 3/2 {c~ c aes} \tuplet 3/2 {g~ g ees} \tuplet 3/2 {g~ g g} |
      \tuplet 3/2 {aes8~ aes ees'} \tuplet 3/2 {d~ d c} g2 |
    }
    \alternative{
      {
        \tuplet 3/2 {aes8~ aes ees'} \tuplet 3/2 {d~ d c} \tuplet 3/2 {g~ g ees} g4 |
        \tuplet 3/2 {d8~ d g} \tuplet 3/2 {ees~ ees d} c2 | \break
      }
      {
        \tuplet 3/2 {aes'8~ aes ees'} \tuplet 3/2 {d~ d c} \tuplet 3/2 {g~ g ees} \tuplet 3/2 {g~ g g} |
      }
    }
    \tuplet 3/2 {g8~ g g} \tuplet 3/2 {aes~ aes g} c4 \tuplet 3/2 {d8~ d d} |
    \tuplet 3/2 {ees8~ ees ees} \tuplet 3/2 {d~ d c} g4 \tuplet 3/2 {g8~ g g} | \break
    \tuplet 3/2 {aes8~ aes ees'} \tuplet 3/2 {d~ d c} g4 \tuplet 3/2 {g8~ g g} |
    \tuplet 3/2 {aes8~ aes ees'} \tuplet 3/2 {d~ d c} g4 \tuplet 3/2 {g8~ g ees} |
  }
  \alternative{
    {
      \tuplet 3/2 {d8~ d g} \tuplet 3/2 {ees~ ees d} c2 \mark "D.C. 最初に戻る"|
    }
    {
      \tuplet 3/2 {d8~ d g} \tuplet 3/2 {ees~ ees d} c4~ \tuplet 3/2 {c8~ c g} | \break
    }
  }
  \tuplet 3/2 {c8~ c c} \tuplet 3/2 {c~ c d} \tuplet 3/2 {ees~ ees f} g4 |
  \tuplet 3/2 {aes8~ aes aes} \tuplet 3/2 {bes~ bes aes} \tuplet 3/2 {g~ g f} g4 |
  \tuplet 3/2 {aes8~ aes aes} \tuplet 3/2 {bes~ bes aes} \tuplet 3/2 {g~ g f} g4 |
  \tuplet 3/2 {d8~ d aes'} \tuplet 3/2 {g~ g b,} c2 | \break
  \tuplet 3/2 {c8~ c c} \tuplet 3/2 {c~ c c} \tuplet 3/2 {d~ d d} d4 |
  \tuplet 3/2 {ees8~ ees ees} \tuplet 3/2 {f~ f fis} \tuplet 3/2 {g~ g aes} g4 |
  \tuplet 3/2 {aes8~ aes ees'} \tuplet 3/2 {d~ d c} \tuplet 3/2 {g~ g d'} \tuplet 3/2 {c~ c g} | \break
  \tuplet 3/2 {f8~ f c'} \tuplet 3/2 {b~ b d,} \tuplet 3/2 {ees~ ees f} ees4 |
  \tuplet 3/2 {aes8~ aes ees'} \tuplet 3/2 {d~ d c} \tuplet 3/2 {g~ g d'} \tuplet 3/2 {c~ c g} |
  \tuplet 3/2 {f8~ f c'} \tuplet 3/2 {b~ b d,} \tuplet 3/2 {ees~ ees f} g4 | \break
  \tuplet 3/2 {aes8~ aes ees'} \tuplet 3/2 {d~ d c} \tuplet 3/2 {g~ g d'} \tuplet 3/2 {c~ c~ c} |
  \tuplet 3/2 {f,8~ f c'} \tuplet 3/2 {b~ b c} c2 |
  \bar "|."
}


text = \lyricmode {
  ああ とー お きー ひ の | 
  とー も しー び よ |
  わー れ らー が じー ゆ う を |
  うー つ しー な ん |
  こー よ いー お ろー し がー ー |
  ひー を かー す め |
  しょー く だー い にー ぶ く |
  こー え もー ら し |
  ほー の かー に ろー う はー ほ |
  そー く なー り ゆ くー さ |
  れー ー ばー と え おー の |
  がー こ こー ろ に わー が |
  むー ね うー ち は りょー う |
  がー ほ こー り よ |
  がー ほ こー り よーー せ |
  んー じ んー の こー せ し |
  たー か きー や しー ん の |
  そー れ にー も まー さ る |
  えー に しー あ り |
  いー ず れー わ かー れ る |
  そー の さー だ めー ま で |
  かー こ みー か たー ら いー お |
  のー が さー き つー く れ |
  ゆー りょ うー の かー た すー み |
  わー が ふー る さー と は |
  かー く あー る べー し と |
  だー れ かー い う
}

text_second = \lyricmode {
  か れ づー る ほー こ ろー び |
  のー ぞ かー せ て
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
    \new Lyrics \lyricsto "one" {\text}
    \new Lyrics \lyricsto "one" {\repeat unfold 2 { \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 } \text_second}
    % 太鼓
    % \new DrumStaff \with{
    %   \remove "Time_signature_engraver"
    %   drumStyleTable = #percussion-style
    %   \override StaffSymbol.line-count = #1
    %   \hide Stem
    % }
    % \drum\paper{
  
  >>
  
  \midi {}
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }

}


