\version "2.22.0"
\language "english"

global = {
  \time 2/4
  \key d \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Slow."}
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
            <f, d>8 e8 f8 g8 | a8.[ g16 a8 <f d'>8] | s2 | s2 | d8[ e8 f8 g8] | \mBreak
            <e a>8.[^( <d g>16) <cs a>8 <d d'>8] | <g cs'>8 <f d'>8 d'8 cs'8 | d'4 d'4^> | s2 | <e bf>4 <f a>8 <f bf>8 | \mBreak
            <f c'>8 <f d'>8 c'8 g8 | <f a>4. a8 | c'8 b!16_( c'16) d'8 c'8 | <f a>4 a8 g16_( f16) | <cs e>8.[ d16 <cs e>8 <a cs>8] | <a, d>2 \fine | \mBreak

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 d4 | d4. s8 | <g cs'>8[ <a d'>8 <bf d'>8 <e cs'>8] | <f d'>4 d'4^> | s4 d4 |
            s2 | s4 e4 | f4 d'8. c'16 | <bf e'>8.[_\sf <a d'>16 <g c'>8 <f bf>8] | s2 |
            s4 e4 | s2 | f2 | s4 d4 | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Walking4 in8 a8 | meadow4 green,8 For8 recre4 -- a8 -- tion’s8 | sake,4 To4 | drive8 a8 -- way8 some8 |
        sad8. thoughts8. That8 sorrow8 -- ful8 did8 me8 | make,4 I4 | spied8. two16 love8 -- ly8 | lo4 -- vers,8 Did8 |
        hear8 each8 o8 -- ther’s8 | woe,4. To8 | ’point8 a8 place8 of8 meet4 -- ing8 Up8 -- |on8. the16 16 meadow8 16 | brow.2 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            d,4 d8 e8 | f8.[ e16 f8 bf8] | e8[ f8 g8 a8] | d4 d'_> | f4 d4 |
            c8.[ bf,16 a,8 f8] | e8 d8 a4 | d \clef treble bf'8. a'16 |  g'8[ f'8 e'8 d'8] \clef bass | c'4^( f8) g8 |
            a8 bf8 c'4 | f2 | a4 bf8 a8 | d'8. c'16 bf8. a16 | <g a>8. <f a>16 <a, g>4 | <d f>2 | \fine
          } % end voice three

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