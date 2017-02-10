package gvr.c;

@:include('linc_gvr.h')
@:native('gvr_swap_chain')
extern private class GvrSwapChain {}
typedef SwapChain = cpp.Pointer<GvrSwapChain>;