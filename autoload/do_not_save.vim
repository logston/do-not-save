function do_not_save#CheckFilename(fn)
	if stridx(a:fn, "'") >= 0
		throw 'Forbidden file name'
	endif
endfunction
