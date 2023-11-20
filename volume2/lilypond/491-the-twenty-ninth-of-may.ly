\version "2.24.0"
\language "english"

global = {
  \time 2/4
  \key bf \major
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
            <f bf f'>8\f[ <f bf d'> <g bf ef> <f bf d'>] | <f a c'(>16 bf) a( g) f8( <f a) d'> | <ef bf ef'> g <ef a> g16( a) |  <d bf>8 f d c16 bf, | \mBreak
            <f bf f'>8[ <f bf d'> <g bf ef'> <f bf d'>] | <f a c'(>16 bf) a( g) f8( <f a d')> | <ef bf ef'> g <ef a> g16( a) | <d bf>8 f d c16 bf, | \mBreak
            d8[ f f ef16( d)] | <c ef>8 <ef g>8 4 | <c a(>16 bf) <e! c'>8 <c a(>16[ bf) <e c'>8] | \grace bf16 <c a>8 g16( a) f8 bf16( c') | \mBreak
            <f d'>8-> c'16_( d') <f bf>8-> d'16_( ef') | <f ef'>8-> d'16_( ef') <f c'>8-> d'16_( ef') | <f f'>8\sf g <ef a> g16 a | <d bf>8 f d c16 bf, | \fine  
          } % end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2*3 | s4 d |
            s2*3 | s4 d |
            d8 c b,! s | s2*3
            s2*3 | s4 d |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Wel8 -- come, wel -- come, | roy --  al  May!4 | Wel8 -- come long de -- sir -- ed day!4 |
        Ma8 -- ny Springs and | Mays we’ve seen4 | Have8 brought forth what’s | gay and green,4 |
        But8 none like this | glo -- rious Spring4 | Which8 brings forth our | gra8 -- cious King; Then |
        ba8 -- nish care, And | let us sing, We | have our laws, And16 we | have8 our King.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <d, d>8[ <bf,, bf,> <ef, ef> <bf,, bf,>] | <f, f>4 r8 <f, f> | <g, g>8[ <ef, ef> <f, f> f,] | <bf,, bf,> f d c16 bf, | 
            <d, d>8[ <bf,, bf,> <ef, ef> <bf,, bf,>] | <f, f>4 r8 <f, f> | <g, g>8[ <ef, ef> <f, f> f,] | <bf,, bf,> f d c16 bf, |
            <bf,, bf,>8 <af,, af,> <g,, g,>4 | <c, c>8[ g, ef, c,] | f,[ c, f, c,] | f,4 r8 g,16 a, |  
            bf,8 a,16 bf, g,8 a,16 bf, | c8 bf,16 c a,8 bf,16 c | d8[ ef f f,] | bf, f d c16 bf, |
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