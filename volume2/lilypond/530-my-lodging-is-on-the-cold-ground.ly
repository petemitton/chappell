\version "2.24"
\language "english"

global = {
  \time 6/8
  \key f \major
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
            \partial 8 a16( g) | e8. g16 f8 f a c' | bf( d' f') f'8.( e'16) d'8 | c'8. bf16 a8 g8. f16 g8 | \mBreak
            a4.~4 16( g) | f8.( a16) f8 f( a) <ef c'>8 | <d bf(> d' f') \stemUp f'8. e'16 d'8 | \stemDown <f c'>8( f') <f a> \stemUp g8.( f16) g8 | \partial 8*5 f4.~4 \bar "||" | \mBreak
            \stemNeutral \partial 8 c'8 | c'( a) f' f'4 c'8 | d'8( bf f') f'8.( e'16) d'8 | c'8. bf16 a8 g8.( f16) g8 | <cs e a>4.~8 a8.( g16) | \mBreak
            f8. g16 f8 <c f> a c' | <f bf>( d'16) f'8. \stemUp f'8.( e'16) d'8 | \stemNeutral <f a c'>( f') <f a> g8. f16 g8 | \partial 8*5 f4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2. | s4. bf4 s8 | s4. \stemUp e4 s8 |
            s2.*2 | s4. f4 s8 | s4. e4 s8 | s4. s4 |
            s8 | s2. | s4. \once \stemDown bf4 s8 | s4. d4 s8 | s4. s8 <c! e>4 |
            c4 s8 s4. | s4. f4 s8 | s4. e4 s8 | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        My8  | lodg8. -- ing,16 it8 is on the | cold4. ground,4 And8 | oh!8. ve16 -- ry8 hard8. is16 my8 | 
        fare,8*5 But8 | that4 which8 grieves4 me8 | more,4. love,8. Is16 the8 | cold4 -- ness8 of4 my8 | dear.8*5 | 
        Yet8 | still4 he8 cried,4 O8 | turn,4. love,4 I8 | pray8. thee,16 love,8 turn4 to8 | me,2 For4 |
        thou8. art16 the8 on4 -- ly8 | girl,4. love,4 That8 | art4 a8 -- dor’d4 by8 | me.8*5 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <f a>4.~8 f' e' | <f d'>4. \stemUp d'8. c'16 bf8 | a8. g16 f8 <c bf>4. |
            \stemNeutral <f a>4 <f a f'>8 <f a c'>4 r8 | \stemUp a4.^~8 s4 | \stemNeutral bf,4. \grace {bf,16(} d'8.) c'16 bf8 | <c a>4 <c f>8 <c bf>4. | <f a>4 <a c>8 <f a>4 |
            r8 | <f a c'>2. | <f bf>4. \stemUp d'8. c'16 bf8 | \stemNeutral <f a>4. bf, | a,8 cs e a <c! bf>4^\> |
            <f a>4.^\p <e a>^\cresc  | <d bf> <g, b!>^\f\> | <c c'>4\p c8 <c bf>4. | <f a>4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2. | s4. f4 s8 | f4 s8 s4. |
            s2. | f2. | s2.*2 | s4. s4 |
            s8 | s2. | s4. f4 s8 | s2.*2 |
            s2.*3 | s8*5 |
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