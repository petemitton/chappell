\version "2.22.2"
\language "english"

global = {
  \time 4/4
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
            %\voiceOne
            <a f>4 a8 bf <c c'>4 f | <bf, e g>4. f8 <a, f>2 | <f f'>4 d' a <f b!> | <e c'>2. <g d'>8 e' | \mBreak
            \stemUp <e e'>4 c' d' c' | bf a g a8_( bf) | <e c'>4 <f a> <e g>4. f8 | f2. f4 | \mBreak
            \oneVoice
            <g, e>4 c <g, d> e | <c f> g8._( f16) f4 <f c'> | <f b!> <e c'> <f b d'>4. c'8 | <e c'>1 | \mBreak 
            <c g c'>4 c'8 bf! <c a>4 g8_( f) | <e g>8_( f) e_( d) c4 <c a>8 bf | <f c'>4 <f a> <e g>4. f8 | f1 | <e c'>4 r4 <f c'>4 r | \mBreak
            <g c'>4 b!8 a <e g>4 g | <b,! g> r <c g> r | <d g> f8 e <b,! d>4 d | <c e> c f8_( g) a_( b!) | \mBreak 
            <e c'>2 <f f'>4 <f c'> | <f d'>4 a8^( bf)  <f c'>4 <d f> | <c e>8 f g4 c \stemUp c'4^~ | 4 <f a> <e g>4. f8 | f1 | \fine 
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*4 | 
            s2 f | f e | s1*2 |
            s1*13 |
            s1*2 | s2 s4 <e g> | f4 s2. | s1 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        There4 was8 a maid4 this | o4. -- ther8 day,2 | Sigh4 -- ed sore, God | wot,2. And8 she |
        said4 that wives might | sport and play, But | maid -- ens they4. might8 | not.2. Full4 |
        fif4 -- teen years have | pass’d,4 she said, Since | I, poor soul4. was8 | born,1 | 
        And4 if8 I chance4 to die a maid, A -- pol -- lo is4. for8 -- sworn,1 | Oh!4 4 Oh!4 4 |
        Oh4 for8 a hus4 -- band! | Oh!4 4 Oh!4 4 | Oh! for8 a hus4 -- band! | Still this was her | 
        song,2 I4 will | have a hus -- band, | have8 a hus4 -- band, Be | ". ." he old4. or8 | young.1 | 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            f,2 a, | c f4 e | d2. g4 | c g c' bf! | 
            a2 bf4 a | g2 c' | a4 f <c bf>2 | <f a> f, | 
            c2 bf, | a,2. a4 | d'4 c' g2 | c'4 g e c |
            e2 f | c2. f8 g | a4 f <c bf>2 | <f a> f, | c4 r d r |
            e4 r c r | g4 r a r | b! r g r | c2 d8 e f g | 
            a4^( b!8 c' d'4) a, | b,! f,8 g, a,4 b, | c2 r4 c'8 bf | a4 f <c bf>2 | <f a> f, | \fine 
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