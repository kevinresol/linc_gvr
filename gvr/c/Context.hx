package gvr.c;

@:include('linc_gvr.h')
@:native("gvr_context")
extern private class GvrContext {}
typedef Context = cpp.Pointer<GvrContext>;