\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key d \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

  % meter = \markup {\italic "Cheerfully."}
                                %	arranger = ""
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 8 d8 | d4 <fs d'>8 <fs cs'>4 <g b>8 | <d a>4. <b, g>4 g8 | g4 g8 <a, fs>4 <d fs>8 | \mBreak
            <d fs>4. <cs e>4 d8 | d4 s2 | s4. s4 <e a>8 | b8._( cs'16) <a d'>8 <g d'>4 <g cs'>8 | \partial 8*5 <e d'>4.^(<e d'>4) \bar "||" | \mBreak
            \partial 8 <fs d'>8 | <fs d'>4 <fs d'>8 <fs as cs'>4 <fs as cs'>8 | <d b>4 <d b>8 <d fs a>4 <d fs>8 |
            g8.^(fs16) g8 <cs a>4 a8 | <d a>4 fs8 d4 d8 | \mBreak
            d4 <a d'>8 <g cs'>4 <fs d'>8 | s4. s4 <e a>8 | b8._(cs'16) <a d'>8 <g d'>4 <g cs'>8 | s4. s4 <e a>8 | \mBreak
            <fs d'>4^(d'8) <fs cs'>4 <g b>8 | <b, a>4 <cs g>8 <d fs>4 d8 | g8. fs16 g8 <cs a>4 a8 | \partial 8*5 d4.~ d4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | cs8. d16 e8 s4. |
            s2. | s4 <a d'>8 <g cs'>4 <fs d'>8 | <e a e'>4. <e cs'>4 s8 | d4 s8 s4. | s4. s4 |
            s8 | s2.*2 | d4 s2 | s2. |
            s2. | <e a e'>4 d'8 <e a cs'>4 s8 | d4 s2 | <fs d'>4.^~ <fs d'>4 s8 |
            s2.*2 | d4 s2 | s4. s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        There8 | was4 a8 jo4 -- vial8 | tin4. -- ker,4 Who8 | was4 a8 good4 ale8 |
        drink4. -- er,4 He8 | ne4 -- ver8 was4 a8 shrink4. -- er,4 Be8 -- lieve4 me,8 this4 is8 4 true.8 4 |
        And8 he4 came8 from4 the8 | Weald4 of8 Kent,4 When8 | all4 his8 money4 was8 | gone4 and8 spent,4 Which8 |
        made4 him8 look4 like16 a16 | Jack4 a8 -- lent.4 And8 | 8 Joan’s8 8 ale4 is8 | 4 new,8 4 And8 |
        8 Joan’s8 8 ale4 is8 | new,4 my8 boys,4 And8 | 8 Joan’s8 8 ale4 is8 | 4 new.8 4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            d8 | d4 b8 a4 g8 | fs4. e4. | a,8. b,16 cs8 d4 fs8 |
            a4. a,4 d8 | d4 fs8 e4 d8 | cs4. a4 fs8 | g4 fs8 e4 a8 | d4.~ d4 |
            b8 | b4 b8 fs4 fs8 | g4 g8 d4 d8 | e4. <a, g>4. | <d fs>4.^(<d fs>4) d8 |
            d4 fs8 e4 d8 | cs4. a4 fs8 | g4 fs8 e4 a8 | d4._~d4 cs8 |
            b,4 b8 a4 g8 | fs4 e8 d4 fs8 | e4. <a, g>4. | <d fs>4.~<d fs>4 | \fine

          } % end voice three
          \new Voice { % voice four

          } % end voice four
		>>
      } % end staff down
	>>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
                                %\override LyricText.self-alignment-X = #LEFT
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score
