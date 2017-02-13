package gvr.c;

@:include('linc_gvr.h')
@:native('gvr_buffer_spec')
extern private class GvrBufferSpec {}
typedef BufferSpec = cpp.Pointer<GvrBufferSpec>;
typedef BufferSpecRef = cpp.Reference<GvrBufferSpec>;
