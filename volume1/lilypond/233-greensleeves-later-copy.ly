\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Boldly."}
%  arranger = \markup {\caps "Tune of Green Sleeves. Later Copy"}
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 8 <a, d fs>8 | <b, d g>4 g8 g8. a16 b8 | a8. fs16 d8 d8. e16 <c fs>8 | <b, g>4 e8 e8. fs16 g8 | \mBreak
            fs8. ds16 b,8 b,4 <a, d! fs>8 | <b, d g>4 g8 g8. a16 b8 | a8. fs16 d8 d8.( e16) <c fs>8 | a8. fs16 e8 <a, ds fs>4 ds8 | \partial 8*5 <g, e>4.~<g, e>4 \bar "||" | \mBreak
            \partial 8 b16 c' | <d b d'>4 d'8 d'8. c'16 b8 | a8. fs16 d8 d4 s8 | s4. g'8. fs'16 e'8 | s2. | \mBreak
            d'!8. e'16 d'8 d'8. c'16 b8 | a8. fs16 d8 d8.( e16) <c fs>8 g8. fs16 e8 <a, ds fs>4 ds8 | \partial 8*5 <g, e>4.~<g, e>4 \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. d4 s8 | <d fs>4 s8 s4. | s4. b,4 s8 |
            <b, ds>4 s8 s4. | s4. d4 s8 | <d fs>4 s8 s4. | <b, e>4 s8 s4. | s4. s4 |
            <e g>8 | s4. <d g>4 s8 | <d fs>4 s8 s4. | <g e'>4 e'8 as4 s8 | <b ds'>8 b b b4 <e g b>16 c' |
            <d! b>4 s8 <d g>4 s8 | <d fs>4 s8 s4. | <b, e>4 s8 s4. | s4. s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Pray8 | lend8 me your ear,8. if16 you’ve8 | a8. -- ny16 to8 spare,8. You16 that8 | love4 Commmon8 -- wealth8. as16 you8 |
        hate8. Com16 -- mon8 Prayer,4 That8 | can8 in a breath8. pray,16 dis8 -- semble4 and8 swear,4 Which8 | no4 -- body8 can4 de8 -- ny.4. 4 |
        I'm8 | first8 on the wrong8. side,16 and8 | then8. on16 the8 right,4 To-day8 | I’m4 a8 Jack,8. and16 to8 -- morrow4 a8 Mite,4 I16 for16 |
        ei8. -- ther16 will8 pray,8. but16 for8 | nei8. -- ther16 will8 fight,4 Which8 | no4 -- body8 can4 de8 -- ny.4. 4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            d8 | g,4. b, | d~d4 d8 | e4. g,4. |
            b,4.~b,4 d8 | g,4. b, | d~d4 a,8 | b,4. b, | e e,4 |
            e8 | g,4. b, | d~d4 d8 | c4. c | b,~b,4 e8 |
            g,4. b, | d~d4 a,8 | b,4. b, | d e,4 | \fine

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
