\version "2.24"
\language "english"

global = {
  \time 3/4
  \key d \major
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
            \partial 4 d8. e16 | fs4. e8 <b, d>4 | <a, d a> a4 8. 16 | \stemUp b4. cs'8 <d g d'>4 | <e a cs'>2 cs'8. d'16 | \mBreak
            \stemNeutral <e a e'>4. d'16( cs') b8. a16 | <b, e gs>4 gs <e b d'> | <e a cs'>4 <d gs> s4 | <cs a>2 <d a>4 | <d g! b>4 a4. g8 | \mBreak
            fs4. e8 d4 | <d g> <d fs a> <d g b> | <cs e>2 <e a e'>8. <fs a d'>16 | <g a>4 s <cs g a>4 | <d a>4 s <d g b>4 | \mBreak
            <e g c'!>4 a4. g8 | <b, g>2 <g b>8( cs'!16 d') | <g b e'>4 <gs b>4 s | cs'4. b8 <e a cs'>4 | d'4. a8 <d fs c'!>4 | \mBreak
            <d g b>2 fs4 | <d g> <d fs a> <d g b> | a4. 8 \stemUp d'4 | b4. e'8 cs'4 | \partial 2 <e a d'>2 \bar "||" | \mBreak
            \stemNeutral \partial 4 \textMark \markup {\caps "Chorus."} <fs b>8\ff(  cs'16 d') | <e a e'>4 d'4. e'8 | cs'4. b8 <e a cs'>4 | d'4. a8 <e a c'!>4 | <ds fs b>2 <b, ds fs>4 | \mBreak
            <b, e g>4 <d! fs a> <d g b> | \once \stemDown <cs g>4 s <d fs d'>4 | b4. e'8 <e a cs'>4 | \partial 2 <d fs a d'>2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4 | <a, d>4 s2 | s d4 | \stemDown <d a>4 s2 | s2. |
            \stemUp s2 fs4 | s2. | s4 b4. a8 | s2 d'8. cs'16 | s4 <cs e> s |
            d4 s2 | s2.*2 | cs'4. b8 s4 | d'4. c'!8 s4 |
            s4 <c! fs>4 s | s2. | s4 d'4. \stemDown e'8 | a4 s2 | <d a>4 s2 |
            s2.*2 | d2 <d fs>4 | <d g>4 <e g> <e a> | s2 |
            s4 | s <e gs>4 s4 | <e a>4 s2 | <d a>4 s2 | s2. | 
            s2. | \stemUp a4. 8 s4 | \stemDown <e g>4 s2 | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        The8. de16 -- lights4. of8 the4 | bot -- tle and8. the16 | charms4. of8 good4 | wine,2 To8. the16 |
        pow4. -- er8 and8. the16 | plea4 -- sures of | love must4. re8 -- sign;2 Though8. the16 | night4 in4. the8 | 
        joys4. of8 good4 | drink -- ing be | past,2 The8. de16 -- bauch4. -- es8 but4 | till4. the8 next4 |
        morn4 -- ing4. will8 | last,2 But4 | Love’s4 great4. de8 -- bauch4. is8 more4 | last4. -- ing8 and4 |
        strong,2 For4 | that4 of-- ten | lasts4. a8 man4 | all4. his8 life4 | long.2 |
        But4 | Love’s great4. de8 -- bauch4. is8 more4 | last4. -- ing8 and4 | strong,2 For4 |
        that4 of -- ten | lasts4. a8 man4 | all4. his8 life4 | long.2 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | d2 b,4 | fs,2 4 | g,2 b,4 | a,2 r4 |
            cs2 d4 | e2 gs4 | a4 e2 | a,2 fs4 | g!4 a2 | 
            b2 4 | 4 a g | a2 cs8. d16 | e2 4 fs2 g4 |
            c!4 d2 | g,2 g4 | e4 2 | a2 g!4 fs2 d4 |
            g2 d'8. c'!16 | b4 a g | fs2 d4 | g e a | d2 |
            <d, d>4 | <cs, cs> <b,, b,>2 | <a,, a,>2 <g,,! g,!>4 | <fs,, fs,>2 <a,, a,>4 | <b,, b,>2 4 |
            <e, e>4 <d,! d!> <g, g> | <a, a>2 <b,, b,>4 | <e, e>2 <a,, a,>4 | <d, d>2 | \fine
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