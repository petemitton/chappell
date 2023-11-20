\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \minor
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
            a8 a8 a8 <fs a>4 <g d'>8 | c'8._( d'16) bf8 <fs a>4. | g8.^( a16) <d g bf>8 <c fs a>4 <bf, g>8 | g8.^( a16) <d g bf>8 <c fs a>4 <bf, g>8 | \mBreak
            a8 a8 a8 a4 <d g d'>8 | c'8._( d'16) <d g bf>8 <d fs a>4. | d'8._( c'16) <ef g bf>8  <ef g a>4 <d g bf>8 | <c g c'>8 <c fs a>4 <bf, g>4. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            fs4. s4. | fs4 g8 s4. | d4 s2 | d4 s2 |
            <ef g>4. <d fs>4 s8 | <d fs>4 s8 s4. | <d fs>4 s8 s4. | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Lie8 near8 my8 dear!4 why8 | dost4 thou8 rise?4 The8 | light4 that8 shines,4  comes8 | from4 thine8 eyes,4. |
        ’Tis 8 not8 the8 day4 breaks,8 | but4 my8 heart,4  To8 | think4 that8 thou4 and8 | I8 must4 part.4. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
          } % end voice three

          \new 	Voice {
            \voiceFour
            d'4. <c' d'>4 <bf d'>8  | <a d'>4 <g d'>8 <d d'>4. | bf4 g8 d4 ef8 | \sup bf,4 g,8 d,4 g,8 |
            \sdown c'4. c'4 bf8 | a4 g8 d4. | \sup bf,4 \sdown ef8  \sup c4  bf,8 | a,8 d4 g,4. | \fine
          }	% end voice four

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