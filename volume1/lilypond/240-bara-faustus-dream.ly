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

%  meter = \markup {\italic "Smoothly, and with expression."}
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
            <d fs>4\p b8 <e as>4 <fs b>8 | cs'8.( b16) <fs as>8 <d b>4. | <fs d'>4\f d'8 <e as cs'>4 cs'8 | b8.( d'16) <g cs'>16( b16) <cs as>8 fs4 | \mBreak
            fs4\p b8 <e as>4 <d b>8 | cs'8.( b16) <fs as>8 <fs b>4. | <g d'>4\f <es d'>8 <fs cs>4 <fs cs>8 |
            b8.( d'16) <es cs'>( b) <fs as>8 fs4 | \repeat volta 2 { <g cs'>4\p <fs d'>8 <e e'>4 <g cs'>8 | \mBreak
            <fs d'>8 a4 fs4. | <a, d>8 fs4^\< <d g>8 b4 | <e as>8 <fs cs'>4 <fs b>8 d'4\> | <g cs'>4 b8 <cs b> as4 | <d b>2.\! }|

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2. | g4 s8 s4. | s2. | fs4 s8 s4. |
            s2. | cs4 s8 s4. | s2. | fs4 s8 s4. | s2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Come4 sweet8 Love,4 let8 | sor4 -- row8 cease,4. | Ban4 -- ish8 frowns,4 leave8 | off4 dis8 -- sen8 -- tion.4 |
        Love's4 war8 makes4 the8 | sweet4 -- est8 peace,4. | Hearts4 u8 -- ni4 -- ting8 | by4 cont8 -- ent8 -- ion,4 | Sun4 -- shine,8 fol4 -- lows8 |
        af8 -- ter4 rain,4. Sor8 -- rows4 ceas8 -- ing,4 | This8 is4 pleas8 -- ing,4 | All4 proves8 fair8 a4 -- gain.2. |

      }	% end lyrics verse one
      \new Lyrics \lyricmode {	% verse one
        2.*4 |
        2.*4 | Af4 -- ter8 sor4 -- row8 |
        com8 -- eth4 joy,4. | Trust8 me,4 prove8 me,4 | try8 me,4 love8 me,4 | This4 will8 care8 an4 -- noy.2. |
      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            b,4. cs4 d8 | s2. | b,4. cs | s2. |
            d4. cs4 b,8 | as,4 fs,8 d8. cs16 b,8 | s2.*2 | a!2. |
            s2.*4 | b,2. |

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            s2. | e4 fs8 b4. | s2. | d4 e8 fs4 e8 |
            s2.*2 | b4. as4 a!8 | gs4 g!8 fs4. | e4 d8 cs4 a,8 |
            <d a>2. | fs8 d4 b8 g4 | cs'8 as4 d'8 b4 | e4. fs | s2. |
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
