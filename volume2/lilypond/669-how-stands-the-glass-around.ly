\version "2.24"
\language "english"

global = {
  \time 4/4
  \key af \major
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
            \partial 4 c\f | f4. g8 <c f af>4 <f bf> | <c f c'>2. <c e!>4 | <c f>4 <c f af> <df g> <bf, f> | e!4. d!8 c4 c | \mBreak
            f4. g8 <c f af>4 <f bf> | <c f c'>2. e!4\p |  %
            f4. g8 af( g) f( e!) | \partial 2. f2. | \bar "||" | \partial 4 <ef bf ef'>4 | <ef af c'>2 4.^( df'16 ef') | \mBreak
            <ef g bf>2. <c af>4 | <f bf>4. c'8 \stemDown <f bf ef'>^( df') <ef g c'>^( bf) | <ef af ef'>4. f'8 ef'4 <f bf df'> | %
            \stemNeutral <ef af c'>2 <df g bf>4. af8 | <c af>2. 4  | af g <c f c'> <bf, df f> | \mBreak
            f4 e! r c | <c f>4. <bf, e! g>8 <bf, f af>4 <df g bf> | <c af c'>4. df'8 c'4 <df g bf> | <c f af>2 <bf, e! g> | \partial 2. <af, f>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | \stemUp af, s2. | s1*2 | c4 s2. |
            s1*10 | \stemDown <bf, e!>2 s2 |
            c2 s | s1*3 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        How | stands the glass a -- round? For | shame, ye take no | care, my boys! How |
        stands the glass a -- round? Let | mirth and wine a -- bound. | The | trum -- "pets  .  .  " |
        sound, The | co -- lours they are | fly -- ing, boys, To | fight, kill, or | wound: May | we _ still be |
        found _ Con -- tent with our hard | fare, my boys, On_the | cold, cold | ground. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            c4 | f,2 f4 df | af,2. \stemUp g4 |  af, f,  bf, df | g4 s2 <e! g>4 |
            f4 s f, \stemNeutral df, | af,,2. <g bf>4 | \stemUp c'2 c'8 bf af g | af2. | g,4 | af,2 c |
            \stemNeutral ef2. f4 | df2 bf,4 ef | c2. df4 | ef2 ef | af2. f,4 | g,2 af,4 bf, | 
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1 | s2. c8. bf,16 | s1 | c2. bf,4 |
            af,2 s2 | s1 | af4 f c2 | f2. | s4 | s1 |
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