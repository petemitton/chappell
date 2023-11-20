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

%  meter = \markup {\italic "Smoothly and in moderate time."}
%                                	arranger = \markup {\caps "Tune of Green Sleeves.   Oldest Copy."}
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 8 <b, e>8 | <e g>4 a8 b8. c'16 b8 | <d a>4 fs8 d8.( e16) <d fs>8 | <b, g>4 e8 e8.( ds16) e8 | \mBreak
            <ds fs>4 ds8 b,4 <b, e>8 | <e g>4 a8 b8.( c'16) b8 | <d a>4 fs8 d8.( e16) <d fs>8 | g8.( fs16) e8 ds8.( cs16) ds8 | \partial 8*5 <g, e>4. <g, b, e>4 \bar "||" | \mBreak
            \partial 8 r8 | <d d'>4.\sf d'8.( <a cs'>16) <g b>8 | <fs a>4 fs8 d8.( e16 fs8) | <b, g>4( e8) e8.( ds16) e8 | <ds fs>4 ds8 b,4. | \mBreak
            <d! d'!>4.\sf d'8. <a cs'>16 <g b>8 | <fs a>4 fs8 d8.( e16) <d fs>8 | g8. fs16 e8 ds8.( cs16) ds8 | \partial 8*5 <g, e>4. <g, b, e> 4 \fine | \mBreak

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. d4 s8 | s2.*2 |
            s2. | s4. d4 s8 | s2. | b,4 s8 b,4 s8 | s2 s8 |
            s8 | s4. <d b>4 s8 | s2.*3 |
            s4. <d b>4 s8 | s2. | b,4 s8 b,4 s8 | s8*5 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        A8 -- las!4 my8 love,4 you8 | do4 me8 wrong,4 To8 | cast4 me8 off4 dis16 -16 |
        -court4 -- eous8 -- ly,4 And8 | I4 have8 lov4 -- ed8 | you4 so8 long,4 De8 -- light4 -- ing8 in4 your8 | com4. -- pany.4 |
        8 Green4. -- sleeves4 was8 | all4 my8 joy,8. ".  .  ."8. | Green4. -- sleeves4 was8 | my4 de8 -- light,4. |
        Green4. -- sleaves8. was16 my8 | heart4 of8 gold,4 And8 | who8. but16 my8 La4 -- dy8 | Green4. -- sleeves.4 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {

          } % end voice three
          \new Voice { % voice four
            \voiceFour
            <e g>8 | <c g>4. <g, g> | <d fs>~<d fs>4 <d a>8 | <e g>4. <c g> |
            <b, b>4.( b,4) <e g>8 | <c g>4. <g, g> | <d fs>4.~<d fs>4 <d a>8 | <e g>4. <b, fs> | <e, e>4. <e, e>4 |
            r8 | <b, fs>4. <g, g> | <d a>4.~<d a>4 <d a>8 | <e g>4. <c g> | <b, b>( b,) |
            <b, fs>4. <g, g> | <d a>~<d a>4 <d a>8 | <e g>4. <b, fs> | <e, e>4. <e, e>4 | \fine

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
