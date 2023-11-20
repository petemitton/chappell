\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key f \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = {  }

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
            \partial 8 <c g c'>8 | a8. g16 f8 f8. g16 f8 | <c f a>4 bf8 <f c'>4 <d a d'>8 | bf8. a16 g8 g8. a16 g8 | \mBreak
            <d bf>4 c'8 <g d'>4 <g c'>8 | c'8. d'16 c'8 c'8.( d'16) c'8 | c'8. d'16 e'8 s4 a8 | bf8.( c'16) bf8 bf8. a16 g8 | <c a>8 a bf\noBeam <f c'>4 <f c'>8 | \mBreak
            f8.( g16) f8 <e a>4 <e a>8 | g8.( a16) g8 <e bf>4 <e bf>8 | <f a>( c') f <f bf>4 <e a>8 | \partial 8*5 g[ f <c e>] <a, f>4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | <c f>4 s2 | s2. | <d g>4 s2 |
            s2. | a4 s8 f4 s8 | bf4. <a f'>4 s8 | f4. c | s2. |
            s2. | d4 s2 | s2. | d4 s4. |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        There8 | was8. an16 old8 fel8. -- low16 at8 | Wal4 -- tham8 Cross,4 Who8 | mer8. -- ri16 -- ly8 sung8. when16 he8 |
        liv’d8 by the loss,4 He8 | ne8. -- ver16 was8 heard4 to8 |sigh8. with16 hey8 -- ho!4 But8 | sent4 it8 out8. with16 a8 | heigh8 trolly4 -- lo!4 He8 |
        cheer8 -- ’d8 up16 his heart4 when16 his16 | goods8. went16 to8 wrack,4 With16 a16 | hem,4 boys,8 hem,4 And16 a16 | cup8 of old sack.4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            e8 | f2. | f4. a4 f8 | g2. |
            g4. bf4 e8 | f4. a4. | g f | d e | f a |
            d'4. c' | bf g | f4 e8 d4 c8 | bf,4 c8 f4 | \fine   
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
