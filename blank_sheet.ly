% blank_sheet.ly: blank lined staff paper template
% Copyright (C) 2015, Brian Clements

% This program is free software: you can redistribute it and/or modify it under
% the terms of the GNU General Public License as published by the Free Software
% Foundation, either version 3 of the License, or (at your option) any later
% version.

% This program is distributed in the hope that it will be useful, but WITHOUT
% ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
% FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
% details.

% You should have received a copy of the GNU General Public License along with
% this program.  If not, see <http://www.gnu.org/licenses/>.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                Blank Sheets                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "english.ly"
\version "2.16.2"

#(set-global-staff-size 24)

\header {
    footer = ""
    tagline = ""
    }

\paper {
	head-separation = 0\mm
	top-margin = 7\mm
	indent = 0\mm
	after-title-space = 1\mm
	%between-system-space = 18\mm
	between-system-padding = #1
	#(set-paper-size "letter" 'letter)
	}

emptymusic = {
    \repeat unfold 12 % Change this for more lines.
        { s1\break }
    }

\layout {
    indent = 0.0\cm
    pagenumber = no
    }

\new Score
    \with {
        \override TimeSignature #'transparent = ##t
        \override Clef #'transparent = ##t
        defaultBarType = #""
        \remove Bar_number_engraver
        \remove Clef_engraver
        }

    <<
    \context Staff
        \emptymusic
    >>
