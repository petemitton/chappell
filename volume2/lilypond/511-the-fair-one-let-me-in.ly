\version "2.24"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 4 g4 | ef4 d8( c) g4 c' | bf4. af8 g4 f8( ef) | af4. g8 f4 ef8( d) | \mBreak
            b,!2. <b, g>4 | <c ef> d8 c g4 <ef c'> | <f b!>4. <ef c'>8 <d d'>4 <g ef'> | <fs c'> <g bf!>8_( a!) a4. g8 | \mBreak
            <bf, g>2. g8_( af!) | bf4. 8 \autoBeamOff c'_([ bf)] af_([ g)] | \autoBeamOn <ef af>4 <ef bf> <ef c'>4. <ef bf>8 | <d af>4 g8_( f) f4. ef8 | \mBreak
            ef2. < g ef'>4 | <g c'>4. g8 <ef af>4 g8_( f) | \textMark \markup { \italic "rall." } <ef d'>4 <ef ef'> b!4.\fermata \textMark \markup { \italic "a tempo." } <b,! g>8 | %
            af8_( g) f_( ef) f4 g | \partial 2. c'2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s2. ef4 | f2 bf, | af,2. 4 | 
            s1*3 | s2 g4 <d  fs!> |
            s2. bf,4 | <bf, ef>2 ef | s1 | s4 ef4 4 d | 
            s1*2 | s2 \once \stemUp ef4 s4 | c2 c4 <b,! d> | <c ef>2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        The4 | night her black -- est | sa4. -- bles8 wore,4 All | gloom4. -- y8 were4 the |
        skies,2. And4 | glit -- ter8 -- ing stars4 there | were4. no8 more4 Than | those in Stel4. -- la’s8 |
        eyes,2. When4 | at4. her8 fa4 -- ther’s | gate I knockt,4. Where8 | I4 had of4. -- ten8 | 
        been,2. And4 | shroud4. -- ed8 on4 -- ly | in her smock,4. The8 | fair4 one let me | in.2. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | \once \stemUp g2. c4 | d2 ef4 d8( c) | f2. 4 |
            af4. g8 f4 ef8 d | c2. 4 | d4. c8 b,!4 c8 bf, | a,!4 g, d d, |
            g,2. g4 | \autoBeamOff g4. g8  af[ g]  f[ ef] | \autoBeamOn c'4 g af4. g8 | f4 ef bf <bf, bf> | 
            g4 g b!2 | s2 c4 bf8 af | <b,! g>4 <c g> <g, g>\fermata g | \autoBeamOff f8[ ef] d[ c] af4 g | c2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | c2. s4 | s1*2 |
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