## Copyright (C) 2012 Michael Goffioul
##
## This file is part of Octave.
##
## Octave is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or (at
## your option) any later version.
##
## Octave is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Octave; see the file COPYING.  If not, see
## <http://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn  {Function File} {@var{h} =} gco ()
## @deftypefnx {Function File} {@var{h} =} gco (@var{fig})
## Return a handle to the current object of the current figure, or a handle
## to the current object of the figure with handle @var{fig}.  The current
## object of a figure is the object that was last clicked on.  It is stored
## in the CurrentObject property of the target figure.
##
## If the last mouse click didn't occur on any child object of the figure,
## the current object is the figure itself.
##
## If no mouse click occured in the target figure, this function returns and
## empty matrix.
##
## Note that the value returned by this function is not necessarily the same
## as the one returned by gcbo during callback execution.  An executing
## callback can be interrupted by another callback and the current object
## can be modified.
##
##@seealso{gcbo, gcf}
##@end deftypefn

function h = gco ()

  h = get (gcf (), "currentobject");

endfunction
