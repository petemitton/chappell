\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key a \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic ""}
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
            \partial 8 e8 | e4 e8 c'8.( b16) c'8 | d'8.( c'16) d'8 s4. | e4 e8 c'8.( b16) a8 | <d gs>4.^\>( <c a>4)\! r8 | \mBreak
            e4 e8 c'8.( b16) c'8 | d'8.( c'16) d'8 s4. | e4 e8 c'8.( b16) a8 | <d gs>4.^\>( <c a>4)\! r8 \bar "||" | \mBreak
            <f a c'>4^\cresc <f a c'>8 d'8.( <a c'>16) <f b d'>8 | e'8.( f'16) <g c' e'>8 s4 g8 | <g c'>4 <e g c'>8 d'8.( c'16) <f d'>8 | <g e'>4.( <g d'>4) r8 | \mBreak
            e'8.^\f( f'16) e'8  d'8.( c'16) b8 | c'8.( b16) a8 s4. | e4\pp e8 c'8. b16 a8 | gs4.^\>( a4\!) r8 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. e4 s8 | a4 s8 <gs e'>4. | s4. e4 s8 | s2. |
            s4. e4 s8 | a4 s8 <gs e'>4. | s4. e4 s8 | s2. |
            s4. <f b>4 s8 | <e c'>4 s8 <g b d'>4 s8 | s4. a4 s8 | s2. |
            g4 s8 <e gs>4 s8 | <e a>4 s8 <gs b e'>4. | s4. e4 s8 | d4.( c4) s8 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        As8 | I4 was8 walk4 -- ing8 | all4 alone,8 I4. | heard4 a8 youth4 la8 -- ment4. -- ing,4 8 |
        Under4 a8 hol4 -- low8 | bush4 he8 lay,4 But8 | sore4 he8 did4 re8 -- pent4. him.4 A-8 |
        -las!4 quoth8 he,4 my8 | love4 is8 gone,4 Which8 | caus4 -- eth8 me4 to8 | wan4. -- der,4 8 |
        Yet8. mer16 -- ry8 will4 I8 | ne4 -- ver8 be,4. | Till8 I lie lull8. -- ing16 be8 -- yound4. her.4 8 |
      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | r4. a, | f e | r a,4 c8 | e4.( a4) r8 |
            r4. a, | f e | r a,4 c8 | e4.( a4) r8 |
            f4 e8 d4 g,8 | c4 e8 g4 <f b>8 | <e c'>4 <c c'>8 <f c'>4 <d c'>8 | <g c'>4. <g b>4 r8 |
            <c g c'>4 r8 <b, e b>4 r8 | <a, e a>4 <f, f>8 <e, e>4. | r a, | e( a4) r8 | \fine

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
