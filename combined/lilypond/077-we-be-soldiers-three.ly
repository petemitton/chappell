\version "2.24.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  %	meter = \markup {\italic ""}
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
            <g, b, e>4 r8 <b, ds fs>4 r8 |
            a4 g8 fs4 r8 |
            <g, e>8. fs16 g8 <b, ds fs>4 <b, ds b>8|
            g8. fs16 e8 fs4. |
            d'8. c'16 b8 a8. g16 a8 |
            b8. a16 g8 fs4 b8 |
            a8. b16 g8 fs8. e16 fs8 |
            g8 e4~e4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo			
            s2.|
            <b, e>4. <b, ds>4. |
            s2.|
            <b, e>4. <b, ds>4. |
            d!4. d4. |
            ds4 e8 ds4 e8 |
            e4 e8 c4 ds8 |
            s2.|
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        We4. be4. sol-4diers8 three,4. \markup {\italic Par}8. -- \markup {\italic dona}8. \markup {\italic moy,}4 \markup {\italic je}8 \markup {\italic vous}4 \markup {\italic an}8 \markup {\italic pree,}4.
        Lately4 come8 forth8. of16 the8 Low4 Country,4. With8 ne8. -- ver16 a8 pen8. -- ny16 of8 mo8 -- ney.2 8
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            e4 r8 b,4 r8 |
            e,4. b,4 r8 |
            e4. b,4. |
            e,4. b,4. |
            s2.|  
            g8. fs16 e8 b4 g8 |
            c'4 b8 a4 a8 |
            <e g>4. e,4. | \fine
          } % end voice three
          
          \new 	Voice {
            \voiceFour
            s2.|
            s2.|
            s2.|
            s2.|
          <g, b>8.  a16 g8 <d fs>4. |
            b,4.~b,4 r8 |
            r4. r4 b,8 |
            s2.|
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