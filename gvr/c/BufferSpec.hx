package gvr.c;

@:include('linc_gvr.h')
@:native('gvr_buffer_spec')
extern private class GvrBufferSpec {}
typedef BufferSpec = cpp.RawPointer<GvrBufferSpec>;
typedef BufferSpecRef = cpp.Reference<GvrBufferSpec>;
