\version "2.22.2"
\language "english"

global = {
  \time 6/8
  \key f \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
   #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
   #})
hyphen = { \once \override LyricHyphen.minimum-distance = #1.0 }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic ""}
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
            \partial 8 a8 | d'4 8 cs'4 8 | d'4. f'4. | e'4 d'8 d'8.( e'16) d'8 | c'4. 4 a16 bf | \mBreak
            c'8. d'16 c'8 bf a4 | <d g>4. <cs e a> | g4 f8 f8.( g16) e8 | \partial 8*5 <a, f>4. <a, c f>4 \bar "||" | \partial 8 <a, c>8 | \mBreak
            <g, c>4 d8 <g c e>4 f8 | <bf d g>4. <d g>4 g8 | a4 g8 f8._( g16) a_( bf) | c'!4 8 8._( d'16) c'8 | \mBreak
            bf8 a4 g f8 | <cs e>4. <f f'> | e'4 a8 d'8._( e'16) cs'8 | \partial 8*5 <f d'>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            f8 | <f a>4. <e a> | a <f a> | <f bf>4. 4. | <f a>4. 4 s8 |
            f4. 4 s8 | s2. | \stemUp <a, d>4. a,4 s8 | s2. | 
            s2.*2 | <a, cs>4. \stemDown d4. | <e g>4. g |
            f4 s8 e4 e8 | s2. | g4. f4 e8 | s8*5 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        So,8 | so,4 the8 deed4 is8 | done,4. The | Roy4 -- al8 head4 is8 | se4. -- ver’d,4 As16 I |
        meant8. when16 I8 first8 be4 -- gun,4. And | strong4 -- ly8 have4 en8 -- dea4. -- vour’d.4 | Now8 |
        Charles4 the8 First4 is8 | tumbled4. down,4 The8 | Se4 -- cond8 I4 don’t8 | fear,4 I8 grasp4 the8 |
        scep8 -- tre,4 wear thne8 | crown,4. Nor | for4 Je8 -- ho4 -- vah8 | 4 care.4 8 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            d8 | 4. a4 g8 | f4. d | bf bf, | f f, |
            <a, f>4. <d f> | bf, a, | d c4 8 | f,4. f4 | f8 |
            e4. c | g, bf, | a, d | c! <e c'> |
            <f c'>4. <c bf>4 <d a>8 | <a, a>4. <d a d'> | <a cs'> <a d'>4 a8 | <d a>4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
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
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score