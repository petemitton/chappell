\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key e \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

 % meter = \markup {\italic "Lively"}
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
            \partial 4 b4 | <b, e gs>4. fs8 e4 e4 | <cs e>2 e2 | fs4 gs4 a4 b4 | cs'4 cs'2 s4 | \mBreak
            s1 | s2 e4 e4 | fs4 gs4 a4 gs4 | fs4 fs2 b4 | \mBreak
            <b, ds gs>4. <a, fs>8 <gs, e>4 e4 | <b, e>2 <a, cs e>4 e4 | fs4 gs4 a4 b4 | <e gs cs'>2. <fs b ds'>4 | \mBreak
            e'4 ds'4 <e a cs'>4 <e b>4 | cs'8( ds'8) s4 e4 e4 | fs4 gs4 <fs a>4 <e gs>4 | \partial 2. <ds fs>2. \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*2 | cs1 | <fs a>2. <fs a ds'>4 |
            <e b e'>4 ds'4 cs'4 b4 | <e a cs'>8^( ds'8) e'4 s2 | <a, cs>1 | <b, ds>2. s4 |
            s1*2 | <a, cs>2 <cs fs>2 | s1 |
            <e b>2 s2 | a4 <gs b e'>4 s2 | cs2 s2 | s2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Oh!4 | Lon4. -- don8 is4 a4 | fine2 town,2 | And4 a4 gal4 -- lant4 | ci4 -- ty;2 ’Tis4 |
        gov4 -- ern’d4 by4 the4 | scar4 -- let4 gown,4 Come4 | list4 -- ten4 to4 my4 | dit4 -- ty.2 This4 |
        ci4. -- ty8 has4 a4 | May2 -- or,4 This4 | May4 -- or4 is4 a4 | Lord,2. He4 |
        go4 -- ver4 -- neth4 the4 | cit4 -- i4 -- zens4 All4 | by4 his4 own4 ac4 -- cord.2. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r4 | e1 | cs1 | a,1 | fs,2. fs,4 |
            gs,1 | a,1 | fs,1 | b,2. r4 |
            b,2 cs2 | gs,2 a,2 | fs,2 fs | cs2. b,8 a,8 |
            gs,2 a,4 gs,4 | fs,4 e,4 cs2 | a,2 fs,2 | b,2. | \fine

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
