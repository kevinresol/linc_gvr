package gvr;

@:include('linc_gvr.h')
@:native('std::unique_ptr<gvr::SwapChain>') // TODO: unique_ptr should be a haxe class on its own
extern class SwapChain {
	@:native('AcquireFrame')
	function acquireFrame():Frame;
} //SwapChain
