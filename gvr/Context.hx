package gvr;

@:native("gvr_context")
@:include('linc_gvr.h')
extern private class GvrContext {}
typedef Context = cpp.Pointer<GvrContext>;