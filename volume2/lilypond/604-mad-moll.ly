\version "2.24"
\language "english"

global = {
  \time 9/8
  \key a \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \repeat volta 2 { \partial 8 e8 | a8. b16 cs'8 a fs fs a( fs) fs | a8. b16 cs'8 a( fs) fs gs4 e8 | \mBreak
            a8. b16 cs'8 a fs fs a( fs) fs | \partial 1 gs8.[ a16 b8] b[ cs' b] gs4 | } \partial 8 e8 | \mBreak
            a8. b16 cs'8 <gs e'> cs' cs' <gs e'>( cs') cs' | a8.( b16) cs'8 <gs e'> cs' cs' <gs e'>4 <gs b>8 | \mBreak
            a8. b16 cs'8 <gs e'> cs' cs' <gs e'> cs' cs' | \partial 1 gs8.[ a16 b8] b([ cs') b] gs4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Come, | neigh -- bours, and lis -- ten a -- while, If | ev -- er you wish to smile, Or |
        hear a true  sto -- ry of old, At -- tend to what I now un -- fold
      }	% end lyrics verse one

      \new Lyrics \lyricsto "one" {	% verse one
        Of_a | lad _ whose fame did re -- sound Thro’ | ev -- e -- ry village and town, For |
        fun _ or fro -- lic or whim, None | ev -- er was e -- qual to him, | And_his |
        name it was Ar -- thur of Brad -- ley, | O rare Ar -- thur of Brad -- ley! |
        Won -- der -- ful Ar -- thur of Brad -- ley, Sweet | Ar -- thur of Brad -- ley, O. |
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | fs,4. fs fs | fs, fs e |
            fs,4 s8 fs4. fs | e, e e4 | r8 |
            fs,4. cs cs | fs, cs cs4 e,8 | 
            fs,4. cs cs | e, e e4 |
          } % end voice three

          \new 	Voice {
            %\voiceFour
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score