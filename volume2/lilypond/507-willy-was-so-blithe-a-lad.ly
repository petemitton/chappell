\version "2.24"
\language "english"

global = {
  \time 6/8
  \key a \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 8 <cs e>8 | 4 e8 a4 <fs b>8 | <fs cs'>4 b8 fs4 e8 | fs4 e8 <d fs>4 <b, gs>8 | \mBreak
            <cs a>4.~4 <cs e>8 | 4 e8 a4 <fs b>8 | <fs cs'>4 b8 fs4 e8 | fs4 e8 <d fs>4 <b, gs>8 | \partial 4. fs4 r8 \bar "||" | \mBreak
            \partial 4. e'4.-> | <e cs'>4 a8 4 <d fs>8 | <d fs>8( gs) a b4 <e d'>8\fermata | <d fs>4 e8 <a, e>4 cs8 | <a,^\=1( e^\=2(>4. <gs,\=1) e\=2)>4 e8 | \mBreak
            <a, fs>4  gs8 <fs a> gs fs | <fs b>4 a8 <e gs>4 <fs d'>8 | <d fs> gs <e a> a4 gs8 | \partial 8*5 <cs a>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*7 | s4. | s4. | s2.*6 | s4. d | s4. s4 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        [O]8 | Wil4 -- ly8 was4 so8 | blithe4 a8 lad,4 Ne’an8 | like4 was8 in4 the8 | 
        8 town;4. 8 At | Wake4 and8 Was4 -- sail8 | Wil4 -- ly8 had4 For8 | dan4 -- cing8 chief4 re8 -- nown:4 8 |
        He4. | pitch’d4 the8 bar,4 and8 | hurl’d4 the8 stean,4 Ne’a8 | man4 could8 him4 out8 -- gang,4. 4 And8 |
        if4 he8 strave4 with8 | a4 -- ny8 man,4 He8 | gar’d4 him8 lig4 a8 | 8 lang.4. 8 | 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree	
            a8 | 4.~4 d8 | d4.~4 e8( | d4) cs8( b,4) e,8 | 
            a,4 e,8 a,,4 a8 | 4.~4 d8 | 4.~4 e8( | d4) cs8( b,4) e,8 | a,4 r8 | 
            r4. | a4.->~4 d8 | 4.~4 b,8\fermata | d4 cs8 4 a,8 | e,4. e | 
            d4. d | d e4 b,8 | d4 cs8 b,4 e,8 | a,4.~4 | \fine
          } % end voice three

          \new 	Voice {
            %\voiceFour
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score