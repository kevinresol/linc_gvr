package gvr;

import gvr.types.*;

@:include('linc_gvr.h')
@:native('gvr::BufferSpec') // TODO: unique_ptr should be a haxe class on its own
extern class BufferSpec {
	@:native('GetSize')
	function getSize():Sizei;
} //BufferSpec
