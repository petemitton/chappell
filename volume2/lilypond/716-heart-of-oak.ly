\version "2.24"
\language "english"

global = {
  \time 4/4
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
            \partial 4 e4 | <cs a>4 8. <d  a>16 <e a>4 <e gs cs'>8. <d b>16 | <cs a>4  gs8. fs16 <cs e>4. 8 | \mBreak
            <a, d fs>4 fs8. gs16 <a, cs a>4 \stemUp b8. cs'16 | \stemNeutral <fs d'>4 cs'8. b16 <e cs'>4 cs'8.( b16) | %
            <fs a>4 cs8. d16 e4 \stemUp cs'8. b16 | \mBreak
            <cs fs a>4 cs8. d16 e4 <cs a> | <ds a cs'> b8. a16 <e b e'>4 <e gs>8. <e a>16 | \partial 2. <e b>4 8. 16 e4 \bar "||" | \mBreak
            \partial 4 b8. 16 | <e b>4 <e gs>8. <e a>16 <e b>4 cs'8. 16 | %
            <fs cs'>4 <fs a>8. <fs b>16 <fs cs'>4. <cs gs cs'>8 | <cs fs a>4 <cs es gs>8 cs' <cs a> fs r4 | \mBreak
            <a, d a>16 a8. <b, e>4 cs8 a, r <a, cs e> | <a, d fs>8.( <d gs>16) <e gs>8. <fs a b>16 <e a cs'>4 <ds a b>8. <ds a>16 | %
            \partial 2. <e a e'>4 <d e>8. e16 <cs a>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1 | s4 \stemUp d4 s2 | 
            s4 <b, d>4 <a, cs> fs | \stemDown s4 e s es | \stemUp s2. <cs es gs>4 |
            s1*3 | s2. es4 | s1*2 |
            
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Come, | cheer up, my lads, ’tis to | glo -- ry we steer, To |
        add some -- thing more to this | won -- der -- ful year; To | ho -- nor we call you, as | 
        free men, not slaves, For | who are so free as the | sons of the waves? |
        Heart of | oak are our ships, Heart of | oak are our men: We | al -- ways are rea -- dy. |
        Ste -- ady, boys, stea -- dy, We’ll | fight and we’ll con -- quer a -- gain and a -- again. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            e4 | <a, a>4 8. <b, a>16 <cs a>4 e, | fs, d, a,4. 8 |
            d4 b, fs <fs a> | <d b> <e gs> <a, a> <cs gs> | <fs a> cs8. d16 e4 <cs, cs> | 
            <fs, fs>4 cs8. d16 e4 <fs, fs>4 | 4 4 <gs, e>4 <cs e>8. <cs fs>16 | <b, gs>4 <b, a> <e gs> | 
            r4 | <e gs> <e b>8. <fs b>16 <gs b>4 <cs gs> | <fs a> <fs cs'>8. <gs cs'>16 <a cs'>4. es8 | fs4 cs fs r |
            fs,4 gs, a, r8 a, | d8. b,16 cs8. d16 e4 fs8. 16 | <e cs'>4 <e gs> <a, a> | \fine
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