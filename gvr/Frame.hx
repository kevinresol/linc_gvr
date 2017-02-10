package gvr;

import gvr.types.*;

@:include('linc_gvr.h')
@:native('gvr::Frame') // TODO: unique_ptr should be a haxe class on its own
extern class Frame {
	@:native('BindBuffer')
	function bindBuffer(index:Int):Void;
	
	@:native('Unbind')
	function unbind():Void;
	
	@:native('Submit')
	function submit(bufferViewportList:BufferViewportList, headView:Mat4f):Void; // TODO: need to wrap with cpp.Reference?
} //Frame
