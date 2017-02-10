package gvr;

import gvr.types.*;

@:keep
@:include('linc_gvr.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('gvr'))
#end
@:native('std::unique_ptr<gvr::GvrApi>') // TODO: unique_ptr should be a haxe class on its own
extern class GvrApi {

	@:native('gvr::GvrApi::WrapNonOwned')
	static function wrapNonOwned(context:Context):GvrApi;

	
	@:native('InitializeGl')
	function initializeGl():Void;
	
	@:native('CreateBufferViewport')
	function createBufferViewport():BufferViewport;
	
	@:native('CreateEmptyBufferViewportList')
	function createEmptyBufferViewportList():BufferViewportList;
	
	@:native('GetTimePointNow')
	function getTimePointNow():ClockTimePoint;
	
	inline function createSwapChain(specs:Array<BufferSpec>):BufferViewport {
		return untyped __cpp__('linc::gvr::support::create_swap_chain({0}, {1})', this, specs);
	}

} //GvrApi
