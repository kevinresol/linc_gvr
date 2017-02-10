package gvr.c;

@:include('linc_gvr.h')
@:native('gvr_frame')
extern private class GvrFrame {}
typedef Frame = cpp.Pointer<GvrFrame>;